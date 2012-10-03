.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private BK:Landroid/preference/CheckBoxPreference;

.field private BL:Landroid/preference/CheckBoxPreference;

.field private final BM:Landroid/content/res/Configuration;

.field private BN:Landroid/preference/ListPreference;

.field private BO:Landroid/preference/Preference;

.field private final BP:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BM:Landroid/content/res/Configuration;

    .line 66
    new-instance v0, Lcom/android/settings/dH;

    invoke-direct {v0, p0}, Lcom/android/settings/dH;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BP:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method private a(Landroid/preference/ListPreference;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 150
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 151
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 180
    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    .line 150
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 155
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 158
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 159
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 160
    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 161
    aget-object v8, v4, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v4

    if-ne v0, v4, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v5

    if-eq v0, v4, :cond_5

    .line 166
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_5

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->hZ()V

    return-void
.end method

.method private hY()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BO:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BO:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0291

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 243
    return-void

    .line 239
    :cond_0
    const v0, 0x7f0b0292

    goto :goto_0
.end method

.method private hZ()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hz()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->hZ()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->hY()V

    .line 236
    return-void
.end method

.method private u(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->BN:Landroid/preference/ListPreference;

    .line 127
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 129
    const-string v0, ""

    .line 143
    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 131
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 132
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 134
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 135
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 136
    cmp-long v6, p1, v6

    if-ltz v6, :cond_1

    move v2, v0

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0b028d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v4, v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 80
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 82
    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_0
    const-string v0, "screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BO:Landroid/preference/Preference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BO:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110038

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->BO:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    :cond_1
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BN:Landroid/preference/ListPreference;

    .line 98
    const-string v0, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 100
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BN:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BN:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BN:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->a(Landroid/preference/ListPreference;)V

    .line 103
    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->u(J)V

    .line 107
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x609000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification_light_pulse"

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "DisplaySettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 114
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BP:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 229
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v0, "screen_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 277
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->u(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    const-string v0, "font_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->p(Ljava/lang/Object;)V

    .line 289
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string v2, "DisplaySettings"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->BK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 271
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->BL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->hz()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BP:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 221
    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->BM:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 254
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->BM:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
