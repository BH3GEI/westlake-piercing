// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__hwui-shim__jni__oh_hardwarebuffer_shim.c@38.html
// title: p1612 framework/hwui-shim/jni/oh_hardwarebuffer_shim.c:38

   26:  
   27: extern OH_NativeBuffer *OH_NativeBuffer_Alloc(const OH_NativeBuffer_Config *config);
   28: extern int32_t OH_NativeBuffer_Reference(OH_NativeBuffer *buffer);
   29: extern int32_t OH_NativeBuffer_Unreference(OH_NativeBuffer *buffer);
   30: extern void OH_NativeBuffer_GetConfig(OH_NativeBuffer *buffer, OH_NativeBuffer_Config *config);
   31: extern int32_t OH_NativeBuffer_Map(OH_NativeBuffer *buffer, void **virAddr);
   32: extern int32_t OH_NativeBuffer_Unmap(OH_NativeBuffer *buffer);
   33:  
   34: /* ============================================================ */
   35: /* Android AHardwareBuffer types                                 */
   36: /* ============================================================ */
   37:  
   38: /* AHardwareBuffer is identical to OH_NativeBuffer at the binary level
   39:  * (both are opaque pointers). We define AHardwareBuffer as an alias. */
   40: typedef struct AHardwareBuffer AHardwareBuffer;
   41:  
   42: typedef struct {
   43:     uint32_t width;
   44:     uint32_t height;
   45:     uint32_t layers;
   46:     uint32_t format;
   47:     uint64_t usage;
   48:     uint32_t stride;
   49:     uint32_t rfu0;
   50:     uint64_t rfu1;
