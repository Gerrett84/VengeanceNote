.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# static fields
.field static CT:Ljava/lang/Object;

.field static CU:Lcom/android/settings/applications/RunningState;


# instance fields
.field final CV:Landroid/content/Context;

.field CW:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field final CX:Lcom/android/settings/applications/InterestingConfigChanges;

.field final CY:Landroid/util/SparseArray;

.field final CZ:Landroid/util/SparseArray;

.field final Da:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field final Db:Ljava/util/ArrayList;

.field final Dc:Landroid/util/SparseArray;

.field final Dd:Ljava/util/ArrayList;

.field final De:Ljava/util/ArrayList;

.field final Df:Landroid/util/SparseArray;

.field Dg:I

.field Dh:Z

.field Di:Ljava/util/ArrayList;

.field Dj:Ljava/util/ArrayList;

.field Dk:I

.field Dl:J

.field Dm:I

.field Dn:J

.field Do:I

.field Dp:J

.field final Dq:Landroid/os/HandlerThread;

.field final Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field final be:Landroid/content/pm/PackageManager;

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field mItems:Ljava/util/ArrayList;

.field final mLock:Ljava/lang/Object;

.field mResumed:Z

.field final tc:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->CT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 569
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->CX:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Da:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    .line 116
    iput v2, p0, Lcom/android/settings/applications/RunningState;->Dg:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Di:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->CV:Landroid/content/Context;

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->CV:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->tc:Landroid/app/ActivityManager;

    .line 572
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->CV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->be:Landroid/content/pm/PackageManager;

    .line 573
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 574
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Dq:Landroid/os/HandlerThread;

    .line 575
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 576
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->Dq:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 577
    return-void
.end method

