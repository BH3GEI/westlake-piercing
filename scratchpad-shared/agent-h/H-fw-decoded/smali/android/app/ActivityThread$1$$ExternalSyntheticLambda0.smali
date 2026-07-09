.class public final synthetic Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityThread$1;

.field public final synthetic f$1:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread$1;Landroid/window/SplashScreenView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$1;

    iput-object p2, p0, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$1;

    iget-object v1, p0, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    invoke-static {v0, v1}, Landroid/app/ActivityThread$1;->$r8$lambda$Oo-h3s1sgAQePhaoXYoUsbSfWmM(Landroid/app/ActivityThread$1;Landroid/window/SplashScreenView;)V

    return-void
.end method
