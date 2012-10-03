.class final Lcom/google/common/collect/v;
.super Lcom/google/common/collect/u;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dV:Lcom/google/common/collect/ag;

.field dW:Lcom/google/common/collect/ag;

.field om:Lcom/google/common/collect/ag;

.field on:Lcom/google/common/collect/ag;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1410
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/v;->time:J

    .line 1422
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->om:Lcom/google/common/collect/ag;

    .line 1435
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->on:Lcom/google/common/collect/ag;

    .line 1450
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->dV:Lcom/google/common/collect/ag;

    .line 1463
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v;->dW:Lcom/google/common/collect/ag;

    .line 1406
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/google/common/collect/v;->dV:Lcom/google/common/collect/ag;

    .line 1461
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/google/common/collect/v;->dV:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/common/collect/v;->dW:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/google/common/collect/v;->dW:Lcom/google/common/collect/ag;

    .line 1474
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/google/common/collect/v;->om:Lcom/google/common/collect/ag;

    .line 1433
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/google/common/collect/v;->on:Lcom/google/common/collect/ag;

    .line 1446
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1414
    iget-wide v0, p0, Lcom/google/common/collect/v;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/common/collect/v;->om:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/common/collect/v;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-wide p1, p0, Lcom/google/common/collect/v;->time:J

    .line 1420
    return-void
.end method
