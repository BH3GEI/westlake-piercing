.class public Landroid/app/appfunctions/AppFunctionManagerConfiguration;
.super Ljava/lang/Object;
.source "AppFunctionManagerConfiguration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/app/appfunctions/AppFunctionManagerConfiguration;

    invoke-direct {v0, p0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionManager()Z

    move-result v0

    return v0
.end method
