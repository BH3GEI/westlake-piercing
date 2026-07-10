INT="/Users/yao/westlake-local-build/art-latest/patches/runtime/interpreter"

# 1) [CLONE-BODY] in Execute() (interpreter.cc) — the chokepoint all 4 wrappers funnel into
FI=INT+"/interpreter.cc"
t=open(FI).read()
anchor='  ArtMethod* pfc_execute_method = shadow_frame.GetMethod();\n  UNUSED(pfc_execute_method);'
probe='''  ArtMethod* pfc_execute_method = shadow_frame.GetMethod();
  UNUSED(pfc_execute_method);
  // [DAYU600-CLONE-BODY] Execute() = the chokepoint all 4 interpreter wrappers funnel into.
  if (pfc_execute_method != nullptr && pfc_execute_method->GetName() != nullptr &&
      strcmp(pfc_execute_method->GetName(), "clone") == 0 &&
      pfc_execute_method->GetDeclaringClass() != nullptr &&
      pfc_execute_method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/Object;")) {
    static int dcb = 0;
    if (dcb < 8) { dcb++;
      size_t recv_reg = accessor.RegistersSize() - accessor.InsSize();
      ObjPtr<mirror::Object> recv = shadow_frame.GetVRegReference(recv_reg);
      fprintf(stderr, "[CLONE-BODY] recv=%p type=%s isClass=%d\\n",
              reinterpret_cast<void*>(recv.Ptr()),
              recv != nullptr ? recv->PrettyTypeOf().c_str() : "null",
              (recv != nullptr && recv->IsClass()) ? 1 : 0);
      for (ShadowFrame* f = shadow_frame.GetLink(); f != nullptr; f = f->GetLink()) {
        ArtMethod* fm = f->GetMethod();
        fprintf(stderr, "   caller-chain: %s @dex%u\\n",
                fm != nullptr ? fm->PrettyMethod().c_str() : "?", f->GetDexPC());
      }
      fflush(stderr);
    }
  }'''
if "[CLONE-BODY]" in t: print("CB_ALREADY")
elif anchor in t: open(FI,"w").write(t.replace(anchor,probe,1)); print("CLONE_BODY_ADDED")
else: print("CB_ANCHOR_NOT_FOUND")

# 2) [GSC2] before result->SetL(caller_class) (interpreter_common.cc) — the root-cause leak point
FC=INT+"/interpreter_common.cc"
c=open(FC).read()
ga='      result->SetL(caller_class);\n      return true;\n    }'
gn='''      {
        static int dg2 = 0;
        if (dg2 < 12) { dg2++;
          fprintf(stderr, "[GSC2] getStackClass2 -> %p (%s) caller=%s\\n",
                  reinterpret_cast<void*>(caller_class.Ptr()),
                  caller_class != nullptr ? caller_class->PrettyDescriptor().c_str() : "null",
                  caller_method != nullptr ? caller_method->PrettyMethod().c_str() : "?");
          fflush(stderr);
        }
      }
      result->SetL(caller_class);
      return true;
    }'''
if "[GSC2]" in c: print("GSC2_ALREADY")
elif ga in c: open(FC,"w").write(c.replace(ga,gn,1)); print("GSC2_ADDED")
else: print("GSC2_ANCHOR_NOT_FOUND")
