.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# instance fields
.field private Jn:Lcom/android/internal/app/IMediaContainerService;

.field private volatile Jo:Z

.field private Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

.field private final Jq:Ljava/lang/ref/WeakReference;

.field private final Jr:Landroid/content/ServiceConnection;

.field final synthetic Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private volatile mBound:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 243
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 219
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jo:Z

    .line 227
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jr:Landroid/content/ServiceConnection;

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jn:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private b(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 11
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    .line 385
    :goto_0
    if-nez v2, :cond_2

    .line 481
    :cond_0
    :goto_1
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->nV:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->e(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->nV:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v1, v1, v0

    iget-object v3, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->wW:[Ljava/lang/String;

    .line 393
    array-length v4, v3

    .line 394
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->f(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v1

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v0

    .line 395
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_4

    .line 396
    aget-object v5, v3, v1

    .line 397
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/StorageMeasurement;->f(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v6

    aget-wide v7, v6, v0

    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v9, p1, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v6, v0

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->f(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    .line 390
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->e(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 437
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v3, p1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->d(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 445
    :goto_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->e(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 446
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->e(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V

    .line 452
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 453
    if-eqz v3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->e(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->b(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 458
    :cond_7
    const/16 v0, 0x2200

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 465
    :goto_5
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 467
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/StorageMeasurement$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    .line 468
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 469
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 470
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 471
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 441
    :cond_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->d(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    goto :goto_4

    .line 462
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    .line 473
    :cond_a
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->b(Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 473
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 479
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->jh()V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->jh()V

    return-void
.end method

.method private jh()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 368
    return-void
.end method

.method private ji()V
    .locals 7

    .prologue
    .line 371
    new-instance v1, Landroid/os/StatFs;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->c(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->c(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 374
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 375
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 377
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long/2addr v4, v2

    invoke-static {v6, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->b(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 378
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long/2addr v0, v2

    invoke-static {v4, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->c(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 380
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->d(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    .line 381
    return-void

    .line 371
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/pm/PackageManager;)V
    .locals 5
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->Z()[Ljava/lang/String;

    move-result-object v1

    .line 313
    array-length v2, v1

    .line 314
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 315
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jp:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jo:Z

    if-eqz v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 257
    :cond_2
    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->ji()V

    .line 263
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_3

    .line 265
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 266
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jn:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 268
    :cond_3
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->w()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jr:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 276
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    .line 277
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->b(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_2
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v2, :cond_6

    .line 283
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 284
    :cond_4
    if-nez v0, :cond_5

    .line 285
    monitor-exit v1

    goto :goto_0

    .line 291
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 288
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 289
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jr:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 291
    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 295
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jo:Z

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Js:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    goto :goto_0

    .line 300
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->Jo:Z

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
