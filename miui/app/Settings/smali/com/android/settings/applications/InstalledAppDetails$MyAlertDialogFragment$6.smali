.class Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic OZ:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->OZ:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 917
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->OZ:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->lR()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;->OZ:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->lR()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 920
    return-void
.end method
