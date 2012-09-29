.class Lcom/android/settings/ab;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic fz:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private au()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/al;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1245
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->t(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1246
    return-void

    :cond_0
    move v0, v1

    .line 1244
    goto :goto_0

    .line 1245
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->q(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getAppsWithPolicy(I)[I

    move-result-object v0

    .line 1233
    iget-object v1, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/al;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/settings/al;->a(Landroid/net/NetworkStats;[I)V

    .line 1234
    invoke-direct {p0}, Lcom/android/settings/ab;->au()V

    .line 1235
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1226
    new-instance v0, Lcom/android/settings/a/e;

    iget-object v1, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->m(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/a/e;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1223
    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ab;->a(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/settings/ab;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/al;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/al;->a(Landroid/net/NetworkStats;[I)V

    .line 1240
    invoke-direct {p0}, Lcom/android/settings/ab;->au()V

    .line 1241
    return-void
.end method
