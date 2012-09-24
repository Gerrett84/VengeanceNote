.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"


# instance fields
.field private PL:Landroid/preference/Preference;

.field private PM:Landroid/preference/CheckBoxPreference;

.field private PN:Landroid/content/Intent;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/bH;

    invoke-direct {v0, p0}, Lcom/android/settings/bH;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/DockSettings;->k(Landroid/content/Intent;)V

    return-void
.end method

.method private k(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const v0, 0x7f0b027d

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 96
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 98
    :goto_0
    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 122
    :goto_1
    if-eqz v4, :cond_0

    .line 125
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 96
    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    iput-object p1, p0, Lcom/android/settings/DockSettings;->PN:Landroid/content/Intent;

    .line 107
    packed-switch v4, :pswitch_data_0

    .line 119
    :goto_3
    iget-object v1, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 109
    :pswitch_0
    const v0, 0x7f0b027b

    .line 110
    goto :goto_3

    .line 114
    :pswitch_1
    const v0, 0x7f0b027a

    .line 115
    goto :goto_3

    .line 117
    :pswitch_2
    const v0, 0x7f0b027c

    goto :goto_3

    .line 126
    :catch_0
    move-exception v0

    goto :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private mh()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 81
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    const v3, 0x7f0b027c

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    :cond_0
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->PM:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/DockSettings;->PM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 88
    iget-object v3, p0, Lcom/android/settings/DockSettings;->PM:Landroid/preference/CheckBoxPreference;

    const-string v0, "dock_sounds_enabled"

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    return-void

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method private mi()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->mh()V

    .line 61
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->mi()Landroid/app/Dialog;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/settings/DockSettings;->PL:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/settings/DockSettings;->PN:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DockSettings;->PN:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 140
    :cond_0
    if-nez v1, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 153
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 143
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->PN:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 144
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DockSettings;->PM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->PM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method
