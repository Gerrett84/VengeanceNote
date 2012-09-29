.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final fk:[Ljava/lang/String;


# instance fields
.field private fl:Landroid/preference/CheckBoxPreference;

.field private fm:Landroid/preference/CheckBoxPreference;

.field private fn:Landroid/preference/CheckBoxPreference;

.field protected fo:Landroid/preference/CheckBoxPreference;

.field private fp:Landroid/preference/Preference;

.field private fq:Landroid/preference/CheckBoxPreference;

.field private fr:Lcom/android/settings/DefaultRingtonePreference;

.field private fs:Lcom/android/settings/DefaultRingtonePreference;

.field protected ft:Landroid/preference/ListPreference;

.field private fu:Ljava/lang/Runnable;

.field private fv:Landroid/preference/PreferenceGroup;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms_received_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sms_delivered_sound"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->fk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Lcom/android/settings/bC;

    invoke-direct {v0, p0}, Lcom/android/settings/bC;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fr:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method private as()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->fu:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method static synthetic b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fs:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method


# virtual methods
.method protected E()I
    .locals 1

    .prologue
    .line 303
    const v0, 0x7f0b065f

    return v0
.end method

.method protected a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method protected ar()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 125
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    .line 127
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 131
    if-eq v6, v4, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v5, "emergency_tone"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090001

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 140
    :cond_1
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    .line 141
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 143
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    const-string v0, "vibrate_when_ringing"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    :cond_2
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fm:Landroid/preference/CheckBoxPreference;

    .line 148
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 149
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->fm:Landroid/preference/CheckBoxPreference;

    const-string v0, "dtmf_tone"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 153
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    const-string v0, "sound_effects_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 157
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fq:Landroid/preference/CheckBoxPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fq:Landroid/preference/CheckBoxPreference;

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fr:Lcom/android/settings/DefaultRingtonePreference;

    .line 165
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fs:Lcom/android/settings/DefaultRingtonePreference;

    .line 167
    const-string v0, "haptic_feedback_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->ft:Landroid/preference/ListPreference;

    .line 168
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 169
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->ft:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    iput-object v7, p0, Lcom/android/settings/SoundSettings;->ft:Landroid/preference/ListPreference;

    .line 178
    :cond_5
    if-ne v6, v4, :cond_6

    .line 179
    const-string v0, "emergency_tone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 181
    const-string v1, "emergency_tone"

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    :cond_6
    const-string v0, "sound_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fv:Landroid/preference/PreferenceGroup;

    .line 188
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fv:Landroid/preference/PreferenceGroup;

    const-string v1, "musicfx"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fp:Landroid/preference/Preference;

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 191
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_7

    .line 198
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fv:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->fp:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->H(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 202
    sget-object v0, Lcom/android/settings/SoundSettings;->fk:[Ljava/lang/String;

    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 203
    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_8

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    move v0, v2

    .line 143
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 149
    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 153
    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 157
    goto/16 :goto_3

    :cond_d
    move v1, v2

    .line 161
    goto/16 :goto_4

    .line 210
    :cond_e
    new-instance v0, Lcom/android/settings/bB;

    invoke-direct {v0, p0}, Lcom/android/settings/bB;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->fu:Ljava/lang/Runnable;

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "emergency_tone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->fl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->fm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    .line 261
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 262
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 267
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->fn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 265
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_4

    :cond_6
    move v0, v1

    .line 267
    goto :goto_5

    .line 270
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->fo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_6

    .line 274
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->fq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->fq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_7

    .line 278
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->fp:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->as()V

    .line 236
    return-void
.end method
