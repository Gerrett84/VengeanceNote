.class public Lcom/android/settings/a/f;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"


# instance fields
.field private b:Landroid/net/wifi/WifiManager;

.field private gF:Landroid/net/NetworkPolicyManager;

.field private hp:Lcom/android/settings/a/i;

.field private yY:Landroid/preference/PreferenceCategory;

.field private yZ:Landroid/preference/PreferenceCategory;

.field private za:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 111
    return-void
.end method

.method private F(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/a/f;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/a/f;->yY:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/a/f;->yZ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 83
    invoke-static {p1}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/a/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/a/f;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 85
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/settings/a/f;->yZ:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/a/f;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/a/f;->yZ:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/a/f;->za:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/a/f;)Lcom/android/settings/a/i;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/a/f;->hp:Lcom/android/settings/a/i;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/android/settings/a/d;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/a/d;-><init>(Lcom/android/settings/a/f;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 107
    invoke-virtual {v2, v0}, Lcom/android/settings/a/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/f;->gF:Landroid/net/NetworkPolicyManager;

    .line 61
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/a/f;->b:Landroid/net/wifi/WifiManager;

    .line 63
    new-instance v0, Lcom/android/settings/a/i;

    iget-object v2, p0, Lcom/android/settings/a/f;->gF:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v2}, Lcom/android/settings/a/i;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/a/f;->hp:Lcom/android/settings/a/i;

    .line 64
    iget-object v0, p0, Lcom/android/settings/a/f;->hp:Lcom/android/settings/a/i;

    invoke-virtual {v0}, Lcom/android/settings/a/i;->read()V

    .line 66
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/settings/a/f;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Lcom/android/settings/a/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/a/f;->yY:Landroid/preference/PreferenceCategory;

    .line 68
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/a/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/a/f;->yZ:Landroid/preference/PreferenceCategory;

    .line 69
    const-string v0, "wifi_disabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/a/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/f;->za:Landroid/preference/Preference;

    .line 71
    invoke-direct {p0, v1}, Lcom/android/settings/a/f;->F(Landroid/content/Context;)V

    .line 72
    return-void
.end method
