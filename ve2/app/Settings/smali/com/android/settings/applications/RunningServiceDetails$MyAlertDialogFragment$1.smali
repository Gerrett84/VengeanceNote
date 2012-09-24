.class Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bm:Landroid/content/ComponentName;

.field final synthetic Bn:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Bn:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Bm:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Bn:Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->gq()Lcom/android/settings/applications/RunningServiceDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Bm:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->af(Z)V

    .line 527
    :cond_0
    return-void
.end method
