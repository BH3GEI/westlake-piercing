.class public interface abstract Landroid/accessibilityservice/BrailleDisplayController;
.super Ljava/lang/Object;
.source "BrailleDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
    }
.end annotation


# static fields
.field public static final TEST_BRAILLE_DISPLAY_BUS_BLUETOOTH:Ljava/lang/String; = "BUS_BLUETOOTH"

.field public static final TEST_BRAILLE_DISPLAY_DESCRIPTOR:Ljava/lang/String; = "DESCRIPTOR"

.field public static final TEST_BRAILLE_DISPLAY_HIDRAW_PATH:Ljava/lang/String; = "HIDRAW_PATH"

.field public static final TEST_BRAILLE_DISPLAY_NAME:Ljava/lang/String; = "NAME"

.field public static final TEST_BRAILLE_DISPLAY_UNIQUE_ID:Ljava/lang/String; = "UNIQUE_ID"


# direct methods
.method public static checkApiFlagIsEnabled()V
    .locals 2

    .line 58
    invoke-static {}, Landroid/view/accessibility/Flags;->brailleDisplayHid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flag BRAILLE_DISPLAY_HID not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTestBrailleDisplayData(Landroid/accessibilityservice/AccessibilityService;Ljava/util/List;)V
    .locals 3
    .param p0, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/AccessibilityService;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "brailleDisplays":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 281
    nop

    .line 282
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 283
    .local v0, "serviceConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setTestBrailleDisplayData(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract connect(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract connect(Landroid/hardware/usb/UsbDevice;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
