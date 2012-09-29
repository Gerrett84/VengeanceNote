.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# instance fields
.field final synthetic iJ:Lcom/android/settings/applications/ApplicationsState;

.field mResumed:Z

.field final rF:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field final rG:Ljava/lang/Object;

.field rH:Z

.field rI:Z

.field rJ:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field rK:Ljava/util/Comparator;

.field rL:Ljava/util/ArrayList;

.field rM:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    .line 441
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rF:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 442
    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rH:Z

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rI:Z

    .line 476
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rJ:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 477
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rK:Ljava/util/Comparator;

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rL:Ljava/util/ArrayList;

    .line 479
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hn:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hn:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 482
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->Hn:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rL:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 491
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 500
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rI:Z

    .line 502
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rL:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 484
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 503
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 495
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method fc()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rH:Z

    if-nez v2, :cond_0

    .line 511
    monitor-exit v1

    .line 567
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rJ:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 515
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rK:Ljava/util/Comparator;

    .line 516
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rH:Z

    .line 517
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rJ:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 518
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rK:Ljava/util/Comparator;

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 523
    if-eqz v2, :cond_1

    .line 524
    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v1

    .line 529
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 530
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 534
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 535
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 536
    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 537
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v6

    .line 539
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v7, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 540
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->k(Landroid/content/Context;)V

    .line 542
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 534
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 519
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 530
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 544
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 548
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 550
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_6
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rH:Z

    if-nez v0, :cond_5

    .line 552
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rM:Ljava/util/ArrayList;

    .line 553
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rI:Z

    if-nez v0, :cond_6

    .line 554
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rL:Ljava/util/ArrayList;

    .line 555
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->rG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 566
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 557
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 560
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 564
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 461
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->Hi:Z

    .line 462
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hn:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->jR()V

    .line 466
    :cond_0
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 449
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->Hi:Z

    .line 450
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->iJ:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->jQ()V

    .line 452
    :cond_0
    monitor-exit v1

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
