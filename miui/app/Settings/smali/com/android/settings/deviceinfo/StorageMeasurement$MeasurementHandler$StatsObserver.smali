.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# instance fields
.field private ea:J

.field private final eb:Ljava/util/List;

.field final synthetic ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 319
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/StorageMeasurement$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public ae()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 328
    :cond_0
    if-eqz p2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->NX:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->b(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    .line 343
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->eb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    monitor-exit v1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 331
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_4

    .line 332
    :cond_3
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    goto :goto_1

    .line 336
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    goto :goto_1

    .line 346
    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->NX:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ea:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->ec:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->b(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    goto :goto_0
.end method
