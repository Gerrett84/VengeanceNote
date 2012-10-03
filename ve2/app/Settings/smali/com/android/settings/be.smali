.class Lcom/android/settings/be;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fw:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/settings/be;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/settings/be;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/settings/be;->fw:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/be;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
