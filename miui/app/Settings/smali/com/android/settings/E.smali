.class Lcom/android/settings/E;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bB:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/android/settings/E;->bB:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/settings/E;->bB:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2028
    if-eqz v0, :cond_0

    .line 2029
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->c(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2031
    :cond_0
    return-void
.end method
