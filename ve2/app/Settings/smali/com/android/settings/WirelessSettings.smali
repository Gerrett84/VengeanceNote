.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private Bu:Lcom/android/settings/bQ;

.field private Bv:Landroid/preference/CheckBoxPreference;

.field private Bw:Lcom/android/settings/nfc/a;

.field private Bx:Lcom/android/settings/wifi/p2p/k;

.field private qf:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {p0}, Lcom/android/settings/aX;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 215
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->Bu:Lcom/android/settings/bQ;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->Bv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/bQ;->a(ZZ)V

    .line 220
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f05005f

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 101
    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->Bv:Landroid/preference/CheckBoxPreference;

    .line 102
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 103
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 105
    const-string v2, "toggle_wifi_p2p"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 107
    new-instance v4, Lcom/android/settings/bQ;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->Bv:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v3, v5}, Lcom/android/settings/bQ;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/WirelessSettings;->Bu:Lcom/android/settings/bQ;

    .line 108
    new-instance v4, Lcom/android/settings/nfc/a;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/settings/nfc/a;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    .line 110
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x6090008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 116
    if-nez v5, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 118
    const-string v6, "wimax_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 119
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    :cond_1
    const-string v5, "vpn_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "toggle_airplane"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 133
    :cond_2
    if-eqz v4, :cond_3

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 138
    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "nfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 139
    :cond_4
    const-string v4, "toggle_nfc"

    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "toggle_airplane"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 140
    const-string v4, "android_beam_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "toggle_airplane"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 144
    :cond_5
    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/WirelessSettings;->qf:Landroid/nfc/NfcAdapter;

    .line 145
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->qf:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mobile_network_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_7
    const-string v0, "wifip2p"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_p2p_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 167
    const-string v0, "device_policy"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_c

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :goto_3
    return-void

    .line 121
    :cond_8
    if-eqz v4, :cond_9

    const-string v6, "wimax"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 123
    :cond_9
    const-string v5, "wimax_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 124
    const-string v6, "toggle_airplane"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_a
    new-instance v0, Lcom/android/settings/wifi/p2p/k;

    invoke-direct {v0, v3, v2}, Lcom/android/settings/wifi/p2p/k;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    goto :goto_1

    .line 171
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 179
    :cond_c
    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 180
    invoke-static {v0}, Lcom/android/settings/ci;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bu:Lcom/android/settings/bQ;

    invoke-virtual {v0}, Lcom/android/settings/bQ;->pause()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->pause()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/k;->pause()V

    .line 210
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->Bv:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
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
    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bu:Lcom/android/settings/bQ;

    invoke-virtual {v0}, Lcom/android/settings/bQ;->resume()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->resume()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/k;->resume()V

    .line 196
    :cond_1
    return-void
.end method
