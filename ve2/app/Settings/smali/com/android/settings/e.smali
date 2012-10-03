.class Lcom/android/settings/e;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic as:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/android/settings/e;->as:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/settings/e;->as:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1929
    if-eqz v0, :cond_0

    .line 1930
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->d(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1932
    :cond_0
    return-void
.end method
