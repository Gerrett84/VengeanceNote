.class public Lcom/android/settings/a/b;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# instance fields
.field private final dk:Landroid/net/INetworkStatsService;

.field private final mArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p2, p0, Lcom/android/settings/a/b;->dk:Landroid/net/INetworkStatsService;

    .line 59
    iput-object p3, p0, Lcom/android/settings/a/b;->mArgs:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method private a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/a/b;->dk:Landroid/net/INetworkStatsService;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 130
    if-eqz p4, :cond_0

    .line 131
    invoke-virtual {p4, v0}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 134
    :goto_0
    return-object p4

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method

.method public static a(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings/a/b;->a(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    const-string v1, "uids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 52
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-object v0
.end method

.method private b(Landroid/net/NetworkTemplate;[II)Lcom/android/settings/a/e;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 85
    new-instance v2, Lcom/android/settings/a/e;

    invoke-direct {v2}, Lcom/android/settings/a/e;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/a/b;->dk:Landroid/net/INetworkStatsService;

    invoke-interface {v0, p1, p3}, Landroid/net/INetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/e;->As:Landroid/net/NetworkStatsHistory;

    .line 88
    if-eqz p2, :cond_1

    .line 89
    iput-object v3, v2, Lcom/android/settings/a/e;->Au:Landroid/net/NetworkStatsHistory;

    .line 90
    iput-object v3, v2, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    .line 93
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p2, v0

    .line 94
    iget-object v5, v2, Lcom/android/settings/a/e;->Au:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v1, v5}, Lcom/android/settings/a/b;->a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/a/e;->Au:Landroid/net/NetworkStatsHistory;

    .line 96
    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/settings/a/b;->a(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v0, v2, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    .line 101
    iget-object v0, v2, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/settings/a/e;->Au:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 102
    iget-object v0, v2, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    iget-object v1, v2, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 105
    :cond_1
    return-object v2
.end method


# virtual methods
.method public W()Lcom/android/settings/a/e;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/a/b;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 71
    iget-object v1, p0, Lcom/android/settings/a/b;->mArgs:Landroid/os/Bundle;

    const-string v2, "uids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/settings/a/b;->mArgs:Landroid/os/Bundle;

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/a/b;->b(Landroid/net/NetworkTemplate;[II)Lcom/android/settings/a/e;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network stats"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/a/b;->W()Lcom/android/settings/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/a/b;->cancelLoad()Z

    .line 118
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/a/b;->forceLoad()V

    .line 66
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/a/b;->cancelLoad()Z

    .line 112
    return-void
.end method
