// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__surface__jni__oh_graphic_buffer_producer.cpp@113.html
// title: p1612 framework/surface/jni/oh_graphic_buffer_producer.cpp:113
// summary: OHGraphicBufferProducer::dequeueBuffer</span><br><span>??OH BufferHandle ??dmabuf fd ??? dup ???????????????????????? OH sync_file fence ??? fd ?????? Androi

  101:     OHOS::SurfaceError ret = ohSurface_->RequestBuffer(
  102:         ohBuffer, releaseFence, requestConfig);
  103:  
  104:     if (ret != OHOS::SURFACE_ERROR_OK || ohBuffer == nullptr) {
  105:         OH_BR_IPC_FAIL("GBProducer.dequeueBuffer", -static_cast<int>(ret),
  106:                        "RequestBuffer failed");
  107:         return -static_cast<int>(ret);
  108:     }
  109:  
  110:     // Extract sequence number for tracking
  111:     uint32_t seqNum = ohBuffer->GetSeqNum();
  112:  
  113:     // Get the dmabuf fd from the BufferHandle
  114:     // OH BufferHandle.fd is a standard Linux dmabuf fd, same as Android's GraphicBuffer
  115:     BufferHandle* handle = ohBuffer->GetBufferHandle();
  116:     int dmabufFd = -1;
  117:     if (handle != nullptr && handle->fd >= 0) {
  118:         // Dup the fd so we have our own copy
  119:         dmabufFd = dup(handle->fd);
  120:         if (dmabufFd < 0) {
  121:             LOGE("dequeueBuffer: Failed to dup dmabuf fd: %s", strerror(errno));
  122:         }
  123:     } else {
  124:         LOGW("dequeueBuffer: BufferHandle or fd is invalid");
  125:     }
