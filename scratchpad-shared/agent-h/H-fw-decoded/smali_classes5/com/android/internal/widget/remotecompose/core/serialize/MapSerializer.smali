.class public interface abstract Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"


# direct methods
.method public static varargs blacklist orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 4
    .param p0, "keysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 178
    .local v0, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 179
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract blacklist add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;FFFF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Double;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "TT;>;)",
            "Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;"
        }
    .end annotation
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/Short;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;"
        }
    .end annotation
.end method

.method public abstract blacklist add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;"
        }
    .end annotation
.end method

.method public abstract blacklist addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public abstract blacklist addIntExpressionSrc(Ljava/lang/String;[II)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method

.method public varargs abstract blacklist addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
.end method
