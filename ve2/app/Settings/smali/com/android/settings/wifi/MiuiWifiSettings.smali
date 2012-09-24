.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/android/settings/wifi/y;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/android/settings/wifi/t;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/t;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V

    .line 243
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/y;->a(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method private bM()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 54
    return-void

    :cond_0
    move v1, v2

    .line 51
    goto :goto_0
.end method


# virtual methods
.method protected iM()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 59
    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->iM()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->iN()Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->a(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V

    goto :goto_0

    .line 68
    :cond_1
    const v0, 0x7f05005e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bM()V

    .line 70
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 71
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 72
    new-instance v1, Lcom/android/settings/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/a;-><init>(Landroid/content/Context;)V

    .line 73
    const v2, 0x7f0b0654

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/a;->setSummary(I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 77
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected iN()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v7, Lcom/android/settings/wifi/l;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 203
    new-instance v2, Lcom/android/settings/wifi/y;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/y;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->HR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/y;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 205
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 216
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    move v2, v4

    .line 221
    :goto_2
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/l;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v3

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 222
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 224
    check-cast v1, Lcom/android/settings/wifi/y;

    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/y;)V

    move v1, v4

    :goto_4
    move v5, v1

    goto :goto_3

    .line 228
    :cond_3
    if-nez v2, :cond_1

    if-nez v5, :cond_1

    .line 229
    new-instance v1, Lcom/android/settings/wifi/y;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/y;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 230
    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/y;)V

    .line 231
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 238
    return-object v6

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bM()V

    .line 46
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 135
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 136
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->iP()V

    goto :goto_0

    .line 145
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 146
    const-string v0, "network_id"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-eq v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 164
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->iP()V

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "iswps"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    .line 153
    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_1

    .line 157
    :cond_3
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 158
    if-eqz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->HW:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01bf

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    .line 97
    :cond_2
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 98
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 99
    iget-object v3, v0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    .line 100
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v6, :cond_5

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->HS:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_1

    .line 110
    :cond_5
    iput v6, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 113
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
