.class Lcom/android/settings/bk;
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
    .line 1052
    iput-object p1, p0, Lcom/android/settings/bk;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1055
    iget-object v0, p0, Lcom/android/settings/bk;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1057
    :goto_0
    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/settings/bk;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    .line 1065
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1055
    goto :goto_0

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bk;->fz:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->c(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
