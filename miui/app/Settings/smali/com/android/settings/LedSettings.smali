.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private BL:Landroid/preference/CheckBoxPreference;

.field private MJ:Landroid/preference/ListPreference;

.field private MK:Landroid/preference/ListPreference;

.field private ML:Landroid/preference/PreferenceCategory;

.field private MM:Landroid/preference/ListPreference;

.field private MN:Landroid/preference/ListPreference;

.field private MO:Landroid/preference/PreferenceCategory;

.field private MP:Landroid/preference/ListPreference;

.field private MQ:Landroid/preference/ListPreference;

.field private MR:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/ListPreference;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    move-result v0

    .line 106
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private b(Landroid/preference/ListPreference;IZ)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v1, -0x1

    .line 113
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 121
    :goto_1
    if-ne p2, v1, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 123
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return v0

    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b06e8

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 46
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->BL:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/LedSettings;->BL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v0, "breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MJ:Landroid/preference/ListPreference;

    .line 50
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MK:Landroid/preference/ListPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MK:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v0, "breathing_light_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->ML:Landroid/preference/PreferenceCategory;

    .line 55
    const-string v0, "call_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MM:Landroid/preference/ListPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MM:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    const-string v0, "call_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MN:Landroid/preference/ListPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MN:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "call_breathing_light_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MO:Landroid/preference/PreferenceCategory;

    .line 61
    const-string v0, "mms_breathing_light_color"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MP:Landroid/preference/ListPreference;

    .line 62
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MP:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "mms_breathing_light_freq"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MQ:Landroid/preference/ListPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MQ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "mms_breathing_light_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/LedSettings;->MR:Landroid/preference/PreferenceCategory;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x6070009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_color"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    iget-object v5, p0, Lcom/android/settings/LedSettings;->MJ:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 77
    iget-object v3, p0, Lcom/android/settings/LedSettings;->MM:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 78
    iget-object v3, p0, Lcom/android/settings/LedSettings;->MP:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x608000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_breathing_light_freq"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_freq"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    iget-object v5, p0, Lcom/android/settings/LedSettings;->MK:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v3, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 90
    iget-object v3, p0, Lcom/android/settings/LedSettings;->MN:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/LedSettings;->MQ:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/LedSettings;->a(Landroid/preference/ListPreference;IZ)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/LedSettings;->BL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "notification_light_pulse"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/LedSettings;->ML:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/LedSettings;->MK:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MO:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/LedSettings;->MN:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/LedSettings;->MR:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/LedSettings;->MQ:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 94
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 132
    const/4 v3, -0x1

    .line 134
    const-string v4, "breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 190
    :goto_0
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 191
    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/LedSettings;->b(Landroid/preference/ListPreference;IZ)I

    .line 193
    :cond_0
    return v1

    .line 140
    :catch_0
    move-exception v2

    .line 141
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const-string v4, "breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v3

    .line 149
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    :cond_2
    const-string v4, "call_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 155
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    .line 159
    goto :goto_0

    .line 157
    :catch_2
    move-exception v2

    .line 158
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    const-string v4, "call_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 165
    :catch_3
    move-exception v3

    .line 166
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    :cond_4
    const-string v4, "mms_breathing_light_color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 172
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mms_breathing_light_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v1

    .line 176
    goto/16 :goto_0

    .line 174
    :catch_4
    move-exception v2

    .line 175
    const-string v3, "TrackballSettings"

    const-string v4, "could not persist breathing light color settings"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 176
    goto/16 :goto_0

    .line 177
    :cond_5
    const-string v4, "mms_breathing_light_freq"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 178
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_breathing_light_freq"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 182
    :catch_5
    move-exception v3

    .line 183
    const-string v4, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 185
    :cond_6
    const-string v4, "notification_pulse"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method
