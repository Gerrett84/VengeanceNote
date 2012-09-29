.class Lcom/android/settings/ac;
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
    .line 1192
    iput-object p1, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/settings/a/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, p2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/g;)Lcom/android/settings/a/g;

    .line 1201
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/g;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/a/g;->Et:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1202
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/g;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/a/g;->Eu:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->o(Lcom/android/settings/DataUsageSummary;)V

    .line 1209
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/a/g;->Eu:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->p(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1212
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1195
    new-instance v0, Lcom/android/settings/a/b;

    iget-object v1, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->m(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/a/b;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1192
    check-cast p2, Lcom/android/settings/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ac;->a(Landroid/content/Loader;Lcom/android/settings/a/g;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1216
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/g;)Lcom/android/settings/a/g;

    .line 1217
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1218
    iget-object v0, p0, Lcom/android/settings/ac;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1219
    return-void
.end method
