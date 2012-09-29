.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final IU:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic iJ:Lcom/android/settings/applications/ApplicationsState;

.field mRunning:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    .line 873
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 816
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->IU:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 874
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

    const/4 v2, 0x0

    .line 879
    const/4 v0, 0x0

    .line 880
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v1

    .line 881
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->Hc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->Hc:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 883
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->Hc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v3, v0

    .line 885
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    if-eqz v3, :cond_0

    move v1, v2

    .line 887
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 888
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->fc()V

    .line 887
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 885
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 892
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 993
    :goto_2
    :pswitch_0
    return-void

    .line 897
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v3

    move v1, v2

    .line 899
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    if-ge v1, v6, :cond_3

    .line 900
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_1

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 902
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 904
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 907
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 908
    add-int/lit8 v1, v1, 0x1

    .line 909
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    :cond_2
    move v0, v1

    .line 899
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    .line 913
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 915
    if-lt v1, v6, :cond_4

    .line 916
    invoke-virtual {p0, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 913
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 918
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 923
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v3

    move v1, v2

    .line 925
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->He:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-ge v1, v8, :cond_8

    .line 926
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->He:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 927
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hO:Z

    if-nez v4, :cond_13

    .line 928
    :cond_5
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 929
    :try_start_5
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->bh:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 930
    iget-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v4, :cond_6

    .line 931
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 932
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 934
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 938
    :cond_7
    monitor-exit v0

    move v0, v1

    .line 925
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    .line 938
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1

    .line 942
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_8
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 943
    if-lez v1, :cond_9

    .line 944
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 948
    :cond_9
    if-lt v1, v8, :cond_a

    .line 949
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 951
    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 955
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->Hd:Ljava/util/HashMap;

    monitor-enter v1

    .line 957
    :try_start_8
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hh:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 959
    monitor-exit v1

    goto/16 :goto_2

    .line 990
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 962
    :cond_b
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 963
    :goto_6
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->He:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 964
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->He:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 965
    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hT:Z

    if-eqz v5, :cond_10

    .line 966
    :cond_c
    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hU:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_d

    iget-wide v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hU:J

    const-wide/16 v7, 0x4e20

    sub-long v7, v3, v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_f

    .line 968
    :cond_d
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v2, :cond_e

    .line 969
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 970
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 972
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 974
    :cond_e
    iput-wide v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hU:J

    .line 975
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hP:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/settings/applications/ApplicationsState;->Hh:Ljava/lang/String;

    .line 976
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->bh:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->Hh:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->IU:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 979
    :cond_f
    monitor-exit v1

    goto/16 :goto_2

    .line 963
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 982
    :cond_11
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 983
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 985
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 987
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->iJ:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->Hk:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 990
    :cond_12
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_5

    :cond_14
    move-object v3, v0

    goto/16 :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
