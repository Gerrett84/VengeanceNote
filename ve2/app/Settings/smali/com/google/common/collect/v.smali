.class abstract Lcom/google/common/collect/v;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field xv:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field xw:Ljava/lang/Object;

.field xx:Lcom/google/common/collect/u;

.field xy:Lcom/google/common/collect/u;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 1
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/v;->nextSegmentIndex:I

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/v;->nextTableIndex:I

    .line 1628
    invoke-virtual {p0}, Lcom/google/common/collect/v;->advance()V

    .line 1629
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .prologue
    .line 1636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/v;->xx:Lcom/google/common/collect/u;

    .line 1638
    invoke-virtual {p0}, Lcom/google/common/collect/v;->gf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/v;->gg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1646
    :cond_2
    iget v0, p0, Lcom/google/common/collect/v;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/v;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/v;->nextSegmentIndex:I

    aget-object v0, v0, v1

    .line 1648
    iget v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_2

    .line 1649
    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/v;->xv:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1650
    iget-object v0, p0, Lcom/google/common/collect/v;->xv:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/v;->nextTableIndex:I

    .line 1651
    invoke-virtual {p0}, Lcom/google/common/collect/v;->gg()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method gf()Z
    .locals 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/q;

    .line 1664
    iget-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1665
    iget-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    const/4 v0, 0x1

    .line 1672
    :goto_1
    return v0

    .line 1666
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    goto :goto_0

    .line 1672
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method gg()Z
    .locals 3

    .prologue
    .line 1680
    :cond_0
    iget v0, p0, Lcom/google/common/collect/v;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/google/common/collect/v;->xv:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/v;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/v;->nextTableIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/google/common/collect/v;->xw:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/v;->gf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    :cond_1
    const/4 v0, 0x1

    .line 1687
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method gh()Lcom/google/common/collect/u;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/common/collect/v;->xx:Lcom/google/common/collect/u;

    if-nez v0, :cond_0

    .line 1713
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v;->xx:Lcom/google/common/collect/u;

    iput-object v0, p0, Lcom/google/common/collect/v;->xy:Lcom/google/common/collect/u;

    .line 1716
    invoke-virtual {p0}, Lcom/google/common/collect/v;->advance()V

    .line 1717
    iget-object v0, p0, Lcom/google/common/collect/v;->xy:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/common/collect/v;->xx:Lcom/google/common/collect/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/q;

    .line 1696
    invoke-interface {v0, p1}, Lcom/google/common/collect/q;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1697
    invoke-interface {v0, p1}, Lcom/google/common/collect/q;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1698
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1699
    new-instance v2, Lcom/google/common/collect/u;

    iget-object v3, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/v;->xx:Lcom/google/common/collect/u;

    .line 1700
    const/4 v0, 0x1

    .line 1703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/google/common/collect/v;->xy:Lcom/google/common/collect/u;

    if-nez v0, :cond_0

    .line 1722
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, p0, Lcom/google/common/collect/v;->xy:Lcom/google/common/collect/u;

    invoke-virtual {v1}, Lcom/google/common/collect/u;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/v;->xy:Lcom/google/common/collect/u;

    .line 1726
    return-void
.end method
