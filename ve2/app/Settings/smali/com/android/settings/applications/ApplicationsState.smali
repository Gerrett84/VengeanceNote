.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# static fields
.field static final GP:Ljava/util/regex/Pattern;

.field public static final GQ:Ljava/util/Comparator;

.field public static final GR:Ljava/util/Comparator;

.field public static final GS:Ljava/util/Comparator;

.field public static final GT:Ljava/util/Comparator;

.field public static final GU:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final GV:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static Hh:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final CX:Lcom/android/settings/applications/InterestingConfigChanges;

.field GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final GX:Ljava/util/ArrayList;

.field final GY:Ljava/util/ArrayList;

.field final GZ:Ljava/util/HashMap;

.field final Ha:Ljava/util/ArrayList;

.field Hb:Ljava/util/List;

.field Hc:J

.field Hd:Ljava/lang/String;

.field He:Z

.field final Hf:Ljava/util/ArrayList;

.field final Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field final Hi:Landroid/os/HandlerThread;

.field final Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final be:Landroid/content/pm/PackageManager;

.field final mContext:Landroid/content/Context;

.field mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GP:Ljava/util/regex/Pattern;

    .line 166
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GQ:Ljava/util/Comparator;

    .line 177
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GR:Ljava/util/Comparator;

    .line 188
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GS:Ljava/util/Comparator;

    .line 199
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GT:Ljava/util/Comparator;

    .line 210
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GU:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 225
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->GV:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 385
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

    .line 397
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GY:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->CX:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    .line 253
    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->Hc:J

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    .line 398
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 399
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->be:Landroid/content/pm/PackageManager;

    .line 400
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hi:Landroid/os/HandlerThread;

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 403
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Hi:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    .line 419
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter

    .prologue
    .line 785
    if-eqz p1, :cond_0

    .line 786
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 788
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
    .line 389
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Hh:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Hh:Lcom/android/settings/applications/ApplicationsState;

    .line 393
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Hh:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 394
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
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->x(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter

    .prologue
    .line 792
    if-eqz p1, :cond_0

    .line 793
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 796
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
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->GP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 800
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method Y(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter

    .prologue
    .line 651
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v3

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 653
    if-nez v0, :cond_0

    .line 654
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 656
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 663
    :cond_0
    monitor-exit v3

    return-object v0

    .line 654
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method Z(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 680
    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->be:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->IR:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 684
    :cond_0
    monitor-exit v1

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 3
    .parameter

    .prologue
    .line 578
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsState$Session;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 579
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    monitor-exit v1

    .line 582
    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter

    .prologue
    .line 668
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    monitor-enter p1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->be:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 673
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method aa(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 706
    :goto_1
    return v0

    .line 701
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method ab(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v1

    .line 745
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->aa(Ljava/lang/String;)I

    move-result v2

    .line 747
    if-ltz v2, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 750
    if-eqz v0, :cond_0

    .line 751
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 760
    :cond_1
    monitor-exit v1

    .line 761
    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ac(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->ab(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method addPackage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :try_start_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    .line 719
    monitor-exit v1

    .line 740
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->aa(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 724
    monitor-exit v1

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 738
    :catch_0
    move-exception v0

    goto :goto_0

    .line 726
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->be:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2200

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 729
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 737
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
    .line 769
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 771
    if-nez v0, :cond_1

    .line 773
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->Hc:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->Hc:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 774
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_0
    :goto_0
    return-object v0

    .line 776
    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 777
    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method jL()V
    .locals 4

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v2

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->He:Z

    if-nez v0, :cond_0

    .line 320
    monitor-exit v2

    .line 330
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    .line 325
    iget-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 329
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method jM()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 586
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v0, :cond_2

    .line 591
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->kC()V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->be:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    .line 597
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    if-nez v0, :cond_3

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->CX:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InterestingConfigChanges;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 604
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 605
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 612
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 613
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 616
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_7

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    .line 618
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hb:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 619
    add-int/lit8 v2, v2, -0x1

    .line 612
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 607
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hQ:Z

    .line 607
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 622
    :cond_7
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 623
    if-eqz v1, :cond_5

    .line 624
    iput-object v0, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 627
    :cond_8
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Hj:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method jN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GX:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-boolean v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 637
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 642
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 643
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->kD()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->GW:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method jO()J
    .locals 9

    .prologue
    .line 688
    const-wide/16 v1, 0x0

    .line 690
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v4

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ha:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v2, v5

    .line 692
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 696
    :cond_0
    monitor-exit v4

    .line 697
    return-wide v2

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
