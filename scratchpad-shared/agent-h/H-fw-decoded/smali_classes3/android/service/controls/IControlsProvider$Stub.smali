.class public abstract Landroid/service/controls/IControlsProvider$Stub;
.super Landroid/os/Binder;
.source "IControlsProvider.java"

# interfaces
.implements Landroid/service/controls/IControlsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_action:I = 0x4

.field static final blacklist TRANSACTION_load:I = 0x1

.field static final blacklist TRANSACTION_loadSuggested:I = 0x2

.field static final blacklist TRANSACTION_subscribe:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.service.controls.IControlsProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.service.controls.IControlsProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/controls/IControlsProvider;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/service/controls/IControlsProvider;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/service/controls/IControlsProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/controls/IControlsProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "action"

    return-object v0

    .line 76
    :pswitch_1
    const-string/jumbo v0, "subscribe"

    return-object v0

    .line 72
    :pswitch_2
    const-string/jumbo v0, "loadSuggested"

    return-object v0

    .line 68
    :pswitch_3
    const-string/jumbo v0, "load"

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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 224
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/service/controls/IControlsProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.service.controls.IControlsProvider"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/service/controls/actions/ControlActionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/controls/actions/ControlActionWrapper;

    .line 138
    .local v3, "_arg1":Landroid/service/controls/actions/ControlActionWrapper;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/controls/IControlsActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsActionCallback;

    move-result-object v4

    .line 139
    .local v4, "_arg2":Landroid/service/controls/IControlsActionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/controls/IControlsProvider$Stub;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V

    .line 141
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/controls/actions/ControlActionWrapper;
    .end local v4    # "_arg2":Landroid/service/controls/IControlsActionCallback;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v3

    .line 127
    .local v3, "_arg1":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsProvider$Stub;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    .line 129
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/service/controls/IControlsSubscriber;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    .line 117
    .local v2, "_arg0":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V

    .line 119
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    .line 109
    .restart local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->load(Landroid/service/controls/IControlsSubscriber;)V

    .line 111
    nop

    .line 148
    .end local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
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
