.class public final Lcom/android/internal/widget/NotificationProgressBar$Point;
.super Ljava/lang/Object;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressBar$Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Point;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    .line 1269
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1279
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1281
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1283
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressBar$Point;

    .line 1285
    .local v2, "that":Lcom/android/internal/widget/NotificationProgressBar$Point;
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1281
    .end local v2    # "that":Lcom/android/internal/widget/NotificationProgressBar$Point;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1290
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
