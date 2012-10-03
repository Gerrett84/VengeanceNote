.class Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic OY:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->OY:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->OY:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->lQ()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->e(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 881
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->OY:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->lQ()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V

    .line 882
    return-void
.end method
