.class public final Landroid/service/autofill/ConvertCredentialCallback;
.super Ljava/lang/Object;
.source "ConvertCredentialCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConvertCredentialCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/autofill/IConvertCredentialCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/service/autofill/IConvertCredentialCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/autofill/IConvertCredentialCallback;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist onFailure(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IConvertCredentialCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onSuccess(Landroid/service/autofill/ConvertCredentialResponse;)V
    .locals 1
    .param p1, "convertCredentialResponse"    # Landroid/service/autofill/ConvertCredentialResponse;

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IConvertCredentialCallback;->onSuccess(Landroid/service/autofill/ConvertCredentialResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
