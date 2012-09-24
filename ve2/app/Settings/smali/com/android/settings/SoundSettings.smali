.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final em:[Ljava/lang/String;


# instance fields
.field private en:Landroid/preference/CheckBoxPreference;

.field private eo:Landroid/preference/ListPreference;

.field private ep:Landroid/preference/CheckBoxPreference;

.field private eq:Landroid/preference/CheckBoxPreference;

.field private er:Landroid/preference/CheckBoxPreference;

.field private es:Landroid/preference/Preference;

.field private et:Landroid/preference/CheckBoxPreference;

.field private eu:Lcom/android/settings/DefaultRingtonePreference;

.field private ev:Lcom/android/settings/DefaultRingtonePreference;

.field private ew:Ljava/lang/Runnable;

.field private ex:Landroid/preference/PreferenceGroup;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->em:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/android/settings/bp;

    invoke-direct {v0, p0}, Lcom/android/settings/bp;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Lcom/android/settings/bn;

    invoke-direct {v0, p0}, Lcom/android/settings/bn;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eu:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->m(Z)V

    return-void
.end method

.method private ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 287
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 289
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 291
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aj()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->ew:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    return-void
.end method

.method static synthetic b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->ev:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    const/4 v0, 0x2

    .line 276
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v0, 0x0

    .line 281
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 282
    return-void

    .line 278
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 268
    if-eqz p1, :cond_0

    move v0, v1

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 272
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private m(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 303
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    if-ne v2, v0, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->ai()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 304
    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 317
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method protected ah()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    .line 142
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 146
    if-eq v6, v4, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "emergency_tone"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_0
    const-string v0, "silent_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090001

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 161
    :cond_1
    :goto_0
    const-string v0, "vibrate_on_ring"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    .line 162
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    :cond_2
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->ep:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->ep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 168
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->ep:Landroid/preference/CheckBoxPreference;

    const-string v0, "dtmf_tone"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 172
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    const-string v0, "sound_effects_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 176
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->et:Landroid/preference/CheckBoxPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->et:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->et:Landroid/preference/CheckBoxPreference;

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->eu:Lcom/android/settings/DefaultRingtonePreference;

    .line 184
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->ev:Lcom/android/settings/DefaultRingtonePreference;

    .line 186
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_3
    if-ne v6, v4, :cond_4

    .line 192
    const-string v0, "emergency_tone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 194
    const-string v1, "emergency_tone"

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    :cond_4
    const-string v0, "sound_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->ex:Landroid/preference/PreferenceGroup;

    .line 201
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->ex:Landroid/preference/PreferenceGroup;

    const-string v1, "musicfx"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->es:Landroid/preference/Preference;

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 204
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_5

    .line 211
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->ex:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->es:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 215
    sget-object v0, Lcom/android/settings/SoundSettings;->em:[Ljava/lang/String;

    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    .line 216
    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 168
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 172
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 176
    goto/16 :goto_3

    :cond_b
    move v1, v2

    .line 180
    goto/16 :goto_4

    .line 223
    :cond_c
    new-instance v0, Lcom/android/settings/bm;

    invoke-direct {v0, p0}, Lcom/android/settings/bm;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->ew:Ljava/lang/Runnable;

    .line 237
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, "emergency_tone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->en:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 369
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->l(Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->eo:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 371
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->ep:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->ep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 334
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 339
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->eq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 337
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_3

    :cond_4
    move v0, v1

    .line 339
    goto :goto_4

    .line 342
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->er:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_5

    .line 346
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->et:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->et:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_6

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->es:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->m(Z)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->aj()V

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method
