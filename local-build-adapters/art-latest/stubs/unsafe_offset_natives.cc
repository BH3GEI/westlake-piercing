/*
 * unsafe_offset_natives.cc — westlake OHOS relink.
 *
 * WHY THIS FILE EXISTS
 * --------------------
 * The westlake patch in patches/runtime/runtime.cc hand-patches a handful of
 * sun.misc.Unsafe / jdk.internal.misc.Unsafe methods so their ArtMethod entry
 * points go straight to ART-side natives instead of crossing stale libcore
 * bootstrap bytecode (see "PATCH: Android 11 libcore exposes sun.misc.Unsafe
 * array-offset wrappers" and the RunRootClinits patches). It declares them as
 *
 *     extern jint  art::Unsafe_arrayBaseOffset(JNIEnv*, jobject, jclass);
 *     extern jint  art::Unsafe_arrayIndexScale(JNIEnv*, jobject, jclass);
 *     extern jlong art::Unsafe_objectFieldOffset(JNIEnv*, jobject, jobject);
 *     extern jlong art::Unsafe_objectFieldOffsetClassString(JNIEnv*, jobject, jclass, jstring);
 *     extern jlong art::Unsafe_jdkObjectFieldOffset(JNIEnv*, jobject, jobject);
 *     extern jlong art::Unsafe_jdkStaticFieldOffset(JNIEnv*, jobject, jobject);
 *     extern jobject art::Unsafe_jdkStaticFieldBase(JNIEnv*, jobject, jobject);
 *
 * i.e. *external linkage* symbols in namespace art. Upstream ART removed these
 * entry points from runtime/native/sun_misc_Unsafe.cc long ago (android-15
 * r9 keeps only the file-static Unsafe_getArrayBaseOffsetForComponentType /
 * Unsafe_getArrayIndexScaleForComponentType pair, and libcore computes the
 * Field-based offsets in Java). Nothing in the r9 tree therefore defines the
 * symbols above, and libwestlake_art.so was left with 7 undefined art::*
 * relocations that made an RTLD_NOW dlopen fail.
 *
 * These are REAL implementations, not returning-0 placeholders: they are on
 * the java.lang.invoke / VarHandle / AtomicXxxFieldUpdater paths, where a bogus
 * offset corrupts arbitrary heap memory rather than failing loudly.
 *
 * All seven are patched in with kAccFastNative, so they must use
 * ScopedFastNativeObjectAccess (the caller has NOT transitioned to kNative).
 */

#include <jni.h>

#include "art_field-inl.h"
#include "common_throws.h"
#include "mirror/array.h"
#include "mirror/class-inl.h"
#include "mirror/field.h"
#include "mirror/object-inl.h"
#include "mirror/string-inl.h"
#include "obj_ptr.h"
// Lives in runtime/native/, which is only on the include path via
// -isystem <art>/runtime — hence the "native/" prefix (tree sources in
// runtime/native/ pick it up relative to their own directory instead).
#include "native/scoped_fast_native_object_access-inl.h"

namespace art {

namespace {

// java.lang.reflect.Field (or jdk.internal.reflect equivalent) -> ArtField*.
// Returns nullptr (with no pending exception) when the argument is null or
// cannot be decoded; callers raise the NPE so the message names the method.
ArtField* WestlakeDecodeArtField(const ScopedFastNativeObjectAccess& soa, jobject java_field)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  if (java_field == nullptr) {
    return nullptr;
  }
  ObjPtr<mirror::Field> field = soa.Decode<mirror::Field>(java_field);
  if (field == nullptr) {
    return nullptr;
  }
  return field->GetArtField();
}

// Component type of the class handed to arrayBaseOffset/arrayIndexScale.
//
// libcore's sun.misc.Unsafe.arrayBaseOffset(Class) / arrayIndexScale(Class)
// take the ARRAY class (int[].class) and delegate to
// jdk.internal.misc.Unsafe, which calls
// getArrayBaseOffsetForComponentType(arrayClass.getComponentType()).
// We do the getComponentType() step here. If a caller hands us a non-array
// class we treat it as the component type itself, which is what the
// ...ForComponentType natives expect — tolerant, and it keeps the answer
// correct for both calling conventions instead of returning a header offset
// for an element size we never looked at.
ObjPtr<mirror::Class> WestlakeComponentType(ObjPtr<mirror::Class> klass)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  if (klass != nullptr && klass->IsArrayClass()) {
    return klass->GetComponentType();
  }
  return klass;
}

}  // namespace

// ---------------------------------------------------------------------------
// sun.misc.Unsafe.arrayBaseOffset(Class)  ->  (Ljava/lang/Class;)I
// ---------------------------------------------------------------------------
jint Unsafe_arrayBaseOffset(JNIEnv* env, jobject, jclass java_array_class) {
  ScopedFastNativeObjectAccess soa(env);
  ObjPtr<mirror::Class> array_class = soa.Decode<mirror::Class>(java_array_class);
  ObjPtr<mirror::Class> component = WestlakeComponentType(array_class);
  if (component == nullptr) {
    ThrowNullPointerException("Unsafe.arrayBaseOffset: null class");
    return 0;
  }
  Primitive::Type primitive_type = component->GetPrimitiveType();
  return mirror::Array::DataOffset(Primitive::ComponentSize(primitive_type)).Int32Value();
}

// ---------------------------------------------------------------------------
// sun.misc.Unsafe.arrayIndexScale(Class)  ->  (Ljava/lang/Class;)I
// ---------------------------------------------------------------------------
jint Unsafe_arrayIndexScale(JNIEnv* env, jobject, jclass java_array_class) {
  ScopedFastNativeObjectAccess soa(env);
  ObjPtr<mirror::Class> array_class = soa.Decode<mirror::Class>(java_array_class);
  ObjPtr<mirror::Class> component = WestlakeComponentType(array_class);
  if (component == nullptr) {
    ThrowNullPointerException("Unsafe.arrayIndexScale: null class");
    return 0;
  }
  Primitive::Type primitive_type = component->GetPrimitiveType();
  return static_cast<jint>(Primitive::ComponentSize(primitive_type));
}

