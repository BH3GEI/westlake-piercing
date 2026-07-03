// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__surface__jni__oh_graphic_buffer_producer.cpp@208.html
// title: p1612 framework/surface/jni/oh_graphic_buffer_producer.cpp:208

  196:  
  197:     // Build flush config
  198:     OHOS::BufferFlushConfig flushConfig = {
  199:         .damage = {
  200:             .x = cropLeft,
  201:             .y = cropTop,
  202:             .w = cropRight - cropLeft,
  203:             .h = cropBottom - cropTop,
  204:         },
  205:         .timestamp = timestamp,
  206:     };
  207:  
  208:     // Convert Android fence fd to OH SyncFence
  209:     // Both use Linux sync_file fd ??direct interchange via dup
  210:     OHOS::sptr<OHOS::SyncFence> acquireFence = OHOS::SyncFence::INVALID_FENCE;
  211:     if (fenceFd >= 0) {
  212:         acquireFence = new OHOS::SyncFence(fenceFd);
  213:         // SyncFence takes ownership of the fd, no need to close separately
  214:     }
  215:  
  216:     // Flush buffer to OH Surface (maps to BufferQueue::FlushBuffer)
  217:     OHOS::SurfaceError ret = ohSurface_->FlushBuffer(
  218:         ohBuffer, acquireFence, flushConfig);
  219:  
  220:     if (ret != OHOS::SURFACE_ERROR_OK) {
