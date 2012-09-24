.class public Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# instance fields
.field private MT:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2042
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 2042
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->MT:Z

    return v0
.end method

.method public static e(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2053
    :goto_0
    return-void

    .line 2049
    :cond_0
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 2050
    iput-boolean p1, v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->MT:Z

    .line 2051
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2052
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 2057
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2058
    if-eqz p1, :cond_0

    .line 2059
    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->MT:Z

    .line 2062
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2063
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->MT:Z

    if-nez v0, :cond_1

    .line 2064
    const v0, 0x7f0b0601

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2065
    const v0, 0x7f0b0602

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2071
    :goto_0
    const v0, 0x104000a

    new-instance v2, Lcom/android/settings/bp;

    invoke-direct {v2, p0}, Lcom/android/settings/bp;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2077
    const/high16 v0, 0x104

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2079
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2067
    :cond_1
    const v0, 0x7f0b05ff

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2068
    const v0, 0x7f0b0600

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2084
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2085
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->MT:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2086
    return-void
.end method
