.class Landroid/graphics/ImageDecoder$1;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/ImageDecoder;->traceDecoderSource(Landroid/graphics/ImageDecoder;)Ljava/lang/AutoCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resourceTracingEnabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1892
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder$1;->val$resourceTracingEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1895
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$1;->val$resourceTracingEnabled:Z

    if-eqz v0, :cond_0

    .line 1896
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1898
    :cond_0
    return-void
.end method
