.class Lcom/android/settings/aI;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/cB;


# instance fields
.field final synthetic pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/S;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 852
    if-eqz p2, :cond_1

    .line 853
    iget-object v2, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->a(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    invoke-virtual {p1, v1}, Lcom/android/settings/S;->n(Z)V

    .line 855
    iget-object v2, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 856
    iget-object v1, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    .line 869
    :goto_0
    return v0

    .line 859
    :cond_0
    iget-object v2, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->b(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->c(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 869
    goto :goto_0

    .line 861
    :cond_1
    iget-object v2, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->c(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 862
    invoke-virtual {p1, v0}, Lcom/android/settings/S;->n(Z)V

    .line 863
    iget-object v1, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    iget-object v1, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/aI;->pw:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->b(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->c(Ljava/lang/String;Z)V

    goto :goto_1
.end method
