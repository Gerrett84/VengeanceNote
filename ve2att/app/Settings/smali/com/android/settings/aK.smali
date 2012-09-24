.class Lcom/android/settings/aK;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nX:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/settings/aK;->nX:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    iput-object p2, p0, Lcom/android/settings/aK;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/settings/aK;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DevelopmentSettings;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1079
    iget-object v0, p0, Lcom/android/settings/aK;->nX:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->a(Lcom/android/settings/DevelopmentSettings;)V

    .line 1080
    return-void
.end method
