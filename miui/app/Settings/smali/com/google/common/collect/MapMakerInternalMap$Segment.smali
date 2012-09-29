.class Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;

.field final expirationQueue:Ljava/util/Queue;

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final map:Lcom/google/common/collect/MapMakerInternalMap;

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2140
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2141
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2142
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 2143
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aG(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2145
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eW()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2148
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eX()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2151
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2155
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eS()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/collect/am;

    invoke-direct {v0}, Lcom/google/common/collect/am;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2159
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->eT()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/common/collect/ab;

    invoke-direct {v0}, Lcom/google/common/collect/ab;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2162
    return-void

    :cond_2
    move-object v0, v1

    .line 2145
    goto :goto_0

    .line 2151
    :cond_3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->fa()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2155
    :cond_4
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->fa()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2159
    :cond_5
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->fa()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method a(Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->rC:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/ag;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2394
    invoke-interface {p1}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/ag;->du()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2395
    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->rE:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 2399
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2400
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2402
    :cond_0
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .parameter

    .prologue
    .line 2169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2170
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 2172
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2174
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2175
    return-void
.end method

.method a(Lcom/google/common/collect/ag;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2926
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2928
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 2929
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2930
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2931
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v1, v0

    .line 2933
    :goto_0
    if-eqz v1, :cond_1

    .line 2934
    if-ne v1, p1, :cond_0

    .line 2935
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2936
    invoke-interface {v1}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2938
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2939
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2940
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2942
    const/4 v0, 0x1

    .line 2948
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :goto_1
    return v0

    .line 2933
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2946
    :cond_1
    const/4 v0, 0x0

    .line 2948
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_1

    .line 2948
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method a(Lcom/google/common/collect/ag;ILcom/google/common/collect/MapMaker$RemovalCause;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3024
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 3025
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3026
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3027
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v1, v0

    .line 3029
    :goto_0
    if-eqz v1, :cond_1

    .line 3030
    if-ne v1, p1, :cond_0

    .line 3031
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 3032
    invoke-interface {v1}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 3033
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3034
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3035
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3036
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3037
    const/4 v0, 0x1

    .line 3041
    :goto_1
    return v0

    .line 3029
    :cond_0
    invoke-interface {v1}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v1

    goto :goto_0

    .line 3041
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/az;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2957
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2959
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 2960
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2961
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2962
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v2, v0

    .line 2964
    :goto_0
    if-eqz v2, :cond_4

    .line 2965
    invoke-interface {v2}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2966
    invoke-interface {v2}, Lcom/google/common/collect/ag;->du()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2968
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v5

    .line 2969
    if-ne v5, p3, :cond_1

    .line 2970
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2971
    invoke-interface {p3}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2972
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2973
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2974
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2975
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    const/4 v0, 0x1

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :cond_0
    :goto_1
    return v0

    .line 2984
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2964
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2984
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 2984
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :cond_6
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2811
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2813
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jC()V

    .line 2815
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 2816
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2817
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2818
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v3, v0

    .line 2820
    :goto_0
    if-eqz v3, :cond_4

    .line 2821
    invoke-interface {v3}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2822
    invoke-interface {v3}, Lcom/google/common/collect/ag;->du()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2824
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v2

    .line 2825
    invoke-interface {v2}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2828
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2829
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2836
    :goto_1
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2837
    invoke-virtual {p0, v6, p2, v7, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2838
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2839
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 2840
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2841
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2842
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2848
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v1, v0

    :goto_3
    return v1

    .line 2830
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Lcom/google/common/collect/az;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2831
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2848
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2842
    goto :goto_2

    .line 2820
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2848
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_3

    .line 2848
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method aG(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter

    .prologue
    .line 2165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method aH(I)Lcom/google/common/collect/ag;
    .locals 2
    .parameter

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2430
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    return-object v0
.end method

.method b(Ljava/lang/Object;I)Lcom/google/common/collect/ag;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2436
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 2437
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aH(I)Lcom/google/common/collect/ag;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2438
    invoke-interface {v0}, Lcom/google/common/collect/ag;->du()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2437
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_0

    .line 2442
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2443
    if-nez v1, :cond_2

    .line 2444
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jq()V

    goto :goto_1

    .line 2448
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2454
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method b(Lcom/google/common/collect/ag;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/b;

    invoke-virtual {v0}, Lcom/google/common/base/b;->dB()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/ag;->i(J)V

    .line 2357
    return-void
.end method

.method b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Ljava/lang/Object;)Lcom/google/common/collect/az;

    move-result-object v0

    .line 2196
    invoke-interface {p1, v0}, Lcom/google/common/collect/ag;->b(Lcom/google/common/collect/az;)V

    .line 2197
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->p(Lcom/google/common/collect/ag;)V

    .line 2198
    return-void
.end method

.method b(Ljava/lang/Object;ILcom/google/common/collect/az;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2995
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2997
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2998
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2999
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v2, v0

    .line 3001
    :goto_0
    if-eqz v2, :cond_2

    .line 3002
    invoke-interface {v2}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3003
    invoke-interface {v2}, Lcom/google/common/collect/ag;->du()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3005
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v5

    .line 3006
    if-ne v5, p3, :cond_0

    .line 3007
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3008
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3009
    const/4 v0, 0x1

    .line 3017
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    :goto_1
    return v0

    .line 3017
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v0, v1

    goto :goto_1

    .line 3001
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3017
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v0, v1

    goto :goto_1

    .line 3017
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method c(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2184
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v0

    .line 2185
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->rC:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v1

    .line 2186
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/az;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/ag;->b(Lcom/google/common/collect/az;)V

    .line 2187
    return-object v1
.end method

.method c(Ljava/lang/Object;I)Lcom/google/common/collect/ag;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2458
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Ljava/lang/Object;I)Lcom/google/common/collect/ag;

    move-result-object v1

    .line 2459
    if-nez v1, :cond_0

    .line 2465
    :goto_0
    return-object v0

    .line 2461
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->eT()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->i(Lcom/google/common/collect/ag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2462
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jy()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2465
    goto :goto_0
.end method

.method clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2854
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_4

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2857
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2858
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->rE:Ljava/util/Queue;

    if-eq v0, v2, :cond_2

    move v2, v1

    .line 2859
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2860
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    :goto_1
    if-eqz v0, :cond_1

    .line 2862
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/az;->dd()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2863
    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ag;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2860
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_1

    .line 2859
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2868
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2869
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2868
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2871
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->ju()V

    .line 2872
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2873
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2874
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2876
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2877
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2879
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    .line 2883
    :cond_4
    return-void

    .line 2879
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2489
    :try_start_0
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2490
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Ljava/lang/Object;I)Lcom/google/common/collect/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2491
    if-nez v1, :cond_0

    .line 2499
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    :goto_0
    return v0

    .line 2494
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2499
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2510
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 2511
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2512
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 2513
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2514
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    :goto_1
    if-eqz v0, :cond_2

    .line 2515
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h(Lcom/google/common/collect/ag;)Ljava/lang/Object;

    move-result-object v5

    .line 2516
    if-nez v5, :cond_1

    .line 2514
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_1

    .line 2519
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2520
    const/4 v0, 0x1

    .line 2528
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    :goto_2
    return v0

    .line 2513
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2528
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    throw v0
.end method

.method d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2768
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2770
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jC()V

    .line 2772
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 2773
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2774
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2775
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v3, v0

    .line 2777
    :goto_0
    if-eqz v3, :cond_3

    .line 2778
    invoke-interface {v3}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2779
    invoke-interface {v3}, Lcom/google/common/collect/ag;->du()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2781
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v7

    .line 2782
    invoke-interface {v7}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2785
    if-eqz v2, :cond_0

    .line 2786
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2793
    :goto_1
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2794
    invoke-virtual {p0, v6, p2, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2795
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2796
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2797
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2798
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2805
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v2

    :goto_2
    return-object v0

    .line 2787
    :cond_0
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Lcom/google/common/collect/az;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2788
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2805
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    goto :goto_2

    .line 2777
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2805
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    goto :goto_2

    .line 2805
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method d(Lcom/google/common/collect/az;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3060
    invoke-interface {p1}, Lcom/google/common/collect/az;->dd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3063
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method expand()V
    .locals 11

    .prologue
    .line 2605
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2606
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2607
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_0

    .line 2670
    :goto_0
    return-void

    .line 2621
    :cond_0
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2622
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aG(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2623
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2624
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2625
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2628
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    .line 2630
    if-eqz v0, :cond_7

    .line 2631
    invoke-interface {v0}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v3

    .line 2632
    invoke-interface {v0}, Lcom/google/common/collect/ag;->du()I

    move-result v1

    and-int v2, v1, v10

    .line 2635
    if-nez v3, :cond_2

    .line 2636
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2625
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2643
    :goto_3
    if-eqz v3, :cond_3

    .line 2644
    invoke-interface {v3}, Lcom/google/common/collect/ag;->du()I

    move-result v1

    and-int/2addr v1, v10

    .line 2645
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2643
    :goto_4
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2651
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2654
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2655
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->r(Lcom/google/common/collect/ag;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2656
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->q(Lcom/google/common/collect/ag;)V

    .line 2657
    add-int/lit8 v0, v1, -0x1

    .line 2654
    :goto_6
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2659
    :cond_4
    invoke-interface {v2}, Lcom/google/common/collect/ag;->du()I

    move-result v0

    and-int v3, v0, v10

    .line 2660
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    .line 2661
    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2662
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_6

    .line 2668
    :cond_5
    iput-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2669
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2900
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2902
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2903
    invoke-interface {p2}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2904
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2905
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->r(Lcom/google/common/collect/ag;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2906
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->q(Lcom/google/common/collect/ag;)V

    .line 2907
    add-int/lit8 v1, v1, -0x1

    .line 2904
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object p1

    goto :goto_0

    .line 2909
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    goto :goto_1

    .line 2912
    :cond_1
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2913
    return-object v0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2470
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Ljava/lang/Object;I)Lcom/google/common/collect/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2471
    if-nez v1, :cond_0

    .line 2472
    const/4 v0, 0x0

    .line 2483
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    :goto_0
    return-object v0

    .line 2475
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2476
    if-eqz v0, :cond_1

    .line 2477
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->n(Lcom/google/common/collect/ag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2483
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    goto :goto_0

    .line 2479
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jq()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2483
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jB()V

    throw v0
.end method

.method h(Lcom/google/common/collect/ag;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3071
    invoke-interface {p1}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3072
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jq()V

    .line 3085
    :goto_0
    return-object v0

    .line 3075
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3076
    if-nez v1, :cond_1

    .line 3077
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jq()V

    goto :goto_0

    .line 3081
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->eT()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->i(Lcom/google/common/collect/ag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3082
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jy()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3085
    goto :goto_0
.end method

.method jA()Z
    .locals 3

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eS()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v0, v1, :cond_1

    .line 2413
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jx()V

    .line 2415
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    .line 2416
    invoke-interface {v0}, Lcom/google/common/collect/ag;->du()I

    move-result v1

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->us:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ag;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2417
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2419
    :cond_0
    const/4 v0, 0x1

    .line 2421
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method jB()V
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jE()V

    .line 3097
    :cond_0
    return-void
.end method

.method jC()V
    .locals 0

    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jF()V

    .line 3108
    return-void
.end method

.method jD()V
    .locals 0

    .prologue
    .line 3114
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jG()V

    .line 3115
    return-void
.end method

.method jE()V
    .locals 0

    .prologue
    .line 3118
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jF()V

    .line 3119
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jG()V

    .line 3120
    return-void
.end method

.method jF()V
    .locals 2

    .prologue
    .line 3123
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3125
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jr()V

    .line 3126
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jz()V

    .line 3127
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3129
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3132
    :cond_0
    return-void

    .line 3129
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method jG()V
    .locals 1

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3137
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->fb()V

    .line 3139
    :cond_0
    return-void
.end method

.method jq()V
    .locals 1

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2213
    :cond_0
    return-void

    .line 2210
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method jr()V
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->js()V

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2225
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jt()V

    .line 2227
    :cond_1
    return-void
.end method

.method js()V
    .locals 3

    .prologue
    .line 2232
    const/4 v0, 0x0

    move v1, v0

    .line 2233
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2235
    check-cast v0, Lcom/google/common/collect/ag;

    .line 2236
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->f(Lcom/google/common/collect/ag;)V

    .line 2237
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2241
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2240
    goto :goto_0
.end method

.method jt()V
    .locals 3

    .prologue
    .line 2246
    const/4 v0, 0x0

    move v1, v0

    .line 2247
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2249
    check-cast v0, Lcom/google/common/collect/az;

    .line 2250
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/az;)V

    .line 2251
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2255
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2254
    goto :goto_0
.end method

.method ju()V
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jv()V

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jw()V

    .line 2267
    :cond_1
    return-void
.end method

.method jv()V
    .locals 1

    .prologue
    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2271
    return-void
.end method

.method jw()V
    .locals 1

    .prologue
    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2275
    return-void
.end method

.method jx()V
    .locals 2

    .prologue
    .line 2338
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    if-eqz v0, :cond_2

    .line 2343
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2344
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2346
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2347
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2350
    :cond_2
    return-void
.end method

.method jy()V
    .locals 1

    .prologue
    .line 2363
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2365
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2371
    :cond_0
    return-void

    .line 2367
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method jz()V
    .locals 5

    .prologue
    .line 2375
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jx()V

    .line 2377
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2389
    :cond_0
    return-void

    .line 2382
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/b;

    invoke-virtual {v0}, Lcom/google/common/base/b;->dB()J

    move-result-wide v1

    .line 2384
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/ag;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2385
    invoke-interface {v0}, Lcom/google/common/collect/ag;->du()I

    move-result v3

    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->ur:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ag;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2386
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method n(Lcom/google/common/collect/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;J)V

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2291
    return-void
.end method

.method o(Lcom/google/common/collect/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;J)V

    .line 2305
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_0
    return-void
.end method

.method p(Lcom/google/common/collect/ag;)V
    .locals 2
    .parameter

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jx()V

    .line 2317
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2318
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 2324
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;J)V

    .line 2325
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2327
    :cond_0
    return-void

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2533
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2535
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jC()V

    .line 2537
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2538
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v2, v0, :cond_0

    .line 2539
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 2540
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2543
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2544
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2545
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v3, v0

    .line 2548
    :goto_0
    if-eqz v3, :cond_6

    .line 2549
    invoke-interface {v3}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2550
    invoke-interface {v3}, Lcom/google/common/collect/ag;->du()I

    move-result v7

    if-ne v7, p2, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2554
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v4

    .line 2555
    invoke-interface {v4}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2557
    if-nez v0, :cond_3

    .line 2558
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2559
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V

    .line 2560
    invoke-interface {v4}, Lcom/google/common/collect/az;->dd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2561
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2562
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2566
    :cond_1
    :goto_1
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2563
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2564
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 2568
    :cond_3
    if-eqz p4, :cond_4

    .line 2572
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->o(Lcom/google/common/collect/ag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_2

    .line 2576
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2577
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2578
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_2

    .line 2548
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;

    move-result-object v3

    goto :goto_0

    .line 2585
    :cond_6
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2586
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2587
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V

    .line 2588
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2589
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jA()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2590
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2592
    :goto_3
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    goto :goto_2

    .line 2595
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method q(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 2917
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ag;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2918
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2919
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2920
    return-void
.end method

.method r(Lcom/google/common/collect/ag;)Z
    .locals 1
    .parameter

    .prologue
    .line 3049
    invoke-interface {p1}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3050
    const/4 v0, 0x1

    .line 3052
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Lcom/google/common/collect/az;)Z

    move-result v0

    goto :goto_0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2724
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2726
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jC()V

    .line 2728
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2729
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2730
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v3, v0

    .line 2732
    :goto_0
    if-eqz v3, :cond_3

    .line 2733
    invoke-interface {v3}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2734
    invoke-interface {v3}, Lcom/google/common/collect/ag;->du()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2738
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v7

    .line 2739
    invoke-interface {v7}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2740
    if-nez v2, :cond_1

    .line 2741
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Lcom/google/common/collect/az;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2742
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v7, v7, -0x1

    .line 2743
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2744
    sget-object v7, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v6, p2, v2, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2745
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2746
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2747
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2748
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2753
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2754
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2755
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2762
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v2

    goto :goto_1

    .line 2732
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2762
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move-object v0, v1

    goto :goto_1

    .line 2762
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2673
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2675
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jC()V

    .line 2677
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2678
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2679
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ag;

    move-object v2, v0

    .line 2681
    :goto_0
    if-eqz v2, :cond_4

    .line 2682
    invoke-interface {v2}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2683
    invoke-interface {v2}, Lcom/google/common/collect/ag;->du()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2687
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dt()Lcom/google/common/collect/az;

    move-result-object v6

    .line 2688
    invoke-interface {v6}, Lcom/google/common/collect/az;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2689
    if-nez v7, :cond_1

    .line 2690
    invoke-virtual {p0, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Lcom/google/common/collect/az;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2691
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v6, -0x1

    .line 2692
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2693
    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v5, p2, v7, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2694
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    .line 2695
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2696
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2697
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2718
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v0, v1

    :goto_1
    return v0

    .line 2702
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2703
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2704
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v7, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2705
    invoke-virtual {p0, v2, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/ag;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2706
    const/4 v0, 0x1

    .line 2718
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    goto :goto_1

    .line 2710
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->o(Lcom/google/common/collect/ag;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2718
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v0, v1

    goto :goto_1

    .line 2681
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/collect/ag;->dv()Lcom/google/common/collect/ag;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2718
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    move v0, v1

    goto :goto_1

    .line 2718
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->jD()V

    throw v0
.end method
