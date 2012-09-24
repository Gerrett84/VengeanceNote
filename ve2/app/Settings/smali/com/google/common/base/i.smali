.class public abstract Lcom/google/common/base/i;
.super Ljava/lang/ref/SoftReference;
.source "FinalizableSoftReference.java"

# interfaces
.implements Lcom/google/common/base/f;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/google/common/base/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p2, Lcom/google/common/base/c;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 41
    invoke-virtual {p2}, Lcom/google/common/base/c;->r()V

    .line 42
    return-void
.end method
