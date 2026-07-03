// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__surface__jni__oh_graphic_buffer_producer.h@39.html
// title: p1612 framework/surface/jni/oh_graphic_buffer_producer.h:39
// summary: BufferSlot</span><br><span>??slot ????????OH SurfaceBuffer ??sptr??????????????? dup ?????dmabuf fd?????queue/cancel/disconnec

   27: namespace OHOS {
   28:     template<typename T> class sptr;
   29:     class Surface;
   30:     class SurfaceBuffer;
   31:     class SyncFence;
   32: }
   33:  
   34: namespace oh_adapter {
   35:  
   36: /**
   37:  * Tracks the mapping between Android buffer slots and OH SurfaceBuffers.
   38:  */
   39: struct BufferSlot {
   40:     OHOS::sptr<OHOS::SurfaceBuffer> ohBuffer;  // OH buffer object (holds dmabuf fd)
   41:     uint32_t ohSeqNum = 0;                      // Sequence number in OH BufferQueue
   42:     int32_t width = 0;
   43:     int32_t height = 0;
   44:     int32_t format = 0;
   45:     int dmabufFd = -1;                          // Cached dup'd dmabuf fd
   46: };
   47:  
   48: /**
   49:  * OHGraphicBufferProducer wraps an OH Surface (ProducerSurface) and provides
   50:  * the buffer operations that Android's rendering pipeline expects.
   51:  *
