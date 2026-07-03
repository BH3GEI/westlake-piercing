 
    // Build flush config
    OHOS::BufferFlushConfig flushConfig = {
        .damage = {
            .x = cropLeft,
            .y = cropTop,
            .w = cropRight - cropLeft,
            .h = cropBottom - cropTop,
        },
        .timestamp = timestamp,
    };
 
    // Convert Android fence fd to OH SyncFence
    // Both use Linux sync_file fd ??direct interchange via dup
    OHOS::sptr<OHOS::SyncFence> acquireFence = OHOS::SyncFence::INVALID_FENCE;
    if (fenceFd >= 0) {
        acquireFence = new OHOS::SyncFence(fenceFd);
        // SyncFence takes ownership of the fd, no need to close separately
    }
 
    // Flush buffer to OH Surface (maps to BufferQueue::FlushBuffer)
    OHOS::SurfaceError ret = ohSurface_->FlushBuffer(
        ohBuffer, acquireFence, flushConfig);
 
    if (ret != OHOS::SURFACE_ERROR_OK) {
