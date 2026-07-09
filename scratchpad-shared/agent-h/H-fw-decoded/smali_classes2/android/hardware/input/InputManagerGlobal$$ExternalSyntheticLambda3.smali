.class public final synthetic Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManager$KeyGestureEventHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    check-cast p1, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    invoke-static {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->lambda$unregisterKeyGestureEventHandler$4(Landroid/hardware/input/InputManager$KeyGestureEventHandler;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)Z

    move-result p1

    return p1
.end method
