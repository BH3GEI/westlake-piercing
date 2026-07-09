.class Landroid/hardware/usb/UsbManager$AccessoryHandle;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryHandle"
.end annotation


# instance fields
.field private final blacklist mInputStreamOpened:Z

.field private final blacklist mOutputStreamOpened:Z

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;ZZ)V
    .locals 0
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "inputStreamOpened"    # Z
    .param p3, "outputStreamOpened"    # Z

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1022
    iput-boolean p2, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    .line 1023
    iput-boolean p3, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    .line 1024
    return-void
.end method


# virtual methods
.method public blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1027
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist isInputStreamOpened()Z
    .locals 1

    .line 1031
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    return v0
.end method

.method public blacklist isOpen()Z
    .locals 1

    .line 1039
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isOutputStreamOpened()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    return v0
.end method
