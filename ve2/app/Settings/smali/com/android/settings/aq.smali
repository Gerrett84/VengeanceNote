.class Lcom/android/settings/aq;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gy:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/settings/aq;->gy:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/settings/aq;->gy:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1965
    if-eqz v0, :cond_0

    .line 1966
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 1968
    :cond_0
    return-void
.end method
