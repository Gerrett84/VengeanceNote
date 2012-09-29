.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# static fields
.field static final LOGV:Z

.field public static final bP:Landroid/content/ComponentName;

.field private static bR:Ljava/util/Map;

.field private static bS:Lcom/android/settings/deviceinfo/StorageMeasurement;


# instance fields
.field private final bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private volatile bT:Ljava/lang/ref/WeakReference;

.field private bU:J

.field private bV:J

.field private bW:J

.field private bX:J

.field private bY:J

.field private bZ:[J

.field private final ca:Landroid/os/storage/StorageVolume;

.field private final cb:Z

.field private final cc:Z

.field cd:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 84
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bP:Landroid/content/ComponentName;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bR:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pK:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bZ:[J

    .line 114
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->ca:Landroid/os/storage/StorageVolume;

    .line 115
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cc:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cc:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cb:Z

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method private a(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 486
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 489
    :goto_0
    return-wide v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bW:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    if-nez p1, :cond_1

    .line 133
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bS:Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bS:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 137
    :cond_0
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bS:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 145
    :goto_0
    return-object v0

    .line 139
    :cond_1
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 144
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->bR:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, 0x1

    .line 498
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cd:Ljava/util/List;

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 501
    if-nez v9, :cond_0

    .line 524
    :goto_0
    return-void

    .line 502
    :cond_0
    array-length v10, v9

    .line 504
    const-wide/16 v4, 0x0

    .line 505
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_4

    .line 506
    aget-object v0, v9, v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 507
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pJ:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 510
    :cond_2
    aget-object v0, v9, v8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    aget-object v0, v9, v8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 512
    iget-object v11, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cd:Ljava/util/List;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    add-long v6, v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    move-wide v4, v6

    .line 514
    goto :goto_2

    :cond_3
    aget-object v0, v9, v8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v2

    .line 516
    iget-object v11, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cd:Ljava/util/List;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    add-long v6, v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    move-wide v4, v6

    goto :goto_2

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cd:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->t()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bU:J

    return-wide p1
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cc:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bV:J

    return-wide p1
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->ca:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bX:J

    return-wide p1
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->s()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    return-wide p1
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cb:Z

    return v0
.end method

.method static synthetic f(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bZ:[J

    return-object v0
.end method

.method private s()V
    .locals 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 173
    :goto_0
    if-nez v0, :cond_1

    .line 182
    :goto_1
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bU:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bV:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 181
    invoke-interface {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->a(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private t()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 186
    :goto_0
    if-nez v0, :cond_2

    .line 187
    sget-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "StorageMeasurement"

    const-string v1, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bU:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bV:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bW:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bX:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bZ:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 201
    invoke-interface {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->b(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    .line 153
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 159
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bT:Ljava/lang/ref/WeakReference;

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bQ:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method

.method u()J
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->bY:J

    return-wide v0
.end method

.method v()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cb:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->cc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
