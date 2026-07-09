.class public abstract Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;
.super Landroid/os/Binder;
.source "IIntrusionDetectionService.java"

# interfaces
.implements Landroid/security/intrusiondetection/IIntrusionDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IIntrusionDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addStateCallback:I = 0x1

.field static final blacklist TRANSACTION_disable:I = 0x4

.field static final blacklist TRANSACTION_enable:I = 0x3

.field static final blacklist TRANSACTION_removeStateCallback:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    nop

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/intrusiondetection/IIntrusionDetectionService;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionService;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "disable"

    return-object v0

    .line 89
    :pswitch_1
    const-string v0, "enable"

    return-object v0

    .line 85
    :pswitch_2
    const-string/jumbo v0, "removeStateCallback"

    return-object v0

    .line 81
    :pswitch_3
    const-string v0, "addStateCallback"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addStateCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 241
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
    return-object p0
.end method

.method protected blacklist disable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 256
    return-void
.end method

.method protected blacklist enable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_0

    .line 130
    .end local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_0

    .line 121
    .end local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    move-result-object v2

    .line 122
    .restart local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    nop

    .line 159
    .end local v2    # "_arg0":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist removeStateCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 246
    return-void
.end method
