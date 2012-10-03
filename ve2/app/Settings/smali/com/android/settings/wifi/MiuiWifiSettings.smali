.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"


# instance fields
.field private Ov:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/android/settings/wifi/F;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 303
    new-instance v0, Lcom/android/settings/wifi/w;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/w;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V

    .line 304
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/F;->a(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private bP()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Ov:Z

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v0, "wifi_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :cond_2
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method private lP()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01c7

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method protected ll()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 108
    packed-switch v0, :pswitch_data_0

    .line 127
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->ll()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lm()Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 113
    const v0, 0x7f050061

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bP()V

    .line 115
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 117
    new-instance v1, Lcom/android/settings/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/a;-><init>(Landroid/content/Context;)V

    .line 118
    const v2, 0x7f0b06dd

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/a;->setSummary(I)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 122
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected lm()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v7, Lcom/android/settings/wifi/l;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 264
    new-instance v2, Lcom/android/settings/wifi/F;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/F;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LM:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->LL:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/F;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 266
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_4

    .line 272
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

    .line 277
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

    .line 282
    :goto_2
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/l;->a(Ljava/lang/Object;)Ljava/util/List;

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

    .line 283
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 285
    check-cast v1, Lcom/android/settings/wifi/F;

    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/F;)V

    move v1, v4

    :goto_4
    move v5, v1

    goto :goto_3

    .line 289
    :cond_3
    if-nez v2, :cond_1

    if-nez v5, :cond_1

    .line 290
    new-instance v1, Lcom/android/settings/wifi/F;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/F;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 291
    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Ljava/util/List;Lcom/android/settings/wifi/F;)V

    .line 292
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
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
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->bP()V

    .line 82
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 194
    sparse-switch p1, :sswitch_data_0

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 196
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 197
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LF:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lo()V

    goto :goto_0

    .line 206
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 207
    const-string v0, "network_id"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 208
    if-eq v0, v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LH:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 225
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lo()V

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "iswps"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 212
    if-eqz v0, :cond_3

    .line 213
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    .line 214
    if-eqz v0, :cond_1

    goto :goto_1

    .line 218
    :cond_3
    const-string v0, "config"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 219
    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LG:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_setup_wizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Ov:Z

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Ov:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f040095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lP()V

    .line 167
    const/4 v0, 0x1

    .line 170
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

    .line 133
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
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

    .line 160
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 135
    goto :goto_0

    .line 139
    :cond_2
    const-string v3, "manually_add_network"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lP()V

    goto :goto_1

    .line 144
    :cond_3
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 145
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 146
    iget-object v3, v0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    .line 147
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v6, :cond_6

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 152
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LM:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LM:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->LF:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 157
    :cond_6
    iput v6, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 160
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0801e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->Ov:Z

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    new-instance v1, Lcom/android/settings/wifi/J;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/J;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method
