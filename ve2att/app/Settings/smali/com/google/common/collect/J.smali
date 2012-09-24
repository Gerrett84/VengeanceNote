.class final Lcom/google/common/collect/J;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field final computingFunction:Lcom/google/common/base/l;

.field volatile vl:Lcom/google/common/collect/az;


# direct methods
.method public constructor <init>(Lcom/google/common/base/l;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eU()Lcom/google/common/collect/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    .line 292
    iput-object p1, p0, Lcom/google/common/collect/J;->computingFunction:Lcom/google/common/base/l;

    .line 293
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    return-object p0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/J;->computingFunction:Lcom/google/common/base/l;

    invoke-interface {v0, p1}, Lcom/google/common/base/l;->l(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    new-instance v1, Lcom/google/common/collect/ah;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ah;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/J;->b(Lcom/google/common/collect/az;)V

    .line 362
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Lcom/google/common/collect/X;

    invoke-direct {v1, v0}, Lcom/google/common/collect/X;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/J;->b(Lcom/google/common/collect/az;)V

    .line 358
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/common/collect/J;->b(Lcom/google/common/collect/az;)V

    .line 350
    return-void
.end method

.method b(Lcom/google/common/collect/az;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->rB:Lcom/google/common/collect/az;

    if-ne v0, v1, :cond_0

    .line 368
    iput-object p1, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_0
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cY()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public cZ()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public da()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->rB:Lcom/google/common/collect/az;

    if-ne v0, v1, :cond_1

    .line 323
    const/4 v1, 0x0

    .line 325
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->rB:Lcom/google/common/collect/az;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const/4 v1, 0x1

    .line 331
    goto :goto_0

    .line 333
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v1, :cond_1

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/J;->vl:Lcom/google/common/collect/az;

    invoke-interface {v0}, Lcom/google/common/collect/az;->da()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method
