.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# instance fields
.field final synthetic CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 818
    .line 819
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    monitor-enter v2

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->GZ:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 822
    if-eqz v0, :cond_2

    .line 823
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 824
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hQ:Z

    .line 825
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hR:J

    .line 826
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v3, v5

    .line 828
    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v7, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v5, v7

    iget-wide v7, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v5, v7

    .line 830
    add-long v7, v3, v5

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v9, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 832
    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v9, v9, v5

    if-nez v9, :cond_0

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 839
    :cond_0
    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 840
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 841
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 842
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 843
    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 844
    iput-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 845
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    .line 846
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hN:Ljava/lang/String;

    .line 847
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    .line 848
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hJ:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hO:Ljava/lang/String;

    .line 849
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings/applications/ApplicationsState;->b(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hK:J

    .line 850
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hK:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hP:Ljava/lang/String;

    .line 853
    const/4 v1, 0x1

    .line 855
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    if-eqz v1, :cond_2

    .line 857
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x4

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Hg:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->CJ:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 868
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 869
    return-void

    .line 855
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 868
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
