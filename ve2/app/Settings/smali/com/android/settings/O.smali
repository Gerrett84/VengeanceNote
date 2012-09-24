.class Lcom/android/settings/O;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic eC:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/settings/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, p2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/e;)Lcom/android/settings/a/e;

    .line 1178
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/e;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/a/e;->As:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/e;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1183
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->t(Lcom/android/settings/DataUsageSummary;)V

    .line 1186
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->d(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1189
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1172
    new-instance v0, Lcom/android/settings/a/b;

    iget-object v1, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/a/b;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1169
    check-cast p2, Lcom/android/settings/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/O;->a(Landroid/content/Loader;Lcom/android/settings/a/e;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1193
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/e;)Lcom/android/settings/a/e;

    .line 1194
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 1195
    iget-object v0, p0, Lcom/android/settings/O;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 1196
    return-void
.end method
