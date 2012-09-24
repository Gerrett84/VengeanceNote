.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;
.super Lcom/google/common/collect/ComputingConcurrentHashMap;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V

    .line 386
    return-void
.end method


# virtual methods
.method bridge synthetic A(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->U(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 396
    const-class v1, Lcom/google/common/collect/ComputationException;

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 397
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 403
    :cond_0
    return-object v0
.end method
