.class public final synthetic Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic blacklist f$0:[I


# direct methods
.method public synthetic constructor blacklist <init>([I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final whitelist onScrollChange(Landroid/view/View;IIII)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;->f$0:[I

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Landroid/view/autofill/AutofillPopupWindow;->lambda$update$0([ILandroid/view/View;IIII)V

    return-void
.end method
