.class Lcom/google/common/collect/ax;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field final hash:I

.field final nx:Lcom/google/common/collect/ag;

.field volatile ny:Lcom/google/common/collect/az;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1482
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1550
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eU()Lcom/google/common/collect/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ax;->ny:Lcom/google/common/collect/az;

    .line 1483
    iput p3, p0, Lcom/google/common/collect/ax;->hash:I

    .line 1484
    iput-object p4, p0, Lcom/google/common/collect/ax;->nx:Lcom/google/common/collect/ag;

    .line 1485
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/az;)V
    .locals 1
    .parameter

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/common/collect/ax;->ny:Lcom/google/common/collect/az;

    .line 1560
    iput-object p1, p0, Lcom/google/common/collect/ax;->ny:Lcom/google/common/collect/az;

    .line 1561
    invoke-interface {v0, p1}, Lcom/google/common/collect/az;->a(Lcom/google/common/collect/az;)V

    .line 1562
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dm()J
    .locals 1

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dp()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/google/common/collect/ax;->ny:Lcom/google/common/collect/az;

    return-object v0
.end method

.method public dq()I
    .locals 1

    .prologue
    .line 1566
    iget v0, p0, Lcom/google/common/collect/ax;->hash:I

    return v0
.end method

.method public dr()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/common/collect/ax;->nx:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1489
    invoke-virtual {p0}, Lcom/google/common/collect/ax;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(J)V
    .locals 1
    .parameter

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
