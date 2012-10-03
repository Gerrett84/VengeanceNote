.class public Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;
.super Landroid/app/DialogFragment;
.source "DevelopmentSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static b(Lcom/android/settings/DevelopmentSettings;)V
    .locals 3
    .parameter

    .prologue
    .line 1062
    new-instance v0, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;-><init>()V

    .line 1063
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_enforce"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1065
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1071
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1072
    const v2, 0x7f0b0480

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1073
    const v2, 0x7f0b0481

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1075
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/aK;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/aK;-><init>(Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1082
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/settings/aJ;

    invoke-direct {v2, p0}, Lcom/android/settings/aJ;-><init>(Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1089
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
