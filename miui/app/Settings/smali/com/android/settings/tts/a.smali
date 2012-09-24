.class public Lcom/android/settings/tts/a;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private cd:Landroid/speech/tts/TtsEngines;

.field private ce:Landroid/preference/ListPreference;

.field private cf:Landroid/preference/Preference;

.field private cg:Landroid/preference/Preference;

.field private ch:Landroid/content/Intent;

.field private ci:Landroid/speech/tts/TextToSpeech;

.field private final cj:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/tts/g;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/g;-><init>(Lcom/android/settings/tts/a;)V

    iput-object v0, p0, Lcom/android/settings/tts/a;->cj:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/a;)Landroid/preference/ListPreference;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

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

    .line 150
    iget-object v0, p0, Lcom/android/settings/tts/a;->cd:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/CharSequence;

    move v1, v2

    move v3, v4

    .line 157
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 159
    const/4 v0, 0x0

    .line 160
    array-length v9, v8

    if-ne v9, v11, :cond_2

    .line 161
    new-instance v0, Ljava/util/Locale;

    aget-object v8, v8, v2

    invoke-direct {v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v7, v1

    .line 171
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 157
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_2
    array-length v9, v8

    if-ne v9, v12, :cond_3

    .line 163
    new-instance v0, Ljava/util/Locale;

    aget-object v9, v8, v2

    aget-object v8, v8, v11

    invoke-direct {v0, v9, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_3
    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 165
    new-instance v0, Ljava/util/Locale;

    aget-object v9, v8, v2

    aget-object v10, v8, v11

    aget-object v8, v8, v12

    invoke-direct {v0, v9, v10, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    if-le v3, v4, :cond_5

    .line 180
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 185
    :goto_2
    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 183
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/a;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/android/settings/tts/a;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/tts/a;->s()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/tts/a;->cd:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/a;->ci:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings/tts/a;->ci:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-direct {v2, v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 235
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "voices"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 120
    const-string v1, "availableVoices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 122
    const-string v2, "unavailableVoices"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    if-nez v1, :cond_0

    .line 126
    const-string v0, "TtsEngineSettings"

    const-string v1, "TTS data check failed (available == null)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 128
    iget-object v1, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lcom/android/settings/tts/a;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 143
    :cond_2
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 144
    iget-object v1, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
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

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/a;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
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

.method private u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

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

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f050053

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/a;->addPreferencesFromResource(I)V

    .line 81
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/a;->cd:Landroid/speech/tts/TtsEngines;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 84
    const-string v0, "tts_default_lang"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v0, "tts_engine_settings"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->cf:Landroid/preference/Preference;

    .line 87
    iget-object v0, p0, Lcom/android/settings/tts/a;->cf:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    const-string v0, "tts_install_data"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    .line 89
    iget-object v0, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    invoke-direct {p0}, Lcom/android/settings/tts/a;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/tts/a;->cf:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0514

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->v()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/tts/a;->cd:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/a;->ch:Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/android/settings/tts/a;->ch:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/tts/a;->cf:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 106
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/a;->cj:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/a;->ci:Landroid/speech/tts/TextToSpeech;

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/tts/a;->ci:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 114
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/tts/a;->ce:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 220
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/tts/a;->e(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .line 224
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

    .line 206
    iget-object v1, p0, Lcom/android/settings/tts/a;->cg:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/tts/a;->t()V

    .line 214
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/a;->cf:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/tts/a;->ch:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
