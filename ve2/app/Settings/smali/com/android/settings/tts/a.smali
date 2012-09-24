.class public Lcom/android/settings/tts/a;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private bR:Landroid/speech/tts/TtsEngines;

.field private bS:Landroid/preference/ListPreference;

.field private bT:Landroid/preference/Preference;

.field private bU:Landroid/preference/Preference;

.field private bV:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v4, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/settings/tts/a;->bR:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/CharSequence;

    move v1, v2

    move v3, v4

    .line 130
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 132
    const/4 v0, 0x0

    .line 133
    array-length v9, v8

    if-ne v9, v11, :cond_2

    .line 134
    new-instance v0, Ljava/util/Locale;

    aget-object v8, v8, v2

    invoke-direct {v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v7, v1

    .line 144
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 130
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_2
    array-length v9, v8

    if-ne v9, v12, :cond_3

    .line 136
    new-instance v0, Ljava/util/Locale;

    aget-object v9, v8, v2

    aget-object v8, v8, v11

    invoke-direct {v0, v9, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_3
    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 138
    new-instance v0, Ljava/util/Locale;

    aget-object v9, v8, v2

    aget-object v10, v8, v11

    aget-object v8, v8, v12

    invoke-direct {v0, v9, v10, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 152
    if-le v3, v4, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 159
    :goto_2
    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/tts/a;->bR:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "voices"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 93
    const-string v1, "availableVoices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    const-string v2, "unavailableVoices"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    if-nez v1, :cond_0

    .line 99
    const-string v0, "TtsEngineSettings"

    const-string v1, "TTS data check failed (available == null)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 101
    iget-object v1, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    invoke-direct {p0, v1}, Lcom/android/settings/tts/a;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 116
    :cond_2
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 117
    iget-object v1, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :try_start_0
    const-string v1, "TtsEngineSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing voice data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/a;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string v1, "TtsEngineSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f050051

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/a;->addPreferencesFromResource(I)V

    .line 62
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/a;->bR:Landroid/speech/tts/TtsEngines;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 65
    const-string v0, "tts_default_lang"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v0, "tts_engine_settings"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->bT:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/tts/a;->bT:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    const-string v0, "tts_install_data"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-direct {p0}, Lcom/android/settings/tts/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/tts/a;->bT:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ce

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->A()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/tts/a;->bR:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->bV:Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/android/settings/tts/a;->bV:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/tts/a;->bT:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/tts/a;->x()V

    .line 87
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/tts/a;->bS:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/tts/a;->bR:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->z()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/android/settings/tts/a;->bU:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/tts/a;->y()V

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/a;->bT:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/settings/tts/a;->bV:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
