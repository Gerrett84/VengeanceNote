.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private Fn:Lcom/android/settings/ce;

.field private Fo:Landroid/preference/CheckBoxPreference;

.field private Fp:Lcom/android/settings/nfc/a;

.field private Fq:Lcom/android/settings/ee;

.field private sn:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 204
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "toggle_airplane"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ce;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-static {p0}, Lcom/android/settings/bl;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected A()I
    .locals 1

    .prologue
    .line 256
    const v0, 0x7f0b065d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->Fo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/ce;->b(ZZ)V

    .line 252
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 103
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->Fo:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 106
    const-string v2, "toggle_nsd"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 108
    new-instance v5, Lcom/android/settings/nfc/a;

    invoke-direct {v5, v4, v0, v1}, Lcom/android/settings/nfc/a;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x6090008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 120
    if-nez v5, :cond_9

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 122
    const-string v6, "wimax_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    :cond_1
    const-string v5, "vpn_settings"

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->X(Ljava/lang/String;)V

    .line 136
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, "bluetooth"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 141
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "nfc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 142
    :cond_4
    const-string v2, "toggle_nfc"

    invoke-direct {p0, v2}, Lcom/android/settings/WirelessSettings;->X(Ljava/lang/String;)V

    .line 143
    const-string v2, "android_beam_settings"

    invoke-direct {p0, v2}, Lcom/android/settings/WirelessSettings;->X(Ljava/lang/String;)V

    .line 147
    :cond_5
    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WirelessSettings;->sn:Landroid/nfc/NfcAdapter;

    .line 148
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->sn:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_6

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    .line 155
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_7
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 164
    const-string v0, "device_policy"

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 171
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 173
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_c

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_d

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 194
    :goto_3
    if-nez v3, :cond_8

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 196
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_8
    return-void

    .line 125
    :cond_9
    if-eqz v2, :cond_a

    const-string v6, "wimax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 127
    :cond_a
    const-string v5, "wimax_settings"

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->X(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 168
    goto :goto_1

    .line 176
    :cond_c
    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 177
    invoke-static {v0}, Lcom/android/settings/cu;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_d
    move v3, v0

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    invoke-virtual {v0}, Lcom/android/settings/ce;->pause()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->pause()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fq:Lcom/android/settings/ee;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fq:Lcom/android/settings/ee;

    invoke-virtual {v0}, Lcom/android/settings/ee;->pause()V

    .line 241
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->Fo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fn:Lcom/android/settings/ce;

    invoke-virtual {v0}, Lcom/android/settings/ce;->resume()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fp:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->resume()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fq:Lcom/android/settings/ee;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Fq:Lcom/android/settings/ee;

    invoke-virtual {v0}, Lcom/android/settings/ee;->resume()V

    .line 225
    :cond_2
    return-void
.end method
