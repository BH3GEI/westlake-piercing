.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3222
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    .line 3225
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 3226
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3227
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    .line 3231
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 3232
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3233
    return-void
.end method
