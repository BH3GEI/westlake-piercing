 
extern OH_NativeBuffer *OH_NativeBuffer_Alloc(const OH_NativeBuffer_Config *config);
extern int32_t OH_NativeBuffer_Reference(OH_NativeBuffer *buffer);
extern int32_t OH_NativeBuffer_Unreference(OH_NativeBuffer *buffer);
extern void OH_NativeBuffer_GetConfig(OH_NativeBuffer *buffer, OH_NativeBuffer_Config *config);
extern int32_t OH_NativeBuffer_Map(OH_NativeBuffer *buffer, void **virAddr);
extern int32_t OH_NativeBuffer_Unmap(OH_NativeBuffer *buffer);
 
/* ============================================================ */
/* Android AHardwareBuffer types                                 */
/* ============================================================ */
 
/* AHardwareBuffer is identical to OH_NativeBuffer at the binary level
 * (both are opaque pointers). We define AHardwareBuffer as an alias. */
typedef struct AHardwareBuffer AHardwareBuffer;
 
typedef struct {
    uint32_t width;
    uint32_t height;
    uint32_t layers;
    uint32_t format;
    uint64_t usage;
    uint32_t stride;
    uint32_t rfu0;
    uint64_t rfu1;
