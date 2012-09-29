.class public Lcom/android/settings/fuelgauge/BatterySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private oc:Landroid/preference/ListPreference;

.field private od:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    .line 36
    const-string v0, "battery_indicator_style"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    .line 37
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    const-string v0, "power_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    .line 39
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    .line 44
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "battery_indicator_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_1
    const-string v1, "power_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    check-cast p2, Ljava/lang/String;

    .line 85
    const-string v0, "persist.sys.aries.power_profile"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    const-string v0, "power_usage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_indicator_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->oc:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "persist.sys.aries.power_profile"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->od:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method
