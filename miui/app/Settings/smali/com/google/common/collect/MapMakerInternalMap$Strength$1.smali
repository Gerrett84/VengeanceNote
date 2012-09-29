.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/P;)V

    return-void
.end method


# virtual methods
.method W()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/google/common/base/Equivalences;->mi()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Ljava/lang/Object;)Lcom/google/common/collect/az;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    new-instance v0, Lcom/google/common/collect/p;

    invoke-direct {v0, p3}, Lcom/google/common/collect/p;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
