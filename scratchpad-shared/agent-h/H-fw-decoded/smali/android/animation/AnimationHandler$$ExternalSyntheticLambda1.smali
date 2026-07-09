.class public final synthetic Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Landroid/animation/AnimationHandler;

.field public final synthetic f$1:Landroid/view/Choreographer;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$0:Landroid/animation/AnimationHandler;

    iput-object p2, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$0:Landroid/animation/AnimationHandler;

    iget-object v1, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/Choreographer;

    invoke-static {v0, v1, p1, p2}, Landroid/animation/AnimationHandler;->$r8$lambda$cI3rukYIb_VjDv2y_olauD4FmZA(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;J)V

    return-void
.end method
