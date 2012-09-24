.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private dG:Landroid/preference/CheckBoxPreference;

.field private dH:Landroid/preference/CheckBoxPreference;

.field private dI:Landroid/preference/CheckBoxPreference;

.field private dJ:Landroid/preference/CheckBoxPreference;

.field private dK:Landroid/content/ContentQueryMap;

.field private dL:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->af()V

    return-void
.end method

.method private aa()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 83
    :cond_0
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 86
    const-string v0, "location_network"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->dG:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v0, "location_gps"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->dH:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v0, "assisted_gps"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bq;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 92
    const-string v0, "location_use_for_services"

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 93
    const v0, 0x7f0b033d

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 94
    const v0, 0x7f0b033e

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bq;->D(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 99
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    iput-object v4, p0, Lcom/android/settings/LocationSettings;->dJ:Landroid/preference/CheckBoxPreference;

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dG:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0337

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 109
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method private af()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 160
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->dG:Landroid/preference/CheckBoxPreference;

    const-string v4, "network"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->dH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    const-string v4, "assisted_gps_enabled"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 168
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->aa()Landroid/preference/PreferenceScreen;

    .line 177
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dJ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 181
    if-nez p2, :cond_0

    move v0, v1

    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/bq;->c(Landroid/content/Context;Z)V

    .line 189
    :goto_1
    return v1

    .line 181
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dG:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->dG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dH:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->aa()Landroid/preference/PreferenceScreen;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->af()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dL:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/settings/x;

    invoke-direct {v0, p0}, Lcom/android/settings/x;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->dL:Ljava/util/Observer;

    .line 127
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dK:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->dL:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    invoke-direct {v1, v0, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/LocationSettings;->dK:Landroid/content/ContentQueryMap;

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dL:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->dK:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->dL:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 76
    :cond_0
    return-void
.end method
