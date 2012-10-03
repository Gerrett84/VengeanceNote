.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/MapMakerInternalMap;
.source "ComputingConcurrentHashMap.java"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lcom/google/common/base/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 54
    invoke-static {p2}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/l;

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/l;

    .line 55
    return-void
.end method


# virtual methods
.method bridge synthetic A(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->U(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method

.method U(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->A(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object v0
.end method

.method c(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->d(Ljava/lang/Object;)I

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->U(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/l;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->a(Ljava/lang/Object;ILcom/google/common/base/l;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 413
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    iget-object v11, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/o;

    iget-object v13, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/l;

    move-object v12, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/o;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/l;)V

    return-object v0
.end method
