.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/RateLimitingCache$ValueFetcher;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManager;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final fetchValue()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->$r8$lambda$nTwFhl_4O-ZVwyT6URmXK0QLjbk(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
