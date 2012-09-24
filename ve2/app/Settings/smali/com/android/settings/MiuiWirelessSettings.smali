.class public Lcom/android/settings/MiuiWirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiWirelessSettings.java"


# instance fields
.field private Bw:Lcom/android/settings/nfc/a;

.field private Bx:Lcom/android/settings/wifi/p2p/k;

.field private CO:Landroid/preference/Preference;

.field private CP:Landroid/preference/Preference;

.field private CQ:Landroid/preference/Preference;

.field private CR:Landroid/preference/Preference;

.field private kl:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mHandler:Landroid/os/Handler;

.field private qf:Landroid/nfc/NfcAdapter;

.field private xT:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/bV;

    invoke-direct {v0, p0}, Lcom/android/settings/bV;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/settings/bU;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bU;-><init>(Lcom/android/settings/MiuiWirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->xT:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->hx()V

    return-void
.end method

.method private hx()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/aX;->B(Landroid/content/Context;)Z

    move-result v3

    .line 178
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->CO:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->CO:Landroid/preference/Preference;

    if-nez v3, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->CP:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->CP:Landroid/preference/Preference;

    if-nez v3, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->CQ:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 185
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->CQ:Landroid/preference/Preference;

    if-nez v3, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->CR:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->CR:Landroid/preference/Preference;

    if-nez v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 179
    goto :goto_0

    :cond_5
    move v0, v2

    .line 182
    goto :goto_1

    :cond_6
    move v0, v2

    .line 185
    goto :goto_2

    :cond_7
    move v1, v2

    .line 188
    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f05005f

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 99
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 102
    const-string v2, "toggle_wifi_p2p"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 104
    new-instance v4, Lcom/android/settings/nfc/a;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/settings/nfc/a;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    .line 106
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x6090008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 112
    if-nez v5, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 114
    const-string v6, "wimax_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    :cond_1
    const-string v5, "vpn_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->CP:Landroid/preference/Preference;

    .line 128
    :cond_2
    if-eqz v4, :cond_3

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 133
    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "nfc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 134
    :cond_4
    const-string v4, "toggle_nfc"

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->CQ:Landroid/preference/Preference;

    .line 135
    const-string v4, "android_beam_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->CR:Landroid/preference/Preference;

    .line 139
    :cond_5
    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->qf:Landroid/nfc/NfcAdapter;

    .line 140
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->qf:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    .line 146
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_p2p_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_1
    const-string v0, "proxy_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 155
    const-string v0, "device_policy"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_b

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->hx()V

    .line 172
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->kl:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 173
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->kl:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 174
    return-void

    .line 117
    :cond_7
    if-eqz v4, :cond_8

    const-string v6, "wimax"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 119
    :cond_8
    const-string v5, "wimax_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MiuiWirelessSettings;->CO:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 150
    :cond_9
    new-instance v0, Lcom/android/settings/wifi/p2p/k;

    invoke-direct {v0, v3, v2}, Lcom/android/settings/wifi/p2p/k;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    goto :goto_1

    .line 159
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 167
    :cond_b
    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 168
    invoke-static {v0}, Lcom/android/settings/ci;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->pause()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/k;->pause()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->kl:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->xT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bw:Lcom/android/settings/nfc/a;

    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->resume()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->Bx:Lcom/android/settings/wifi/p2p/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/k;->resume()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->kl:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->xT:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    return-void
.end method
