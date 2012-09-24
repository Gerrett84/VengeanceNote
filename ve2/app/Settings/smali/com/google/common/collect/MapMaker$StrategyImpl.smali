.class Lcom/google/common/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/d;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/google/common/collect/A;

.field final keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;

.field final valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/k;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 482
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->b(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 483
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->c(Lcom/google/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 485
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/i;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/common/collect/i;->a(Lcom/google/common/collect/d;Lcom/google/common/base/k;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 486
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 745
    :try_start_0
    sget-object v0, Lcom/google/common/collect/b;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    sget-object v0, Lcom/google/common/collect/b;->ac:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    sget-object v0, Lcom/google/common/collect/b;->ad:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    sget-object v0, Lcom/google/common/collect/b;->ae:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    sget-object v0, Lcom/google/common/collect/b;->af:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 709
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 715
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/A;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 717
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/A;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/collect/MapMaker$Strength;->a(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-interface {p2}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v1

    .line 548
    invoke-static {}, Lcom/google/common/collect/MapMaker;->hK()Lcom/google/common/collect/D;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 549
    invoke-interface {p2}, Lcom/google/common/collect/w;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/google/common/collect/j;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/common/collect/j;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/w;Lcom/google/common/collect/w;)V

    invoke-interface {v0, v1}, Lcom/google/common/collect/w;->a(Lcom/google/common/collect/D;)V

    .line 558
    :goto_0
    return-object v0

    .line 555
    :cond_0
    invoke-interface {p2}, Lcom/google/common/collect/w;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    .line 557
    invoke-interface {v1, v0}, Lcom/google/common/collect/D;->a(Lcom/google/common/collect/w;)Lcom/google/common/collect/D;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/w;->a(Lcom/google/common/collect/D;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->d(Lcom/google/common/collect/w;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p3, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/base/k;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/common/base/k;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 606
    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returned null for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/google/common/collect/p;

    invoke-direct {v1, v0}, Lcom/google/common/collect/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Lcom/google/common/collect/D;)V

    .line 611
    new-instance v1, Lcom/google/common/collect/NullOutputException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :catch_0
    move-exception v0

    .line 597
    new-instance v1, Lcom/google/common/collect/G;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/G;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Lcom/google/common/collect/D;)V

    .line 599
    throw v0

    .line 600
    :catch_1
    move-exception v0

    .line 601
    new-instance v1, Lcom/google/common/collect/G;

    invoke-direct {v1, v0}, Lcom/google/common/collect/G;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Lcom/google/common/collect/D;)V

    .line 603
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 613
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Ljava/lang/Object;)V

    .line 615
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/k;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/base/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p2, Lcom/google/common/collect/w;

    check-cast p3, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/common/collect/A;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/A;

    .line 698
    return-void
.end method

.method a(Lcom/google/common/collect/w;Lcom/google/common/collect/D;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-interface {p1}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->hK()Lcom/google/common/collect/D;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 625
    :goto_0
    invoke-interface {p1, p2}, Lcom/google/common/collect/w;->a(Lcom/google/common/collect/D;)V

    .line 626
    if-eqz v0, :cond_0

    .line 627
    monitor-enter p1

    .line 628
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit p1

    .line 631
    :cond_0
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/common/collect/w;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->b(Lcom/google/common/collect/w;Ljava/lang/Object;)Lcom/google/common/collect/D;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Lcom/google/common/collect/D;)V

    .line 491
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 492
    invoke-interface {p1}, Lcom/google/common/collect/w;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    :cond_0
    return-void
.end method

.method public b(Lcom/google/common/collect/w;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 533
    invoke-interface {p1}, Lcom/google/common/collect/w;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->a(Lcom/google/common/collect/w;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/google/common/collect/w;)I
    .locals 1
    .parameter

    .prologue
    .line 537
    invoke-interface {p1}, Lcom/google/common/collect/w;->e()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/google/common/collect/w;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 568
    invoke-interface {p1}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v0

    .line 569
    invoke-static {}, Lcom/google/common/collect/MapMaker;->hK()Lcom/google/common/collect/D;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 570
    monitor-enter p1

    .line 572
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->hK()Lcom/google/common/collect/D;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/D;->br()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Lcom/google/common/collect/w;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 585
    invoke-interface {p1}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Lcom/google/common/collect/D;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 507
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 508
    sget-object v2, Lcom/google/common/collect/l;->lX:Ljava/util/Timer;

    new-instance v3, Lcom/google/common/collect/t;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/common/collect/t;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 518
    return-void
.end method

.method public f(Lcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .locals 1
    .parameter

    .prologue
    .line 692
    invoke-interface {p1}, Lcom/google/common/collect/w;->d()Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->e(Lcom/google/common/collect/w;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker$Strength;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->b(Lcom/google/common/collect/w;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->f(Lcom/google/common/collect/w;)Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->c(Lcom/google/common/collect/w;)I

    move-result v0

    return v0
.end method
