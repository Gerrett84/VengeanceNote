.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private cY:Lmiui/security/ChooseLockSettingsHelper;

.field private ot:Landroid/app/admin/DevicePolicyManager;

.field private pX:Lcom/android/internal/widget/LockPatternUtils;

.field private pY:Landroid/preference/ListPreference;

.field private pZ:Landroid/preference/CheckBoxPreference;

.field private qa:Landroid/preference/CheckBoxPreference;

.field private qb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private d(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 180
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

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 187
    iget-object v4, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 192
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 196
    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSecuritySettings;->j(J)V

    .line 198
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 189
    goto :goto_0
.end method

.method private ee()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 204
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 205
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 207
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 208
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 209
    cmp-long v7, v3, v7

    if-ltz v7, :cond_0

    move v2, v0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    const v3, 0x7f0b010f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v2, v5, v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/MiuiSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method private j(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 218
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 221
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 222
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 223
    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 224
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v3

    if-eq v0, v2, :cond_3

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 243
    return-void
.end method


# virtual methods
.method public ef()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->ef()V

    .line 274
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    .line 58
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ot:Landroid/app/admin/DevicePolicyManager;

    .line 59
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 248
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->ee()V

    .line 257
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v1

    .line 150
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v3}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 176
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 153
    :cond_1
    const-string v2, "biometric_weak_improve_matching"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 156
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v3, v3}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->ef()V

    goto :goto_0

    .line 160
    :cond_2
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_3
    const-string v2, "visiblepattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v2, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 166
    :cond_5
    const-string v2, "lock_screen_unlock_show"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, p2

    .line 167
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_lock_before_unlock"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_7
    const-string v2, "power_button_instantly_locks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->d(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const v2, 0x7f050039

    .line 63
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 70
    :cond_0
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_7

    .line 76
    const v0, 0x7f05003a

    move v1, v0

    .line 95
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 98
    const-string v0, "visiblepattern"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v0, "lock_after_timeout"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->ed()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->ee()V

    .line 112
    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 115
    const-string v0, "security_category"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 117
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "visiblepattern"

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_2
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    const-string v0, "security_category"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 127
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->qb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    :cond_6
    return-void

    .line 77
    :cond_7
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 79
    goto/16 :goto_0

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->pX:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    goto/16 :goto_0

    .line 83
    :sswitch_0
    const v0, 0x7f050040

    move v1, v0

    .line 84
    goto/16 :goto_0

    .line 86
    :sswitch_1
    const v0, 0x7f050042

    move v1, v0

    .line 87
    goto/16 :goto_0

    .line 91
    :sswitch_2
    const v0, 0x7f05003f

    move v1, v0

    goto/16 :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method
