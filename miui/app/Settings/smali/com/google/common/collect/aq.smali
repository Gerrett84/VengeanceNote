.class final Lcom/google/common/collect/aq;
.super Lcom/google/common/collect/ax;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dV:Lcom/google/common/collect/ag;

.field dW:Lcom/google/common/collect/ag;

.field on:Lcom/google/common/collect/ag;

.field oo:Lcom/google/common/collect/ag;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ax;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aq;->time:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aq;->on:Lcom/google/common/collect/ag;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aq;->oo:Lcom/google/common/collect/ag;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aq;->dV:Lcom/google/common/collect/ag;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aq;->dW:Lcom/google/common/collect/ag;

    .line 1664
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/aq;->dV:Lcom/google/common/collect/ag;

    .line 1719
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/aq;->dV:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/aq;->dW:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/aq;->dW:Lcom/google/common/collect/ag;

    .line 1732
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/aq;->on:Lcom/google/common/collect/ag;

    .line 1691
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/aq;->oo:Lcom/google/common/collect/ag;

    .line 1704
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/aq;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/aq;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/aq;->oo:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/aq;->time:J

    .line 1678
    return-void
.end method
