.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final VOL_BTN:Ljava/lang/String; = "volbtn_music_controls"


# instance fields
.field private mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

.field private vc:Landroid/view/IWindowManager;

.field private wY:Landroid/preference/CheckBoxPreference;

.field private wZ:Landroid/preference/CheckBoxPreference;

.field private xa:Landroid/preference/CheckBoxPreference;

.field private xb:Landroid/preference/CheckBoxPreference;

.field private xc:Landroid/preference/CheckBoxPreference;

.field private xd:Landroid/preference/CheckBoxPreference;

.field private xe:Landroid/preference/CheckBoxPreference;

.field private xf:Landroid/preference/Preference;

.field private xg:Landroid/preference/ListPreference;

.field private xh:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getVolBtn()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volbtn_music_controls"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 319
    :goto_0
    return v1

    .line 316
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 319
    goto :goto_0
.end method

.method private m(Z)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0b0630

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "trackball_wake_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "persist.sys.multitouch"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 125
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "back_key_long_press_timeout"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 136
    if-lez v4, :cond_9

    move v0, v1

    .line 137
    :goto_2
    iget-object v5, p0, Lcom/android/settings/KeySettings;->wY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/KeySettings;->wZ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 144
    iget-object v4, p0, Lcom/android/settings/KeySettings;->wZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "enable_snapshot_screenlock"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_buttons_timeout"

    const/16 v5, 0x1388

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    iget-object v4, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :cond_4
    iget-object v4, p0, Lcom/android/settings/KeySettings;->xa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "keyguard_disable_power_key_long_press"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xc:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 164
    iget-object v4, p0, Lcom/android/settings/KeySettings;->xc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "volumekey_wake_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/KeySettings;->getVolBtn()Z

    move-result v4

    .line 80
    const-string v5, "volbtn_music_controls"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    .line 188
    iget-object v0, p0, Lcom/android/settings/KeySettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/KeySettings;->xe:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_buttons_turn_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_d

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xf:Landroid/preference/Preference;

    if-nez v0, :cond_e

    .line 199
    :goto_7
    return-void

    :cond_7
    move v0, v2

    .line 119
    goto/16 :goto_0

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 136
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 144
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 158
    goto :goto_4

    :cond_c
    move v0, v2

    .line 164
    goto :goto_5

    :cond_d
    move v1, v2

    .line 169
    goto :goto_6

    .line 177
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 198
    :goto_8
    iget-object v1, p0, Lcom/android/settings/KeySettings;->xf:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_7

    .line 183
    :pswitch_0
    const v0, 0x7f0b062f

    .line 184
    goto :goto_8

    :pswitch_1
    move v0, v3

    .line 188
    goto :goto_8

    .line 191
    :pswitch_2
    const v0, 0x7f0b0631

    .line 192
    goto :goto_8

    .line 195
    :pswitch_3
    const v0, 0x7f0b0632

    goto :goto_8

    .line 181
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 61
    const-string v0, "enable_back_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->wY:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v0, "enable_snapshot_screenlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->wZ:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v0, "volbtn_music_controls"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v0, "disable_power_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xa:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "back_long_press_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_volume_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "multi_touch_points_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "trackball_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :goto_2
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_key_action_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    :goto_3
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :goto_4
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->vc:Landroid/view/IWindowManager;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->vc:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_5
    return-void

    .line 70
    :cond_1
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xc:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0

    .line 75
    :cond_2
    const-string v0, "enable_multi_touch_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 81
    :cond_3
    const-string v0, "trackball_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    goto/16 :goto_2

    .line 88
    :cond_4
    const-string v0, "camera_key_action"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xf:Landroid/preference/Preference;

    goto :goto_3

    .line 94
    :cond_5
    const-string v0, "pref_button_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xe:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v0, "button_light_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    .line 96
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 106
    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 254
    check-cast p2, Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->xg:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_key_long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 262
    check-cast p2, Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->xh:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/android/settings/KeySettings;->wY:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/settings/KeySettings;->wY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_key_long_press_timeout"

    if-eqz v2, :cond_1

    :goto_0
    mul-int/lit16 v0, v0, 0x5dc

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 211
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KeySettings;->wZ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 212
    iget-object v2, p0, Lcom/android/settings/KeySettings;->wZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_snapshot_screenlock"

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 218
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v2, :cond_5

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 223
    :cond_6
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 224
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    if-eqz v2, :cond_7

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 229
    :cond_8
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 230
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 231
    if-eqz v0, :cond_9

    .line 232
    const-string v0, "persist.sys.multitouch"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_9
    const-string v0, "persist.sys.multitouch"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_a
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 239
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v2, :cond_b

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_5

    .line 242
    :cond_c
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 243
    iget-object v2, p0, Lcom/android/settings/KeySettings;->xe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v2, :cond_d

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volbtn_music_controls"

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_7
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->m(Z)V

    .line 115
    return-void
.end method
