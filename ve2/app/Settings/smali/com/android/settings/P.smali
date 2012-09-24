.class Lcom/android/settings/P;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic eC:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/settings/P;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1082
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aD;

    .line 1083
    instance-of v1, v0, Lcom/android/settings/cA;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/settings/P;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings/P;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->q(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1103
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/settings/P;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings/aD;->start:J

    iget-wide v4, v0, Lcom/android/settings/aD;->nX:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView;->d(JJ)V

    .line 1101
    iget-object v0, p0, Lcom/android/settings/P;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->r(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    return-void
.end method
