.class public Lcom/android/settings/MiuiAccessibilitySettings$ToggleTouchExplorationFragment;
.super Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;
.source "MiuiAccessibilitySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;-><init>(Lcom/android/settings/G;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleTouchExplorationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    if-eqz p2, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 667
    const-string v3, "key_accessibility_tutorial_launched_once"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 669
    :cond_0
    if-eqz v2, :cond_1

    .line 670
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_accessibility_tutorial_launched_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_TUTORIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 676
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 663
    goto :goto_0
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .prologue
    .line 660
    invoke-super {p0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
