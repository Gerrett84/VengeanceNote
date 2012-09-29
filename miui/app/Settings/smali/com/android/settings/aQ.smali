.class Lcom/android/settings/aQ;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic pm:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/aQ;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static {}, Lcom/android/settings/cu;->jh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aQ;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->a(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/aQ;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->a(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/settings/aQ;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->b(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/settings/aQ;->pm:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->c(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0
.end method
