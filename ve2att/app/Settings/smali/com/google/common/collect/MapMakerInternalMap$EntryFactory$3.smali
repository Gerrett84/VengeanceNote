.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/P;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 386
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;->b(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 387
    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v0, Lcom/google/common/collect/L;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/collect/L;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    return-object v0
.end method
