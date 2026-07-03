// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__surface__jni__oh_surface_bridge.cpp@75.html
// title: p1612 framework/surface/jni/oh_surface_bridge.cpp:75
// summary: createSurface</span><br><span>SurfaceBridge ?????RSSurfaceNode???????sessionId ??WMS ?????????????????? hwui buffer feed ?????? RS 

   63:             producer->disconnect();
   64:             delete producer;
   65:         }
   66:         sessions_.erase(sessionId);
   67:     }
   68:  
   69:     auto session = std::make_unique<SurfaceSession>();
   70:     session->sessionId = sessionId;
   71:     session->width = width;
   72:     session->height = height;
   73:     session->format = format;
   74:  
   75:     // 2026-05-06 ??Per graphics_rendering_design.html ?5.1 + ?9.1 ?????#2:
   76:     //   Single-source RSSurfaceNode rule.  The surfaceNode that WMS already
   77:     //   registered (created in oh_window_manager_client.cpp::createSession)
   78:     //   MUST also be the surfaceNode that hwui producer feeds buffers into.
   79:     //   Two independent surfaceNodes (the pre-fix bug) leave RS unable to
   80:     //   correlate WMS-side layer geometry with producer-side buffer flow,
   81:     //   forcing RS prepare to mark the layer COMPOSITION_CLIENT (type 0)
   82:     //   which OH HDI rejects ??Apply:250 ??App SIGABRT.
   83:     //
   84:     // Old code (commented out for reference):
   85:     //     OHOS::Rosen::RSSurfaceNodeConfig config;
   86:     //     config.SurfaceNodeName = windowName;
   87:     //     auto surfaceNode = OHOS::Rosen::RSSurfaceNode::Create(config);  // ??independent surfaceNode
