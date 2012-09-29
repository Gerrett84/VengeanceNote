.class final Lcom/google/common/collect/e;
.super Lcom/google/common/collect/ax;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dY:Lcom/google/common/collect/ag;

.field dZ:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ax;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1632
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eZ()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e;->dY:Lcom/google/common/collect/ag;

    .line 1645
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eZ()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e;->dZ:Lcom/google/common/collect/ag;

    .line 1628
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/google/common/collect/e;->dY:Lcom/google/common/collect/ag;

    .line 1643
    return-void
.end method

.method public af()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/common/collect/e;->dY:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ag()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/google/common/collect/e;->dZ:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/google/common/collect/e;->dZ:Lcom/google/common/collect/ag;

    .line 1656
    return-void
.end method
