.class Lcom/android/settings/V;
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
    .line 1200
    iput-object p1, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aB()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v0, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/Y;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->v(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1220
    :goto_0
    iget-object v2, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->w(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    return-void

    :cond_0
    move v0, v1

    .line 1219
    goto :goto_0

    .line 1220
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/Y;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/Y;->a(Landroid/net/NetworkStats;)V

    .line 1209
    invoke-direct {p0}, Lcom/android/settings/V;->aB()V

    .line 1210
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1203
    new-instance v0, Lcom/android/settings/a/d;

    iget-object v1, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/a/d;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1200
    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/V;->a(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/settings/V;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->u(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/Y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/Y;->a(Landroid/net/NetworkStats;)V

    .line 1215
    invoke-direct {p0}, Lcom/android/settings/V;->aB()V

    .line 1216
    return-void
.end method
