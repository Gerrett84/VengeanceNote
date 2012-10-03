.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private xF:Landroid/view/IWindowManager;

.field private zO:Landroid/preference/CheckBoxPreference;

.field private zP:Landroid/preference/CheckBoxPreference;

.field private zQ:Landroid/preference/CheckBoxPreference;

.field private zR:Landroid/preference/CheckBoxPreference;

.field private zS:Landroid/preference/CheckBoxPreference;

.field private zT:Landroid/preference/CheckBoxPreference;

.field private zU:Landroid/preference/CheckBoxPreference;

.field private zV:Landroid/preference/CheckBoxPreference;

.field private zW:Landroid/preference/Preference;

.field private zX:Landroid/preference/ListPreference;

.field private zY:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private P(Z)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0b06bb

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "trackball_wake_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "persist.sys.multitouch"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 128
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "back_key_long_press_timeout"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 139
    if-lez v4, :cond_9

    move v0, v1

    .line 140
    :goto_2
    iget-object v5, p0, Lcom/android/settings/KeySettings;->zP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zQ:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 147
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "enable_snapshot_screenlock"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_buttons_timeout"

    const/16 v5, 0x1388

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 157
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    :cond_4
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "enable_assist_menu_key_long_press"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "keyguard_disable_power_key_long_press"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zT:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 172
    iget-object v4, p0, Lcom/android/settings/KeySettings;->zT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "volumekey_wake_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_buttons_turn_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_e

    :goto_7
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zW:Landroid/preference/Preference;

    if-nez v0, :cond_f

    .line 207
    :goto_8
    return-void

    :cond_7
    move v0, v2

    .line 122
    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 139
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 147
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 161
    goto :goto_4

    :cond_c
    move v0, v2

    .line 166
    goto :goto_5

    :cond_d
    move v0, v2

    .line 172
    goto :goto_6

    :cond_e
    move v1, v2

    .line 177
    goto :goto_7

    .line 185
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 206
    :goto_9
    iget-object v1, p0, Lcom/android/settings/KeySettings;->zW:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_8

    .line 191
    :pswitch_0
    const v0, 0x7f0b06ba

    .line 192
    goto :goto_9

    :pswitch_1
    move v0, v3

    .line 196
    goto :goto_9

    .line 199
    :pswitch_2
    const v0, 0x7f0b06bc

    .line 200
    goto :goto_9

    .line 203
    :pswitch_3
    const v0, 0x7f0b06bd

    goto :goto_9

    .line 189
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
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 63
    const-string v0, "enable_assist_menu_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zO:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "enable_back_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zP:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v0, "enable_snapshot_screenlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zQ:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v0, "disable_power_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zR:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v0, "back_long_press_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_volume_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "multi_touch_points_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "trackball_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :goto_2
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_key_action_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :goto_3
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :goto_4
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->xF:Landroid/view/IWindowManager;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/KeySettings;->xF:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_button_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_5
    return-void

    .line 73
    :cond_1
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zT:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0

    .line 78
    :cond_2
    const-string v0, "enable_multi_touch_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 84
    :cond_3
    const-string v0, "trackball_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    goto/16 :goto_2

    .line 91
    :cond_4
    const-string v0, "camera_key_action"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zW:Landroid/preference/Preference;

    goto :goto_3

    .line 97
    :cond_5
    const-string v0, "pref_button_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zV:Landroid/preference/CheckBoxPreference;

    .line 98
    const-string v0, "button_light_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    .line 99
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 109
    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 268
    check-cast p2, Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->zX:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_key_long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 276
    check-cast p2, Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/KeySettings;->zY:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
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

    .line 212
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_key_long_press_timeout"

    if-eqz v2, :cond_1

    :goto_0
    mul-int/lit16 v0, v0, 0x5dc

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 221
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

    .line 225
    :cond_4
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zO:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 226
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_assist_menu_key_long_press"

    if-eqz v2, :cond_5

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zR:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 232
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v2, :cond_7

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 238
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    if-eqz v2, :cond_9

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 243
    :cond_a
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 244
    iget-object v0, p0, Lcom/android/settings/KeySettings;->zS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 245
    if-eqz v0, :cond_b

    .line 246
    const-string v0, "persist.sys.multitouch"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_b
    const-string v0, "persist.sys.multitouch"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_c
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zT:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 253
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v2, :cond_d

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_6

    .line 256
    :cond_e
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zV:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/settings/KeySettings;->zV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v2, :cond_f

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_7
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->P(Z)V

    .line 118
    return-void
.end method
