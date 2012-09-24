.class final Lcom/google/common/collect/ab;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# instance fields
.field final EI:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, Lcom/google/common/collect/A;

    invoke-direct {v0, p0}, Lcom/google/common/collect/A;-><init>(Lcom/google/common/collect/ab;)V

    iput-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3387
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-eq v0, v1, :cond_0

    .line 3388
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v1

    .line 3389
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->j(Lcom/google/common/collect/ag;)V

    move-object v0, v1

    .line 3391
    goto :goto_0

    .line 3393
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0, v1}, Lcom/google/common/collect/ag;->c(Lcom/google/common/collect/ag;)V

    .line 3394
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0, v1}, Lcom/google/common/collect/ag;->d(Lcom/google/common/collect/ag;)V

    .line 3395
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3366
    check-cast p1, Lcom/google/common/collect/ag;

    .line 3367
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yz:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iX()Lcom/google/common/collect/ag;
    .locals 2

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3337
    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public iY()Lcom/google/common/collect/ag;
    .locals 2

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3343
    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    .line 3344
    const/4 v0, 0x0

    .line 3348
    :goto_0
    return-object v0

    .line 3347
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ab;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3399
    new-instance v0, Lcom/google/common/collect/z;

    invoke-virtual {p0}, Lcom/google/common/collect/ab;->iX()Lcom/google/common/collect/ag;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/ab;Lcom/google/common/collect/ag;)V

    return-object v0
.end method

.method public l(Lcom/google/common/collect/ag;)Z
    .locals 2
    .parameter

    .prologue
    .line 3325
    invoke-interface {p1}, Lcom/google/common/collect/ag;->do()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3328
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->do()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3329
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 3284
    check-cast p1, Lcom/google/common/collect/ag;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->l(Lcom/google/common/collect/ag;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/google/common/collect/ab;->iX()Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/google/common/collect/ab;->iY()Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3354
    check-cast p1, Lcom/google/common/collect/ag;

    .line 3355
    invoke-interface {p1}, Lcom/google/common/collect/ag;->do()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3356
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v1

    .line 3357
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 3358
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->j(Lcom/google/common/collect/ag;)V

    .line 3360
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yz:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3377
    const/4 v1, 0x0

    .line 3378
    iget-object v0, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-eq v0, v2, :cond_0

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_0

    .line 3381
    :cond_0
    return v1
.end method
