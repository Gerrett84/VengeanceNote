.class Lcom/android/settings/ah;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/d;


# instance fields
.field final synthetic fz:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aA()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    .line 1300
    return-void
.end method

.method public aw()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->l(Lcom/android/settings/DataUsageSummary;)V

    .line 1280
    return-void
.end method

.method public ax()V
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->gx()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;J)V

    .line 1285
    return-void
.end method

.method public ay()V
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->gy()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    .line 1290
    return-void
.end method

.method public az()V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/settings/ah;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    .line 1295
    return-void
.end method
