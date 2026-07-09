.class public final enum Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
.super Ljava/lang/Enum;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

.field public static final enum blacklist GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

.field public static final enum blacklist INVISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

.field public static final enum blacklist VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    .locals 3

    .line 341
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->INVISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 342
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    const-string v1, "GONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 343
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 344
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->INVISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 341
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->$values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 341
    const-class v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    .locals 1

    .line 341
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    return-object v0
.end method
