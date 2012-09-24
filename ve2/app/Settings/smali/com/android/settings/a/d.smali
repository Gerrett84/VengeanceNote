.class public Lcom/android/settings/a/d;
.super Landroid/content/AsyncTaskLoader;
.source "SummaryForAllUidLoader.java"


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
    .line 45
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/a/d;->dk:Landroid/net/INetworkStatsService;

    .line 47
    iput-object p3, p0, Lcom/android/settings/a/d;->mArgs:Landroid/os/Bundle;

    .line 48
    return-void
.end method

.method public static a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    const-string v1, "start"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    const-string v1, "end"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public fQ()Landroid/net/NetworkStats;
    .locals 7

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/a/d;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 59
    iget-object v0, p0, Lcom/android/settings/a/d;->mArgs:Landroid/os/Bundle;

    const-string v2, "start"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 60
    iget-object v0, p0, Lcom/android/settings/a/d;->mArgs:Landroid/os/Bundle;

    const-string v4, "end"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/d;->dk:Landroid/net/INetworkStatsService;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/a/d;->fQ()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/a/d;->cancelLoad()Z

    .line 79
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/a/d;->forceLoad()V

    .line 54
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/a/d;->cancelLoad()Z

    .line 73
    return-void
.end method
