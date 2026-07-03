namespace OHOS {
    template<typename T> class sptr;
    class Surface;
    class SurfaceBuffer;
    class SyncFence;
}
 
namespace oh_adapter {
 
/**
 * Tracks the mapping between Android buffer slots and OH SurfaceBuffers.
 */
struct BufferSlot {
    OHOS::sptr<OHOS::SurfaceBuffer> ohBuffer;  // OH buffer object (holds dmabuf fd)
    uint32_t ohSeqNum = 0;                      // Sequence number in OH BufferQueue
    int32_t width = 0;
    int32_t height = 0;
    int32_t format = 0;
    int dmabufFd = -1;                          // Cached dup'd dmabuf fd
};
 
/**
 * OHGraphicBufferProducer wraps an OH Surface (ProducerSurface) and provides
 * the buffer operations that Android's rendering pipeline expects.
 *
