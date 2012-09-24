.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# instance fields
.field final synthetic zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

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

    .line 720
    .line 721
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v2

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 724
    if-eqz v0, :cond_2

    .line 725
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 726
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gU:Z

    .line 727
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gV:J

    .line 728
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v3, v5

    .line 730
    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v7, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v5, v7

    iget-wide v7, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v5, v7

    .line 732
    add-long v7, v3, v5

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v9, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 734
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

    if-eqz v9, :cond_1

    .line 740
    :cond_0
    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 741
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 742
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 743
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v7, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 744
    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 745
    iput-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 746
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gR:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gN:J

    .line 748
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gN:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gS:Ljava/lang/String;

    .line 749
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings/applications/ApplicationsState;->b(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gO:J

    .line 750
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gO:J

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gT:Ljava/lang/String;

    .line 753
    const/4 v1, 0x1

    .line 755
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    if-eqz v1, :cond_2

    .line 757
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x4

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->zb:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 768
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 769
    return-void

    .line 755
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 768
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
