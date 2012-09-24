.class final Lcom/google/common/collect/g;
.super Lcom/google/common/collect/u;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dV:Lcom/google/common/collect/ag;

.field dW:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1369
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1374
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g;->dV:Lcom/google/common/collect/ag;

    .line 1387
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g;->dW:Lcom/google/common/collect/ag;

    .line 1370
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/google/common/collect/g;->dV:Lcom/google/common/collect/ag;

    .line 1385
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/common/collect/g;->dV:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/common/collect/g;->dW:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/google/common/collect/g;->dW:Lcom/google/common/collect/ag;

    .line 1398
    return-void
.end method
