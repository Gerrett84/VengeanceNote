.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# static fields
.field static final CZ:Ljava/util/regex/Pattern;

.field public static final Da:Ljava/util/Comparator;

.field public static final Db:Ljava/util/Comparator;

.field public static final Dc:Ljava/util/Comparator;

.field public static final Dd:Ljava/util/Comparator;

.field public static final De:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final Df:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static Du:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field Dg:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field Dh:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field final Di:Ljava/util/HashMap;

.field final Dj:Ljava/util/ArrayList;

.field Dk:Ljava/util/List;

.field Dl:J

.field Dm:Ljava/lang/String;

.field final Dn:Ljava/lang/Object;

.field Do:Z

.field Dp:Z

.field Dq:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field Dr:Ljava/util/Comparator;

.field Ds:Ljava/util/ArrayList;

.field final Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field final Dv:Landroid/os/HandlerThread;

.field final Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final bd:Landroid/content/pm/PackageManager;

.field final mContext:Landroid/content/Context;

.field mResumed:Z

.field final zn:Lcom/android/settings/applications/InterestingConfigChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->CZ:Ljava/util/regex/Pattern;

    .line 156
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Da:Ljava/util/Comparator;

    .line 167
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Db:Ljava/util/Comparator;

    .line 178
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Dc:Ljava/util/Comparator;

    .line 189
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Dd:Ljava/util/Comparator;

    .line 200
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->De:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 215
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Df:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v1, 0x1

    .line 368
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->zn:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    .line 242
    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dl:J

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    .line 352
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    .line 369
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    .line 371
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dv:Landroid/os/HandlerThread;

    .line 373
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dv:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dv:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    .line 390
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 690
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .locals 2
    .parameter

    .prologue
    .line 360
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Du:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Du:Lcom/android/settings/applications/ApplicationsState;

    .line 364
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Du:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->s(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter

    .prologue
    .line 694
    if-eqz p1, :cond_0

    .line 695
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 698
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->CZ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 702
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method U(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter

    .prologue
    .line 553
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v3

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 555
    if-nez v0, :cond_0

    .line 556
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 558
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 565
    :cond_0
    monitor-exit v3

    return-object v0

    .line 556
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method V(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 582
    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fm:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 586
    :cond_0
    monitor-exit v1

    .line 587
    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method W(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 608
    :goto_1
    return v0

    .line 603
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method X(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1

    .line 647
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->W(Ljava/lang/String;)I

    move-result v2

    .line 649
    if-ltz v2, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 652
    if-eqz v0, :cond_0

    .line 653
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 662
    :cond_1
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method Y(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->X(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->Do:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dp:Z

    .line 462
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->Dq:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 463
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState;->Dr:Ljava/util/Comparator;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ds:Ljava/util/ArrayList;

    .line 465
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 470
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 474
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 483
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dp:Z

    .line 485
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ds:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 478
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter

    .prologue
    .line 570
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    monitor-enter p1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 575
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v3

    .line 401
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->Dh:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 403
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dg:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dg:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dg:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->io()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    .line 410
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->zn:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InterestingConfigChanges;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 425
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 429
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_4

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    .line 431
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 432
    add-int/lit8 v0, v2, -0x1

    .line 425
    :goto_1
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 420
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gU:Z

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 435
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 436
    if-eqz v1, :cond_5

    .line 437
    iput-object v0, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    :cond_5
    move v0, v2

    goto :goto_1

    .line 440
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 442
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 445
    :cond_7
    monitor-exit v3

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addPackage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :try_start_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    .line 621
    monitor-exit v1

    .line 642
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->W(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 626
    monitor-exit v1

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 640
    :catch_0
    move-exception v0

    goto :goto_0

    .line 628
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2200

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 631
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dw:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 639
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 673
    if-nez v0, :cond_1

    .line 675
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->Dl:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->Dl:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 676
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 678
    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 679
    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method hA()J
    .locals 9

    .prologue
    .line 590
    const-wide/16 v1, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v4

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v2, v5

    .line 594
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 598
    :cond_0
    monitor-exit v4

    .line 599
    return-wide v2

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hz()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->Do:Z

    if-nez v2, :cond_0

    .line 494
    monitor-exit v1

    .line 549
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Dq:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 498
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Dr:Ljava/util/Comparator;

    .line 499
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->Do:Z

    .line 500
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->Dq:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 501
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->Dr:Ljava/util/Comparator;

    .line 502
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 506
    if-eqz v2, :cond_1

    .line 507
    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1

    .line 512
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 513
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 517
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 518
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 519
    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 520
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v6

    .line 522
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 523
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->l(Landroid/content/Context;)V

    .line 525
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 517
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 513
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 527
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 531
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_6
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->Do:Z

    if-nez v0, :cond_5

    .line 535
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dp:Z

    if-nez v0, :cond_6

    .line 536
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->Ds:Ljava/util/ArrayList;

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dn:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 546
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 548
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 539
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 542
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 546
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method pause()V
    .locals 2

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v1

    .line 451
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Dh:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 454
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
