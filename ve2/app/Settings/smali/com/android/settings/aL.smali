.class Lcom/android/settings/aL;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic eC:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/settings/aL;->eC:Lcom/android/settings/DataUsageSummary;

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
    .line 1072
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1073
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bC;

    .line 1074
    iget-object v1, p0, Lcom/android/settings/aL;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->p(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/f;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/bC;->vE:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/a/f;->d(IZ)Lcom/android/settings/a/c;

    move-result-object v1

    .line 1075
    iget-object v2, p0, Lcom/android/settings/aL;->eC:Lcom/android/settings/DataUsageSummary;

    iget-object v0, v0, Lcom/android/settings/bC;->vE:[I

    iget-object v1, v1, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->a(Lcom/android/settings/DataUsageSummary;[ILjava/lang/CharSequence;)V

    .line 1076
    return-void
.end method
