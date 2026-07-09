# WestlakeUpscreen injectTouch test harness (smali)
# Call with: adapter.window.WestlakeUpscreenTest.run(Landroid/content/Context;)V
# Adds to existing dexjar; run from Dayu600ApkStageProbe.embeddedMain()

.class public Landroidx/test/WestlakeUpscreenTest;
.super Ljava/lang/Object;
.source "WestlakeUpscreenTest.java"

.method public constructor <init>()V
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static run(Landroid/content/Context;)V
    .registers 8

    const-string v0, "WLTEST"
    const-string v1, "[WT] WestlakeUpscreenTest.run()"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # Check uiHandler before show()
    invoke-static {}, Ladapter/window/WestlakeUpscreen;->uiHandler()Landroid/os/Handler;
    move-result-object v1
    if-nez v1, :uiHandler_ok
    const-string v1, "[WT] uiHandler null before show() - expected"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    goto :make_view

    :uiHandler_ok
    const-string v1, "[WT] uiHandler non-null before show() - unexpected"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :make_view
    # Make a green pure color view
    const/16 v1, 0x100
    invoke-static {p0, v1}, Ladapter/window/WestlakeUpscreen;->pureColorView(Landroid/content/Context;I)Landroid/view/View;
    move-result-object v2
    const-string v1, "[WT] view created"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # Show it
    const/16 v3, 1200
    const/16 v4, 1920
    invoke-static {v2, v3, v4}, Ladapter/window/WestlakeUpscreen;->show(Landroid/view/View;II)I
    move-result v1
    const-string v3, "[WT] show()="
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # Check handler after show()
    invoke-static {}, Ladapter/window/WestlakeUpscreen;->uiHandler()Landroid/os/Handler;
    move-result-object v3
    if-nez v3, :handler_ok
    const-string v3, "[WT] FAIL: uiHandler null after show()"
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void

    :handler_ok
    const-string v3, "[WT] uiHandler OK after show()"
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # Post touch test to UI thread
    new-instance v4, Ladapterx/test/WestlakeUpscreenTest$TouchRunner;
    invoke-direct {v4, v3}, Ladapterx/test/WestlakeUpscreenTest$TouchRunner;-><init>(Landroid/os/Handler;)V
    invoke-interface {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v3, "[WT] touch test posted"
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

# $1: Runnable that performs the actual touch test on the UI thread
.class Landroidx/test/WestlakeUpscreenTest$TouchRunner;
.super Ljava/lang/Object;
.source "WestlakeUpscreenTest.java"

.field public handler:Landroid/os/Handler;

.method constructor <init>(Landroid/os/Handler;)V
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Landroidx/test/WestlakeUpscreenTest$TouchRunner;->handler:Landroid/os/Handler;
    return-void
.end method

.method public run()V
    .registers 8
    const-string v0, "WLTEST"

    const-string v1, "[WT-T] sleep 200ms..."
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_sleep
    const-wide/16 v2, 200
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    goto :do_touch

    :catch_sleep
    move-exception v1
    const-string v2, "[WT-T] sleep interrupted"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :do_touch
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v2

    const/16 v4, 0x0  # ACTION_DOWN
    const v5, 0x258000  # x=600f
    const v6, 0x392000  # y=960f
    invoke-static {v4, v5, v6, v2, v3}, Ladapter/window/WestlakeUpscreen;->injectTouch(IFFJ)Z
    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "[WT-T] DOWN at 600,960 handled="
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # UP
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v2
    const/16 v4, 0x1  # ACTION_UP
    invoke-static {v4, v5, v6, v2, v3}, Ladapter/window/WestlakeUpscreen;->injectTouch(IFFJ)Z
    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "[WT-T] UP at 600,960 handled="
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # request redraw
    invoke-static {}, Ladapter/window/WestlakeUpscreen;->requestRedraw()V
    const-string v5, "[WT-T] redraw requested"
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[WT-T] === INJECT-TOUCH TEST COMPLETE ==="
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

# Note: adapterx/window is a stub package - the real class is adapter/window/WestlakeUpscreen
# This smali won't assemble standalone; must be merged into existing dex via baksmali.
