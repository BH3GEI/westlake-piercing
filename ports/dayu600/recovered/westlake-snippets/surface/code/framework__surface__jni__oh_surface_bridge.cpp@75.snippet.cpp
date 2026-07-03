            producer->disconnect();
            delete producer;
        }
        sessions_.erase(sessionId);
    }
 
    auto session = std::make_unique<SurfaceSession>();
    session->sessionId = sessionId;
    session->width = width;
    session->height = height;
    session->format = format;
 
    // 2026-05-06 ??Per graphics_rendering_design.html ?5.1 + ?9.1 ?????#2:
    //   Single-source RSSurfaceNode rule.  The surfaceNode that WMS already
    //   registered (created in oh_window_manager_client.cpp::createSession)
    //   MUST also be the surfaceNode that hwui producer feeds buffers into.
    //   Two independent surfaceNodes (the pre-fix bug) leave RS unable to
    //   correlate WMS-side layer geometry with producer-side buffer flow,
    //   forcing RS prepare to mark the layer COMPOSITION_CLIENT (type 0)
    //   which OH HDI rejects ??Apply:250 ??App SIGABRT.
    //
    // Old code (commented out for reference):
    //     OHOS::Rosen::RSSurfaceNodeConfig config;
    //     config.SurfaceNodeName = windowName;
    //     auto surfaceNode = OHOS::Rosen::RSSurfaceNode::Create(config);  // ??independent surfaceNode
