.class public final synthetic Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    invoke-static {v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->lambda$connect$2(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    return-void
.end method
