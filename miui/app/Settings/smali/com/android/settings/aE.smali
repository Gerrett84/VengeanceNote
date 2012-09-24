.class Lcom/android/settings/aE;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nl:J

.field final synthetic nm:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/settings/aE;->nm:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settings/aE;->nl:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/settings/aE;->nm:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1678
    if-eqz v0, :cond_0

    .line 1679
    iget-wide v1, p0, Lcom/android/settings/aE;->nl:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;J)V

    .line 1681
    :cond_0
    return-void
.end method
