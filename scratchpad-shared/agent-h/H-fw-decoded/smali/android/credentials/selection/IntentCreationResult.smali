.class public final Landroid/credentials/selection/IntentCreationResult;
.super Ljava/lang/Object;
.source "IntentCreationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;,
        Landroid/credentials/selection/IntentCreationResult$Builder;
    }
.end annotation


# instance fields
.field private final mFallbackUiPackageName:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private final mOemUiPackageName:Ljava/lang/String;

.field private final mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fallbackUiPackageName"    # Ljava/lang/String;
    .param p3, "oemUiPackageName"    # Ljava/lang/String;
    .param p4, "oemUiUsageStatus"    # Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult;->mIntent:Landroid/content/Intent;

    .line 41
    iput-object p2, p0, Landroid/credentials/selection/IntentCreationResult;->mFallbackUiPackageName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiPackageName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;Landroid/credentials/selection/IntentCreationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentCreationResult;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)V

    return-void
.end method


# virtual methods
.method public getFallbackUiPackageName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mFallbackUiPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOemUiPackageName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/credentials/selection/IntentCreationResult;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    return-object v0
.end method
