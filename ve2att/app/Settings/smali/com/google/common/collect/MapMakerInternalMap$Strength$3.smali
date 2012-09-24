.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$3;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/P;)V

    return-void
.end method


# virtual methods
.method S()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/google/common/base/Equivalences;->me()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Ljava/lang/Object;)Lcom/google/common/collect/az;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    new-instance v0, Lcom/google/common/collect/ar;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/collect/ar;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/ag;)V

    return-object v0
.end method
