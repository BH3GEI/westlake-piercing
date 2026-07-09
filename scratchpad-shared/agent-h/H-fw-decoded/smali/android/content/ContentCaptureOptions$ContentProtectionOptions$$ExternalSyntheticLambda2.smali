.class public final synthetic Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method
