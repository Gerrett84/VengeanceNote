.class public Lcom/android/settings/wifi/k;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private final aL:Landroid/content/IntentFilter;

.field private c:Landroid/net/wifi/WifiManager;

.field private final ci:Landroid/preference/CheckBoxPreference;

.field private final cj:Ljava/lang/CharSequence;

.field ck:Landroid/net/ConnectivityManager;

.field private cl:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/wifi/x;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/x;-><init>(Lcom/android/settings/wifi/k;)V

    iput-object v0, p0, Lcom/android/settings/wifi/k;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/k;->cj:Ljava/lang/CharSequence;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 83
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/k;->ck:Landroid/net/ConnectivityManager;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ck:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/k;->cl:[Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/k;->aL:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/k;->aL:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/k;->aL:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 111
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/k;->cj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/wifi/k;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/k;->H()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/k;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/k;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/k;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/k;->a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 159
    .line 162
    array-length v7, p2

    move v5, v4

    move v6, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, p2, v5

    .line 163
    check-cast v0, Ljava/lang/String;

    .line 164
    iget-object v8, p0, Lcom/android/settings/wifi/k;->cl:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    move v1, v6

    :goto_1
    if-ge v3, v9, :cond_1

    aget-object v6, v8, v3

    .line 165
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    .line 164
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_0

    .line 168
    :cond_2
    array-length v7, p3

    move v5, v4

    move v1, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, p3, v5

    .line 169
    check-cast v0, Ljava/lang/String;

    .line 170
    iget-object v8, p0, Lcom/android/settings/wifi/k;->cl:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_4

    aget-object v10, v8, v3

    .line 171
    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v1, v2

    .line 170
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 168
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 175
    :cond_5
    if-eqz v6, :cond_7

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/k;->a(Landroid/net/wifi/WifiConfiguration;)V

    .line 181
    :cond_6
    :goto_4
    return-void

    .line 178
    :cond_7
    if-eqz v1, :cond_6

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/wifi/k;->H()V

    .line 212
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/k;->cj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/wifi/k;->H()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    const v1, 0x60c0198

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    const v3, 0x7f0b021e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 153
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 119
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 122
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    :goto_0
    if-nez p1, :cond_2

    .line 138
    :try_start_0
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    :goto_1
    if-ne v0, v4, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 144
    const-string v0, "wifi_saved_state"

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    :cond_2
    return-void

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/k;->ci:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0b01b6

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/k;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/k;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/k;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/k;->aL:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/wifi/k;->H()V

    .line 96
    return-void
.end method
