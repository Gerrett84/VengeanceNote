.class Lcom/android/settings/bi;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic fw:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->d(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->e(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    const-string v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    if-eqz p2, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1034
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bi;->fw:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_1
.end method
