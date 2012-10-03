.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# instance fields
.field private ns:Landroid/preference/CheckBoxPreference;

.field private nt:Landroid/widget/Switch;

.field private nu:Lcom/android/settings/dO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string v0, "activate_on_dock"

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->ns:Landroid/preference/CheckBoxPreference;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 68
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->nt:Landroid/widget/Switch;

    .line 70
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 71
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 75
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->nt:Landroid/widget/Switch;

    invoke-virtual {v2, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 78
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 80
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->nt:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 84
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0b0290

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 87
    :cond_0
    new-instance v0, Lcom/android/settings/dO;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->nt:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dO;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->nu:Lcom/android/settings/dO;

    .line 88
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->nu:Lcom/android/settings/dO;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->nu:Lcom/android/settings/dO;

    invoke-virtual {v0}, Lcom/android/settings/dO;->pause()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 148
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->ns:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_activate_on_dock"

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->ns:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->nu:Lcom/android/settings/dO;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->nu:Lcom/android/settings/dO;

    invoke-virtual {v1}, Lcom/android/settings/dO;->resume()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_activate_on_dock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->ns:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
