.class public Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;
.super Ljava/lang/RuntimeException;
.source "AppFunctionManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFunctionNotFoundException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/app/appfunctions/AppFunctionManagerHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;-><init>(Ljava/lang/String;)V

    return-void
.end method
