    OHOS::SurfaceError ret = ohSurface_->RequestBuffer(
        ohBuffer, releaseFence, requestConfig);
 
    if (ret != OHOS::SURFACE_ERROR_OK || ohBuffer == nullptr) {
        OH_BR_IPC_FAIL("GBProducer.dequeueBuffer", -static_cast<int>(ret),
                       "RequestBuffer failed");
        return -static_cast<int>(ret);
    }
 
    // Extract sequence number for tracking
    uint32_t seqNum = ohBuffer->GetSeqNum();
 
    // Get the dmabuf fd from the BufferHandle
    // OH BufferHandle.fd is a standard Linux dmabuf fd, same as Android's GraphicBuffer
    BufferHandle* handle = ohBuffer->GetBufferHandle();
    int dmabufFd = -1;
    if (handle != nullptr && handle->fd >= 0) {
        // Dup the fd so we have our own copy
        dmabufFd = dup(handle->fd);
        if (dmabufFd < 0) {
            LOGE("dequeueBuffer: Failed to dup dmabuf fd: %s", strerror(errno));
        }
    } else {
        LOGW("dequeueBuffer: BufferHandle or fd is invalid");
    }
