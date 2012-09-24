.class final Lcom/google/common/collect/ar;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field final MS:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lcom/google/common/collect/ar;->MS:Lcom/google/common/collect/ag;

    .line 1745
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1760
    new-instance v0, Lcom/google/common/collect/ar;

    invoke-virtual {p0}, Lcom/google/common/collect/ar;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/ar;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/ag;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/google/common/collect/ar;->clear()V

    .line 1755
    return-void
.end method

.method public cY()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/common/collect/ar;->MS:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public cZ()Z
    .locals 1

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public da()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/google/common/collect/ar;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
