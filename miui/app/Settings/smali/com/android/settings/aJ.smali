.class Lcom/android/settings/aJ;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic oa:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/settings/aJ;->oa:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/settings/aJ;->oa:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->a(Lcom/android/settings/DevelopmentSettings;)V

    .line 1086
    return-void
.end method
