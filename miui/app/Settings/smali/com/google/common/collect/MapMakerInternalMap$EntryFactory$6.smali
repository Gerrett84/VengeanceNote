.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 414
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
    .line 424
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 425
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;->a(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 426
    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    new-instance v0, Lcom/google/common/collect/aa;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    return-object v0
.end method
