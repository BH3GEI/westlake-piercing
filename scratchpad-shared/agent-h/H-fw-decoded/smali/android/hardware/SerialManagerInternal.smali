.class public abstract Landroid/hardware/SerialManagerInternal;
.super Ljava/lang/Object;
.source "SerialManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addVirtualSerialPortForTest(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeVirtualSerialPortForTest(Ljava/lang/String;)V
.end method
