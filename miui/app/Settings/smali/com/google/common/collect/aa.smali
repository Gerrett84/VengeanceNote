.class final Lcom/google/common/collect/aa;
.super Lcom/google/common/collect/u;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
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
    .line 1321
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1326
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aa;->time:J

    .line 1338
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->on:Lcom/google/common/collect/ag;

    .line 1351
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aa;->oo:Lcom/google/common/collect/ag;

    .line 1322
    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/google/common/collect/aa;->on:Lcom/google/common/collect/ag;

    .line 1349
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/common/collect/aa;->oo:Lcom/google/common/collect/ag;

    .line 1362
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1330
    iget-wide v0, p0, Lcom/google/common/collect/aa;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/common/collect/aa;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/common/collect/aa;->oo:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-wide p1, p0, Lcom/google/common/collect/aa;->time:J

    .line 1336
    return-void
.end method
