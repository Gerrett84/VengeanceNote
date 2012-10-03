.class Lcom/android/settings/bc;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic fw:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/settings/bc;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1081
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1082
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/P;

    .line 1085
    iget-object v1, p0, Lcom/android/settings/bc;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->i(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/h;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bc;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->i(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/h;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/P;->dv:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/a/h;->f(IZ)Lcom/android/settings/a/c;

    move-result-object v1

    .line 1088
    iget-object v2, p0, Lcom/android/settings/bc;->fw:Lcom/android/settings/DataUsageSummary;

    iget-object v1, v1, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/P;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