// ---------------------------------------------------------------------------
// sun.misc.Unsafe.objectFieldOffset(Field)  ->  (Ljava/lang/reflect/Field;)J
// ---------------------------------------------------------------------------
jlong Unsafe_objectFieldOffset(JNIEnv* env, jobject, jobject java_field) {
  ScopedFastNativeObjectAccess soa(env);
  ArtField* field = WestlakeDecodeArtField(soa, java_field);
  if (field == nullptr) {
    ThrowNullPointerException("Unsafe.objectFieldOffset: null field");
    return 0;
  }
  if (field->IsStatic()) {
    // Matches libcore: an instance-offset query on a static field is a
    // programming error, and the returned value would not be a valid base
    // for Unsafe.get/put on an object reference.
    ThrowIllegalArgumentException("Unsafe.objectFieldOffset: field is static");
    return 0;
  }
  return static_cast<jlong>(field->GetOffset().Int32Value());
}

// ---------------------------------------------------------------------------
// jdk.internal.misc.Unsafe.objectFieldOffset(Class, String)
//   ->  (Ljava/lang/Class;Ljava/lang/String;)J
//
// Walks the declared instance fields of the class and then of each superclass,
// matching by name (the JDK contract: the field need not be declared by `c`
// itself). Mirrors HotSpot's objectFieldOffset1.
// ---------------------------------------------------------------------------
jlong Unsafe_objectFieldOffsetClassString(JNIEnv* env,
                                          jobject,
                                          jclass java_class,
                                          jstring java_name) {
  ScopedFastNativeObjectAccess soa(env);
  ObjPtr<mirror::Class> klass = soa.Decode<mirror::Class>(java_class);
  ObjPtr<mirror::String> name = soa.Decode<mirror::String>(java_name);
  if (klass == nullptr || name == nullptr) {
    ThrowNullPointerException("Unsafe.objectFieldOffset(Class, String): null argument");
    return 0;
  }
  const std::string field_name = name->ToModifiedUtf8();
  for (ObjPtr<mirror::Class> k = klass; k != nullptr; k = k->GetSuperClass()) {
    for (ArtField& field : k->GetIFields()) {
      if (field.GetNameView() == field_name) {
        return static_cast<jlong>(field.GetOffset().Int32Value());
      }
    }
  }
  ThrowIllegalArgumentException(
      ("Unsafe.objectFieldOffset(Class, String): no instance field " + field_name).c_str());
  return 0;
}

// ---------------------------------------------------------------------------
// jdk.internal.misc.Unsafe.objectFieldOffset(Field)
//   ->  (Ljava/lang/reflect/Field;)J
// Same contract as the sun.misc entry point above; kept as a separate symbol
// because runtime.cc patches the two Unsafe classes independently.
// ---------------------------------------------------------------------------
jlong Unsafe_jdkObjectFieldOffset(JNIEnv* env, jobject, jobject java_field) {
  ScopedFastNativeObjectAccess soa(env);
  ArtField* field = WestlakeDecodeArtField(soa, java_field);
  if (field == nullptr) {
    ThrowNullPointerException("Unsafe.objectFieldOffset: null field");
    return 0;
  }
  if (field->IsStatic()) {
    ThrowIllegalArgumentException("Unsafe.objectFieldOffset: field is static");
    return 0;
  }
  return static_cast<jlong>(field->GetOffset().Int32Value());
}

// ---------------------------------------------------------------------------
// jdk.internal.misc.Unsafe.staticFieldOffset(Field)
//   ->  (Ljava/lang/reflect/Field;)J
//
// The offset is relative to the object returned by staticFieldBase(), which in
// ART is the declaring mirror::Class — ArtField::GetOffset() is already
// expressed that way for static fields, so no adjustment is needed.
// ---------------------------------------------------------------------------
jlong Unsafe_jdkStaticFieldOffset(JNIEnv* env, jobject, jobject java_field) {
  ScopedFastNativeObjectAccess soa(env);
  ArtField* field = WestlakeDecodeArtField(soa, java_field);
  if (field == nullptr) {
    ThrowNullPointerException("Unsafe.staticFieldOffset: null field");
    return 0;
  }
  if (!field->IsStatic()) {
    ThrowIllegalArgumentException("Unsafe.staticFieldOffset: field is not static");
    return 0;
  }
  return static_cast<jlong>(field->GetOffset().Int32Value());
}

// ---------------------------------------------------------------------------
// jdk.internal.misc.Unsafe.staticFieldBase(Field)
//   ->  (Ljava/lang/reflect/Field;)Ljava/lang/Object;
//
// ART stores static field values inside the declaring mirror::Class object, so
// the base is that Class. Pairs with Unsafe_jdkStaticFieldOffset above.
// ---------------------------------------------------------------------------
jobject Unsafe_jdkStaticFieldBase(JNIEnv* env, jobject, jobject java_field) {
  ScopedFastNativeObjectAccess soa(env);
  ArtField* field = WestlakeDecodeArtField(soa, java_field);
  if (field == nullptr) {
    ThrowNullPointerException("Unsafe.staticFieldBase: null field");
    return nullptr;
  }
  if (!field->IsStatic()) {
    ThrowIllegalArgumentException("Unsafe.staticFieldBase: field is not static");
    return nullptr;
  }
  return soa.AddLocalReference<jobject>(field->GetDeclaringClass());
}

}  // namespace art
