.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"


# instance fields
.field private dr:Landroid/hardware/usb/UsbManager;

.field private ds:Landroid/preference/CheckBoxPreference;

.field private dt:Landroid/preference/CheckBoxPreference;

.field private du:Landroid/preference/CheckBoxPreference;

.field private dv:Z

.field private final dw:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dw:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dr:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->j(Ljava/lang/String;)V

    return-void
.end method

.method private aa()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 42
    :cond_0
    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 45
    const-string v0, "usb_mtp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->ds:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "usb_ptp"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dt:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v0, "usb_msd"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dv:Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dv:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    .line 56
    :cond_1
    return-object v1
.end method

.method private j(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->ds:Landroid/preference/CheckBoxPreference;

    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dt:Landroid/preference/CheckBoxPreference;

    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dv:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    const-string v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dr:Landroid/hardware/usb/UsbManager;

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dw:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-static {}, Lcom/android/settings/ci;->hg()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 102
    :cond_0
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 103
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 104
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->ds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dr:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 110
    const-string v0, "mtp"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->j(Ljava/lang/String;)V

    .line 118
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dr:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "ptp"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->j(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->du:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dv:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dr:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 116
    const-string v0, "mass_storage"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->j(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aa()Landroid/preference/PreferenceScreen;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->dw:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method
