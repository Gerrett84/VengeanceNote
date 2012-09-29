.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/c;


# instance fields
.field private KN:Landroid/preference/PreferenceCategory;

.field private KO:Landroid/preference/ListPreference;

.field private KP:Landroid/preference/Preference;

.field private KQ:I

.field private KR:Ljava/lang/String;

.field private KS:Landroid/widget/Checkable;

.field private KT:Ljava/lang/String;

.field private final KU:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final KV:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private cg:Landroid/speech/tts/TtsEngines;

.field private cl:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    .line 98
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    .line 99
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cg:Landroid/speech/tts/TtsEngines;

    .line 106
    new-instance v0, Lcom/android/settings/tts/e;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/e;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KU:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 118
    new-instance v0, Lcom/android/settings/tts/f;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/f;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KV:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private Z(Z)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KP:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 328
    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->ag(Ljava/lang/String;)V

    return-void
.end method

.method private af(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 332
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying data alert for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 335
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b050e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cg:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v5, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 339
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/tts/d;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/tts/d;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 349
    return-void
.end method

.method private ag(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->Z(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KT:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KV:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    .line 380
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ah(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v1

    .line 416
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check TTS data, no activity found for "

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

.method private ai(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cg:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 456
    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->lh()Ljava/lang/String;

    move-result-object v0

    .line 274
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 275
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "sampleText"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Did not have a sample string for the requested language"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private i(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    .line 426
    if-nez v2, :cond_0

    .line 427
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Voice data check complete, but no engine bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    return-void

    .line 431
    :cond_0
    if-nez p1, :cond_1

    .line 432
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_synth"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 440
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 442
    instance-of v4, v0, Lcom/android/settings/tts/k;

    if-eqz v4, :cond_3

    .line 443
    check-cast v0, Lcom/android/settings/tts/k;

    .line 444
    invoke-virtual {v0}, Lcom/android/settings/tts/k;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/settings/tts/k;->h(Landroid/content/Intent;)V

    .line 451
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->Z(Z)V

    goto :goto_0

    .line 440
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private lf()V
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    :try_start_0
    const-string v1, "tts_default_rate"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 185
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 187
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cg:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 189
    new-instance v3, Lcom/android/settings/tts/k;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1, p0, v0}, Lcom/android/settings/tts/k;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/c;Landroid/preference/PreferenceActivity;)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KN:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 170
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TextToSpeechSettings used outside a PreferenceActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->ah(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private lg()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    if-eqz v1, :cond_1

    .line 215
    const-string v3, "language"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v3, "variant"

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/16 v0, 0x7bf

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sample text, no activity found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private lh()Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 262
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 263
    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    aget-object v0, v2, v0

    .line 268
    :goto_1
    return-object v0

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/Checkable;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KS:Landroid/widget/Checkable;

    .line 472
    return-void
.end method

.method public aU(I)V
    .locals 1
    .parameter

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->Z(Z)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->Z(Z)V

    goto :goto_0
.end method

.method public aV(I)V
    .locals 4
    .parameter

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->ah(Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KU:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KT:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    .line 402
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KT:Ljava/lang/String;

    goto :goto_0
.end method

.method public cU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    return-object v0
.end method

.method public cV()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KS:Landroid/widget/Checkable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 248
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->b(ILandroid/content/Intent;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 250
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->i(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 132
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KP:Landroid/preference/Preference;

    .line 133
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KP:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KN:Landroid/preference/PreferenceCategory;

    .line 137
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    .line 139
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KU:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    .line 140
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cg:Landroid/speech/tts/TtsEngines;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->lf()V

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    .line 152
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KO:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 160
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->cl:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KQ:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KP:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->lg()V

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->af(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->KR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->ag(Ljava/lang/String;)V

    goto :goto_0
.end method
