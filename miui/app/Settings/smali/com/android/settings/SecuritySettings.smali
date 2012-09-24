.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Gr:Landroid/preference/CheckBoxPreference;

.field private Gs:Landroid/preference/CheckBoxPreference;

.field private Gt:Landroid/preference/CheckBoxPreference;

.field private Gu:Landroid/preference/Preference;

.field private Gv:Landroid/preference/CheckBoxPreference;

.field private Gw:Landroid/content/DialogInterface;

.field private cY:Lmiui/security/ChooseLockSettingsHelper;

.field ot:Landroid/app/admin/DevicePolicyManager;

.field private pX:Lcom/android/internal/widget/LockPatternUtils;

.field private pY:Landroid/preference/ListPreference;

.field private pZ:Landroid/preference/CheckBoxPreference;

.field private qa:Landroid/preference/CheckBoxPreference;

.field private qb:Landroid/preference/CheckBoxPreference;

.field private yl:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private U(Z)V
    .locals 3
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private af()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const v2, 0x7f050039

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 127
    :cond_0
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 132
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    const v0, 0x7f05003a

    move v1, v0

    .line 154
    :goto_0
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 155
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 158
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 161
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v4

    if-nez v4, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_1
    :goto_1
    :pswitch_0
    const-string v0, "unlock_enter_system"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yl:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yl:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yl:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/security/MiuiLockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    :cond_2
    const-string v0, "lock_screen_unlock_show"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 181
    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "show_lock_before_unlock"

    invoke-static {v4, v7, v5}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    .line 186
    if-nez v4, :cond_9

    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    :cond_3
    const-string v0, "lock_after_timeout"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    .line 191
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ed()V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ee()V

    .line 197
    :cond_4
    const-string v0, "biometric_weak_liveliness"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v0, "visiblepattern"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    .line 208
    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 211
    const-string v0, "security_category"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 213
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 214
    const-string v1, "visiblepattern"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_5
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    .line 220
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_6

    .line 221
    const-string v0, "security_category"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 223
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 224
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_6
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, v6

    .line 264
    :goto_3
    return-object v0

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    .line 136
    goto/16 :goto_0

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v1, v3

    goto/16 :goto_0

    .line 141
    :sswitch_0
    const v0, 0x7f050040

    move v1, v0

    .line 142
    goto/16 :goto_0

    .line 144
    :sswitch_1
    const v0, 0x7f050042

    move v1, v0

    .line 145
    goto/16 :goto_0

    .line 149
    :sswitch_2
    const v0, 0x7f05003f

    move v1, v0

    goto/16 :goto_0

    .line 165
    :pswitch_1
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 169
    :pswitch_2
    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_9
    move v4, v3

    .line 186
    goto/16 :goto_2

    .line 234
    :cond_a
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_c

    .line 240
    const-string v0, "sim_lock"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_b
    :goto_4
    const-string v0, "show_password"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gs:Landroid/preference/CheckBoxPreference;

    .line 255
    const-string v0, "reset_credentials"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gu:Landroid/preference/Preference;

    .line 257
    const-string v0, "toggle_install_applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    .line 259
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->jG()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 262
    const-string v0, "upload_debug_log"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gt:Landroid/preference/CheckBoxPreference;

    move-object v0, v6

    .line 264
    goto/16 :goto_3

    .line 243
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v5, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_b

    .line 247
    :cond_d
    const-string v0, "sim_lock"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private d(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 486
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private ed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 311
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 316
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 320
    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->j(J)V

    .line 322
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 313
    goto :goto_0
.end method

.method private ee()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 328
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 329
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 331
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 332
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 333
    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    move v2, v0

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    const v3, 0x7f0b010f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v2, v5, v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method private j(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 342
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 345
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 346
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 347
    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 348
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v3

    if-eq v0, v2, :cond_3

    .line 353
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 355
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 358
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 367
    return-void
.end method

.method private jG()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private jH()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->Gw:Landroid/content/DialogInterface;

    .line 288
    return-void
.end method


# virtual methods
.method public ef()V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 528
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 495
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->ef()V

    .line 507
    :goto_0
    return-void

    .line 499
    :cond_0
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 502
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->af()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gw:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 292
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->U(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    .line 118
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 302
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gw:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gw:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 305
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->pY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 512
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 514
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ee()V

    .line 521
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v3

    .line 416
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 417
    const-string v0, "com.android.settings.MiuiSecuritySettings"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v5}, Lcom/android/settings/SecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 482
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 419
    :cond_1
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 422
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v5, v5}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->ef()V

    goto :goto_0

    .line 430
    :cond_2
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 440
    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v5, v5}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 450
    :cond_4
    const-string v4, "lockenabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 451
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 452
    :cond_5
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 453
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 454
    :cond_6
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 455
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto/16 :goto_0

    .line 456
    :cond_7
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 457
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 458
    :cond_8
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->Gs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_a

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    .line 461
    :cond_a
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->yl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_b

    .line 462
    invoke-virtual {v3, v2}, Lmiui/security/MiuiLockPatternUtils;->clearLock(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Lmiui/security/MiuiLockPatternUtils;->setLockScreenDisabled(Z)V

    goto/16 :goto_0

    .line 464
    :cond_b
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 465
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 467
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->jH()V

    goto/16 :goto_0

    .line 469
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->U(Z)V

    goto/16 :goto_0

    .line 471
    :cond_d
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_f

    .line 472
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 473
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "upload_log_pref"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v1, v2

    .line 472
    goto :goto_2

    .line 474
    :cond_f
    const-string v3, "lock_screen_unlock_show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 475
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_lock_before_unlock"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_3
    invoke-static {v3, v4, v1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 372
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->af()Landroid/preference/PreferenceScreen;

    .line 378
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 379
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 387
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 389
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gs:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 394
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->Gt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 398
    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 399
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "upload_log_pref"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 401
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    .line 405
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gu:Landroid/preference/Preference;

    if-eqz v3, :cond_6

    .line 406
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->Gu:Landroid/preference/Preference;

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v0, v4, :cond_a

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 394
    goto :goto_0

    :cond_8
    move v0, v2

    .line 398
    goto :goto_1

    :cond_9
    move v0, v2

    .line 401
    goto :goto_2

    :cond_a
    move v1, v2

    .line 406
    goto :goto_3
.end method
