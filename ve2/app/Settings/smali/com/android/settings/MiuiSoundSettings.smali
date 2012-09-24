.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/SoundSettings;
.source "MiuiSoundSettings.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private pi:Landroid/preference/ListPreference;

.field private pj:Lcom/android/settings/SmsRingtonePreference;

.field private pk:Lcom/android/settings/SmsRingtonePreference;

.field private pl:Landroid/preference/CheckBoxPreference;

.field private pm:Landroid/preference/CheckBoxPreference;

.field private pn:Landroid/preference/CheckBoxPreference;

.field private final po:Landroid/content/BroadcastReceiver;

.field private final pp:Landroid/os/Handler;

.field private final pq:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;-><init>()V

    .line 168
    new-instance v0, Lcom/android/settings/cD;

    invoke-direct {v0, p0}, Lcom/android/settings/cD;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->po:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pp:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/settings/cC;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pp:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cC;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pq:Landroid/database/ContentObserver;

    return-void
.end method

.method private M(I)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method private dY()I
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pj:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pk:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ah()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pj:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pk:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->a(Landroid/net/Uri;I)V

    .line 123
    :cond_1
    return-void
.end method

.method dZ()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 190
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->pl:Landroid/preference/CheckBoxPreference;

    if-eq v3, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    if-ne v3, v6, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->pm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "vibrate_in_silent"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    :goto_2
    if-eq v3, v6, :cond_5

    .line 203
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_in_normal"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0

    :cond_1
    move v0, v2

    .line 193
    goto :goto_1

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->pm:Landroid/preference/CheckBoxPreference;

    if-ne v3, v1, :cond_3

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_5

    :cond_4
    move v1, v2

    .line 203
    goto :goto_3

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "haptic_feedback_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    .line 76
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->dY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    const-string v0, "sms_received_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pj:Lcom/android/settings/SmsRingtonePreference;

    .line 81
    const-string v0, "sms_delivered_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pk:Lcom/android/settings/SmsRingtonePreference;

    .line 83
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    const-string v0, "miui_silent_or_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pl:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v0, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pm:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v0, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pn:Landroid/preference/CheckBoxPreference;

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->pq:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->po:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onPause()V

    .line 109
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->pi:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 145
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->M(I)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;)V

    .line 164
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_normal"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->updateVibrateState(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 155
    goto :goto_1

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->updateVibrateState(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 159
    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onResume()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->po:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const-string v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pq:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    const-string v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->pq:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->dZ()V

    .line 102
    return-void
.end method