.method static G(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .parameter

    .prologue
    .line 561
    sget-object v1, Lcom/android/settings/applications/RunningState;->CT:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->CU:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->CU:Lcom/android/settings/applications/RunningState;

    .line 565
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->CU:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 546
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 557
    :cond_1
    :goto_0
    return-object p1

    .line 553
    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 554
    if-ltz v0, :cond_1

    .line 555
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method private a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 629
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 632
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 639
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 30
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 654
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    .line 656
    const/4 v9, 0x0

    .line 660
    const/16 v4, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v12

    .line 662
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 663
    :goto_0
    const/4 v5, 0x0

    move v6, v4

    :goto_1
    if-ge v5, v6, :cond_2

    .line 664
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 668
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_1

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_1

    .line 669
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 670
    add-int/lit8 v4, v5, -0x1

    .line 671
    add-int/lit8 v5, v6, -0x1

    .line 663
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v4

    goto :goto_1

    .line 662
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 676
    :cond_1
    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4d

    .line 678
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 679
    add-int/lit8 v4, v5, -0x1

    .line 680
    add-int/lit8 v5, v6, -0x1

    .line 681
    goto :goto_2

    .line 687
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 689
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v7, v4

    .line 690
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 691
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-ge v5, v7, :cond_4

    .line 692
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 693
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v14, v4}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v8, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 689
    :cond_3
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3

    .line 698
    :cond_4
    const/4 v4, 0x0

    move v8, v4

    :goto_5
    if-ge v8, v6, :cond_6

    .line 699
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 700
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_5

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_5

    .line 701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 702
    if-eqz v5, :cond_5

    .line 703
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Co:Z

    .line 704
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_5

    .line 705
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cp:Z

    .line 698
    :cond_5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_5

    .line 712
    :cond_6
    const/4 v4, 0x0

    move v10, v4

    :goto_6
    if-ge v10, v6, :cond_10

    .line 713
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 720
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_9

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 722
    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cp:Z

    if-nez v8, :cond_9

    .line 728
    iget-object v8, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x12c

    if-ge v8, v14, :cond_9

    .line 732
    const/4 v8, 0x0

    .line 733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 734
    :goto_7
    if-eqz v5, :cond_4c

    .line 735
    iget-boolean v14, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Co:Z

    if-nez v14, :cond_7

    iget-object v14, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 736
    :cond_7
    const/4 v5, 0x1

    .line 741
    :goto_8
    if-eqz v5, :cond_9

    .line 712
    :goto_9
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_6

    .line 739
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->Df:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    .line 748
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 749
    if-nez v5, :cond_4b

    .line 750
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 751
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v8, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v5

    .line 753
    :goto_a
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 754
    if-nez v5, :cond_a

    .line 755
    const/4 v9, 0x1

    .line 756
    new-instance v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 757
    iget-object v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v8, v9

    .line 760
    iget v9, v5, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-eq v9, v14, :cond_e

    .line 761
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_f

    iget v9, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 762
    :goto_b
    iget v14, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v9, v14, :cond_d

    .line 763
    const/4 v8, 0x1

    .line 764
    iget v14, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v14, v9, :cond_d

    .line 765
    iget v14, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v14, :cond_b

    .line 766
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    iget v15, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 768
    :cond_b
    if-eqz v9, :cond_c

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    invoke-virtual {v14, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    :cond_c
    iput v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 774
    :cond_d
    iget-object v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 775
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    iput v9, v5, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    .line 777
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int v9, v8, v4

    goto/16 :goto_9

    .line 761
    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    .line 782
    :cond_10
    const/4 v4, 0x0

    move v8, v4

    move v6, v9

    :goto_c
    if-ge v8, v7, :cond_15

    .line 783
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 785
    if-nez v5, :cond_12

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 790
    if-nez v5, :cond_11

    .line 791
    const/4 v6, 0x1

    .line 792
    new-instance v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 793
    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 794
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    :cond_11
    iget-object v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 799
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 800
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 801
    const/4 v6, 0x1

    .line 802
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_13
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    iput v9, v5, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    .line 805
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cK:Z

    .line 806
    invoke-virtual {v5, v11}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/pm/PackageManager;)V

    .line 811
    :goto_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    iput v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cH:I

    .line 812
    iput-object v4, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 782
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_c

    .line 808
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cK:Z

    goto :goto_d

    .line 817
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 818
    const/4 v4, 0x0

    move v8, v6

    move v6, v4

    :goto_e
    if-ge v6, v7, :cond_1a

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 820
    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-ne v5, v9, :cond_19

    .line 821
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 822
    if-eqz v9, :cond_18

    .line 823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 824
    if-nez v5, :cond_16

    .line 825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 827
    :cond_16
    if-eqz v5, :cond_17

    .line 828
    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    iget v9, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    :cond_17
    :goto_f
    add-int/lit8 v4, v6, 0x1

    move v5, v7

    move v6, v8

    :goto_10
    move v7, v5

    move v8, v6

    move v6, v4

    .line 842
    goto :goto_e

    .line 834
    :cond_18
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cF:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_f

    .line 838
    :cond_19
    const/4 v5, 0x1

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 840
    add-int/lit8 v4, v7, -0x1

    move/from16 v23, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v23

    goto :goto_10

    .line 845
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 846
    const/4 v5, 0x0

    move v7, v8

    :goto_11
    if-ge v5, v6, :cond_1c

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 848
    iget-boolean v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cK:Z

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4a

    .line 849
    :cond_1b
    const/4 v7, 0x1

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 851
    add-int/lit8 v4, v5, -0x1

    .line 852
    add-int/lit8 v5, v6, -0x1

    move v6, v7

    .line 846
    :goto_12
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_11

    .line 859
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 860
    const/4 v4, 0x0

    move v6, v4

    move v5, v7

    :goto_13
    if-ge v6, v8, :cond_1d

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 862
    iget v7, v4, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-ne v7, v9, :cond_49

    .line 863
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v7}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v4, v5

    .line 860
    :goto_14
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_13

    .line 868
    :cond_1d
    const/4 v6, 0x0

    .line 869
    const/4 v4, 0x0

    move v8, v4

    move v7, v5

    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v8, v4, :cond_25

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    .line 871
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 872
    :cond_1e
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 873
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 874
    iget v10, v4, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-ne v10, v12, :cond_21

    .line 875
    invoke-virtual {v4, v11}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/pm/PackageManager;)V

    .line 876
    iget v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v10, :cond_1f

    .line 879
    iget-object v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 895
    :cond_1f
    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 896
    :cond_20
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 897
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 898
    iget v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-eq v4, v12, :cond_20

    .line 899
    const/4 v7, 0x1

    .line 900
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 882
    :cond_21
    const/4 v7, 0x1

    .line 883
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 884
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_23

    .line 885
    if-nez v6, :cond_22

    .line 886
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 888
    :cond_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    :cond_23
    iget v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v10, :cond_1e

    .line 891
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16

    .line 869
    :cond_24
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_15

    .line 906
    :cond_25
    if-eqz v6, :cond_26

    .line 907
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_26

    .line 908
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 909
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 907
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_18

    .line 913
    :cond_26
    if-eqz v7, :cond_36

    .line 915
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 916
    const/4 v4, 0x0

    move v6, v4

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v6, v4, :cond_2b

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 918
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cL:Z

    .line 919
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cM:Z

    .line 920
    const-wide v9, 0x7fffffffffffffffL

    iput-wide v9, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    .line 921
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_27
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 922
    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_28

    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_28

    .line 925
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cL:Z

    .line 927
    :cond_28
    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v10, :cond_27

    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v10, :cond_27

    .line 929
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cM:Z

    .line 930
    iget-wide v12, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v10, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_27

    .line 931
    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v12, v5, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v12, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    goto :goto_1b

    .line 935
    :cond_29
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 916
    :cond_2a
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_19

    .line 939
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Da:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v11, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 941
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 942
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 944
    const/4 v4, 0x0

    move v6, v4

    :goto_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_32

    .line 945
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 946
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/settings/applications/RunningState$BaseItem;->Iw:Z

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v4, v12, v5}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 952
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v5, :cond_2c

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_2c
    const/4 v8, 0x0

    .line 960
    const/4 v5, 0x0

    .line 961
    iget-object v9, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v9, v5

    :goto_1d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 962
    iput-boolean v9, v5, Lcom/android/settings/applications/RunningState$BaseItem;->Iw:Z

    .line 963
    const/4 v9, 0x1

    .line 964
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v15, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v15, :cond_2e

    .line 966
    if-eqz v8, :cond_2d

    iget-object v15, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v8, v15, :cond_2d

    .line 969
    :cond_2d
    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    :goto_1e
    move-object v8, v5

    .line 971
    goto :goto_1d

    :cond_2e
    move-object v5, v8

    goto :goto_1e

    .line 978
    :cond_2f
    new-instance v8, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v8}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    .line 979
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 980
    iget-object v14, v8, Lcom/android/settings/applications/RunningState$MergedItem;->PH:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    iput-object v8, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_1f

    .line 983
    :cond_30
    iput-object v4, v8, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 984
    iget-object v4, v8, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v10

    .line 985
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_31

    .line 986
    iget-object v5, v8, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 990
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4}, Lcom/android/settings/applications/RunningState$MergedItem;->e(Landroid/content/Context;Z)Z

    .line 991
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_1c

    .line 996
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 997
    const/4 v4, 0x0

    move v5, v4

    :goto_21
    if-ge v5, v6, :cond_35

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 999
    iget-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cF:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_34

    iget-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gtz v8, :cond_34

    .line 1000
    iget-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v8, :cond_33

    .line 1001
    new-instance v8, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v8}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    iput-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1002
    iget-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v4, v8, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1004
    :cond_33
    iget-object v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/android/settings/applications/RunningState$MergedItem;->e(Landroid/content/Context;Z)Z

    .line 1005
    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v13, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_34
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_21

    .line 1010
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1011
    :try_start_0
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1012
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/applications/RunningState;->Di:Ljava/util/ArrayList;

    .line 1013
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1020
    const/4 v9, 0x0

    .line 1021
    const/4 v8, 0x0

    .line 1022
    const/4 v6, 0x0

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1024
    const/4 v4, 0x0

    move v10, v4

    :goto_22
    if-ge v10, v11, :cond_3a

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1026
    iget v5, v4, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    if-eq v5, v12, :cond_39

    .line 1029
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x190

    if-lt v5, v12, :cond_37

    .line 1031
    add-int/lit8 v5, v9, 0x1

    .line 1032
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v5

    move v5, v8

    .line 1024
    :goto_23
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v9, v6

    move v8, v5

    move v6, v4

    goto :goto_22

    .line 1013
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1033
    :cond_37
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-gt v5, v12, :cond_38

    .line 1035
    add-int/lit8 v5, v8, 0x1

    .line 1036
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v9

    goto :goto_23

    .line 1038
    :cond_38
    const-string v5, "RunningState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown non-service process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    move v5, v8

    move v6, v9

    goto :goto_23

    .line 1042
    :cond_39
    add-int/lit8 v4, v6, 0x1

    move v5, v8

    move v6, v9

    goto :goto_23

    .line 1046
    :cond_3a
    const-wide/16 v15, 0x0

    .line 1047
    const-wide/16 v13, 0x0

    .line 1048
    const-wide/16 v11, 0x0

    .line 1049
    const/4 v10, 0x0

    .line 1051
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1052
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1053
    const/4 v4, 0x0

    move v5, v4

    :goto_24
    move/from16 v0, v17

    if-ge v5, v0, :cond_3b

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v4, v19, v5

    .line 1053
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_24

    .line 1056
    :cond_3b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v20

    .line 1058
    const/4 v5, 0x0

    .line 1059
    const/4 v4, 0x0

    move/from16 v18, v4

    move/from16 v23, v5

    move v5, v7

    move/from16 v7, v23

    :goto_25
    :try_start_3
    move-object/from16 v0, v19

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_42

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1061
    aget-wide v21, v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    move/from16 v3, v17

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;JI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v17

    or-int v17, v17, v5

    .line 1062
    :try_start_4
    iget v5, v4, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->Dg:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_3c

    .line 1063
    iget-wide v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v4, v11

    move-object/from16 v23, v10

    move-wide v10, v4

    move v4, v7

    move-object/from16 v5, v23

    move-wide/from16 v24, v13

    move-wide/from16 v12, v24

    move-wide/from16 v26, v15

    move-wide/from16 v14, v26

    .line 1059
    :goto_26
    add-int/lit8 v7, v18, 0x1

    move/from16 v18, v7

    move v7, v4

    move-object/from16 v23, v5

    move/from16 v5, v17

    move-wide/from16 v24, v10

    move-object/from16 v10, v23

    move-wide/from16 v26, v12

    move-wide/from16 v11, v24

    move-wide/from16 v28, v14

    move-wide/from16 v15, v28

    move-wide/from16 v13, v26

    goto :goto_25

    .line 1064
    :cond_3c
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v21, 0x190

    move/from16 v0, v21

    if-lt v5, v0, :cond_41

    .line 1066
    iget-wide v0, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v21, v0

    add-long v15, v15, v21

    .line 1068
    if-eqz v10, :cond_3d

    .line 1069
    new-instance v5, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v5}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1070
    iget-object v0, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1071
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v4, v5

    move-object v5, v10

    .line 1086
    :goto_27
    const/4 v10, 0x1

    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/settings/applications/RunningState$MergedItem;->e(Landroid/content/Context;Z)Z

    .line 1087
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/RunningState$MergedItem;->S(Landroid/content/Context;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1088
    add-int/lit8 v4, v7, 0x1

    move-wide/from16 v23, v11

    move-wide/from16 v10, v23

    move-wide/from16 v25, v13

    move-wide/from16 v12, v25

    move-wide/from16 v27, v15

    move-wide/from16 v14, v27

    .line 1089
    goto :goto_26

    .line 1073
    :cond_3d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v5, v4, :cond_40

    .line 1075
    :cond_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1076
    const/4 v10, 0x0

    :goto_28
    if-ge v10, v7, :cond_3f

    .line 1077
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 1079
    :cond_3f
    new-instance v10, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v10}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    iput-object v10, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1080
    iget-object v0, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1081
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v4, v10

    goto :goto_27

    .line 1083
    :cond_40
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v5, v10

    goto :goto_27

    .line 1089
    :cond_41
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v21, 0xc8

    move/from16 v0, v21

    if-gt v5, v0, :cond_48

    .line 1091
    iget-wide v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    add-long/2addr v4, v13

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    move-wide/from16 v10, v24

    move-wide v12, v4

    move-object/from16 v5, v23

    move v4, v7

    move-wide/from16 v26, v15

    move-wide/from16 v14, v26

    goto/16 :goto_26

    :cond_42
    move-object v4, v10

    move v10, v5

    .line 1097
    :goto_29
    if-nez v4, :cond_47

    .line 1099
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_47

    .line 1100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1101
    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v9, :cond_43

    .line 1102
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1094
    :catch_0
    move-exception v4

    :goto_2b
    move-object v4, v10

    move v10, v7

    goto :goto_29

    :cond_43
    move-object v5, v4

    .line 1107
    :goto_2c
    const/4 v4, 0x0

    move v7, v4

    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Di:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_44

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->Di:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/RunningState$MergedItem;->S(Landroid/content/Context;)Z

    .line 1107
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2d

    .line 1111
    :cond_44
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1112
    :try_start_9
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings/applications/RunningState;->Dk:I

    .line 1113
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/RunningState;->Dm:I

    .line 1114
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings/applications/RunningState;->Do:I

    .line 1115
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/RunningState;->Dl:J

    .line 1116
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settings/applications/RunningState;->Dn:J

    .line 1117
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings/applications/RunningState;->Dp:J

    .line 1118
    if-eqz v5, :cond_46

    .line 1119
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/applications/RunningState;->Dh:Z

    if-eqz v4, :cond_46

    .line 1121
    const/4 v4, 0x1

    .line 1124
    :goto_2e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v5, :cond_45

    .line 1125
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1128
    :cond_45
    monitor-exit v7

    .line 1130
    return v4

    .line 1128
    :catchall_1
    move-exception v4

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 1094
    :catch_1
    move-exception v4

    move-object v10, v5

    move/from16 v7, v17

    goto :goto_2b

    :catch_2
    move-exception v4

    move v7, v5

    goto :goto_2b

    :catch_3
    move-exception v4

    move/from16 v7, v17

    goto :goto_2b

    :cond_46
    move v4, v10

    goto :goto_2e

    :cond_47
    move-object v5, v4

    goto :goto_2c

    :cond_48
    move v4, v7

    move-object v5, v10

    move-wide/from16 v23, v11

    move-wide/from16 v10, v23

    move-wide/from16 v25, v13

    move-wide/from16 v12, v25

    move-wide/from16 v27, v15

    move-wide/from16 v14, v27

    goto/16 :goto_26

    :cond_49
    move v4, v5

    goto/16 :goto_14

    :cond_4a
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_12

    :cond_4b
    move-object v8, v5

    goto/16 :goto_a

    :cond_4c
    move v5, v8

    goto/16 :goto_8

    :cond_4d
    move v4, v5

    move v5, v6

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->CY:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 644
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->CZ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 645
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Db:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dc:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 647
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 648
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->De:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 649
    return-void
.end method


# virtual methods
.method Q(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1140
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->Dh:Z

    .line 1142
    monitor-exit v1

    .line 1143
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 582
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->CW:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 583
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->CX:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->CV:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 585
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    monitor-exit v1

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method iA()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dj:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ix()V
    .locals 3

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Dr:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 600
    monitor-exit v1

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method iy()V
    .locals 4

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 613
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0

    .line 617
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method iz()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->Di:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->CW:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 624
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    monitor-exit v1

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
