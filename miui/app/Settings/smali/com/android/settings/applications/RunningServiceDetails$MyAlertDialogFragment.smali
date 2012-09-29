.class public Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "RunningServiceDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 493
    new-instance v0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;-><init>()V

    .line 494
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 495
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    const-string v2, "comp"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 498
    return-object v0
.end method


# virtual methods
.method hZ()Lcom/android/settings/applications/RunningServiceDetails;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "comp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->hZ()Lcom/android/settings/applications/RunningServiceDetails;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 516
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b041f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0420

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b03db

    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b03dc

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
