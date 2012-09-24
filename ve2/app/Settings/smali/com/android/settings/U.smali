.class Lcom/android/settings/U;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/d;


# instance fields
.field final synthetic eC:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aA()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    .line 1270
    return-void
.end method

.method public aw()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)V

    .line 1250
    return-void
.end method

.method public ax()V
    .locals 3

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->eR()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;J)V

    .line 1255
    return-void
.end method

.method public ay()V
    .locals 3

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->eS()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    .line 1260
    return-void
.end method

.method public az()V
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/settings/U;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    .line 1265
    return-void
.end method
