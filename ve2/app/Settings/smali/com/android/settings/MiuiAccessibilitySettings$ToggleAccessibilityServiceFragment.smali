.class public Lcom/android/settings/MiuiAccessibilitySettings$ToggleAccessibilityServiceFragment;
.super Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;
.source "MiuiAccessibilitySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;-><init>(Lcom/android/settings/G;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleAccessibilityServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->f(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 615
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 617
    if-eqz p2, :cond_0

    .line 620
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 638
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 643
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 624
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiAccessibilitySettings;->au()Ljava/util/Set;

    move-result-object v6

    .line 625
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 626
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 627
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    .line 631
    :cond_1
    if-gt v1, v3, :cond_2

    if-ne v1, v3, :cond_3

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v3

    .line 634
    :goto_4
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 631
    goto :goto_4

    .line 646
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 647
    if-lez v0, :cond_5

    .line 648
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 650
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleAccessibilityServiceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enabled_accessibility_services"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleAccessibilityServiceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_enabled"

    if-eqz v1, :cond_6

    :goto_5
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    return-void

    :cond_6
    move v3, v2

    .line 655
    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .prologue
    .line 608
    invoke-super {p0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
