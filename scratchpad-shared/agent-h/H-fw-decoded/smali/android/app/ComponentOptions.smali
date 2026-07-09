.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;
.source "ComponentOptions.java"


# static fields
.field public static final KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"


# instance fields
.field private mPendingIntentBalAllowed:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 63
    nop

    .line 64
    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ComponentOptions;
    .locals 1
    .param p0, "options"    # Landroid/os/Bundle;

    .line 146
    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ComponentOptions;

    invoke-direct {v0, p0}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getPendingIntentBackgroundActivityStartMode()I
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x2

    .line 77
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .locals 1
    .param p1, "state"    # I

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 115
    nop

    .line 121
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    :cond_0
    return-object v0
.end method
