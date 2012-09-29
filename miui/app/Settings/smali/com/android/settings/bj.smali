.class Lcom/android/settings/bj;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fz:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/settings/bj;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/settings/bj;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1042
    :goto_0
    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/android/settings/bj;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    .line 1049
    :goto_1
    return-void

    .line 1041
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bj;->fz:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_1
.end method
