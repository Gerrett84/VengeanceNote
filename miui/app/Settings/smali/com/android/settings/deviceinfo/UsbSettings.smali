.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private ee:Landroid/hardware/usb/UsbManager;

.field private ef:Landroid/preference/CheckBoxPreference;

.field private eg:Landroid/preference/CheckBoxPreference;

.field private final em:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->em:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ee:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->j(Ljava/lang/String;)V

    return-void
.end method

.method private af()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 66
    :cond_0
    const v0, 0x7f050056

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 69
    const-string v0, "usb_mtp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ef:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v0, "usb_ptp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->eg:Landroid/preference/CheckBoxPreference;

    .line 72
    return-object v1
.end method

.method private j(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ef:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->eg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ef:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->eg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ef:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->eg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ee:Landroid/hardware/usb/UsbManager;

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->em:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 124
    :cond_0
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 125
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 126
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ef:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ee:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 132
    const-string v0, "mtp"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->j(Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->eg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->ee:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 135
    const-string v0, "ptp"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->j(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->af()Landroid/preference/PreferenceScreen;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->em:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method
