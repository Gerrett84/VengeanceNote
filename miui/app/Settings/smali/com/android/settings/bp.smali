.class Lcom/android/settings/bp;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic tH:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/android/settings/bp;->tH:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/settings/bp;->tH:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->a(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 2075
    return-void
.end method
