.class Lcom/android/settings/wifi/G;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final yX:Landroid/view/View;

.field final synthetic yY:Lcom/android/settings/wifi/N;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/N;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/wifi/G;->yY:Lcom/android/settings/wifi/N;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/settings/wifi/G;->yX:Landroid/view/View;

    .line 188
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/G;->yY:Lcom/android/settings/wifi/N;

    invoke-static {v0}, Lcom/android/settings/wifi/N;->a(Lcom/android/settings/wifi/N;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/G;->yX:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/G;->yY:Lcom/android/settings/wifi/N;

    invoke-static {v0}, Lcom/android/settings/wifi/N;->b(Lcom/android/settings/wifi/N;)Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->aQ(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "SetupWizard"

    const-string v1, "Failed to show software keyboard "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
