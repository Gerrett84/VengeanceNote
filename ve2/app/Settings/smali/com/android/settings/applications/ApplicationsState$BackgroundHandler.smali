.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final Fm:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic hu:Lcom/android/settings/applications/ApplicationsState;

.field mRunning:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    .line 773
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 718
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fm:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 774
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v0, 0x0

    .line 779
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->hz()V

    .line 781
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 882
    :goto_0
    :pswitch_0
    return-void

    .line 786
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v1, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v3

    move v2, v0

    move v1, v0

    .line 788
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    if-ge v1, v6, :cond_2

    .line 789
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 791
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 793
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dk:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 796
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 797
    add-int/lit8 v1, v1, 0x1

    .line 798
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    :cond_1
    move v0, v1

    .line 788
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 802
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    if-lt v1, v6, :cond_3

    .line 805
    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 807
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 812
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v1, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v3

    move v2, v0

    move v1, v0

    .line 814
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-ge v1, v8, :cond_7

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 816
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gP:Z

    if-nez v4, :cond_12

    .line 817
    :cond_4
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 818
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 819
    iget-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v4, :cond_5

    .line 820
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 821
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 823
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 825
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 827
    :cond_6
    monitor-exit v0

    move v0, v1

    .line 814
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 827
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 831
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_7
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 832
    if-lez v1, :cond_8

    .line 833
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 834
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 837
    :cond_8
    if-lt v1, v8, :cond_9

    .line 838
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 840
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 844
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v1, Lcom/android/settings/applications/ApplicationsState;->Di:Ljava/util/HashMap;

    monitor-enter v2

    .line 846
    :try_start_6
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 848
    monitor-exit v2

    goto/16 :goto_0

    .line 879
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 851
    :cond_a
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v1, v0

    .line 852
    :goto_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 853
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 854
    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gU:Z

    if-eqz v5, :cond_f

    .line 855
    :cond_b
    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gV:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_c

    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gV:J

    const-wide/16 v7, 0x4e20

    sub-long v7, v3, v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_e

    .line 857
    :cond_c
    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v1, :cond_d

    .line 858
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 859
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 861
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 863
    :cond_d
    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gV:J

    .line 864
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->bd:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Dm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fm:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 868
    :cond_e
    monitor-exit v2

    goto/16 :goto_0

    .line 852
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 871
    :cond_10
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 872
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 874
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hu:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Dt:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 879
    :cond_11
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_3

    .line 781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
