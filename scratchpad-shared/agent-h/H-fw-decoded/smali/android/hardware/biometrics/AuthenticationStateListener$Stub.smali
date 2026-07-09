.class public abstract Landroid/hardware/biometrics/AuthenticationStateListener$Stub;
.super Landroid/os/Binder;
.source "AuthenticationStateListener.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/AuthenticationStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/AuthenticationStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAuthenticationAcquired:I = 0x1

.field static final TRANSACTION_onAuthenticationError:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x3

.field static final TRANSACTION_onAuthenticationHelp:I = 0x4

.field static final TRANSACTION_onAuthenticationStarted:I = 0x5

.field static final TRANSACTION_onAuthenticationStopped:I = 0x6

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.hardware.biometrics.AuthenticationStateListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/AuthenticationStateListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "android.hardware.biometrics.AuthenticationStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/AuthenticationStateListener;

    if-eqz v1, :cond_1

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/AuthenticationStateListener;

    return-object v1

    .line 97
    :cond_1
    new-instance v1, Landroid/hardware/biometrics/AuthenticationStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_0
    const-string/jumbo v0, "onAuthenticationSucceeded"

    return-object v0

    .line 130
    :pswitch_1
    const-string/jumbo v0, "onAuthenticationStopped"

    return-object v0

    .line 126
    :pswitch_2
    const-string/jumbo v0, "onAuthenticationStarted"

    return-object v0

    .line 122
    :pswitch_3
    const-string/jumbo v0, "onAuthenticationHelp"

    return-object v0

    .line 118
    :pswitch_4
    const-string/jumbo v0, "onAuthenticationFailed"

    return-object v0

    .line 114
    :pswitch_5
    const-string/jumbo v0, "onAuthenticationError"

    return-object v0

    .line 110
    :pswitch_6
    const-string/jumbo v0, "onAuthenticationAcquired"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 101
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 360
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 149
    const-string v0, "android.hardware.biometrics.AuthenticationStateListener"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 157
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 210
    :pswitch_0
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 211
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    .line 213
    goto :goto_0

    .line 202
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    :pswitch_1
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 203
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 205
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    :pswitch_2
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationStartedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 195
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationStartedInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 197
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationStartedInfo;
    :pswitch_3
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 187
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 189
    goto :goto_0

    .line 178
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    :pswitch_4
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    .line 179
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V

    .line 181
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
    :pswitch_5
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 171
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 173
    goto :goto_0

    .line 162
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    :pswitch_6
    sget-object v2, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 163
    .local v2, "_arg0":Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    .line 165
    nop

    .line 220
    .end local v2    # "_arg0":Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
