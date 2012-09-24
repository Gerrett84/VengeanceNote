.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final fW:Lcom/android/settings/SettingsPreferenceFragment;

.field private oU:Landroid/preference/PreferenceGroup;

.field private oV:Landroid/preference/PreferenceCategory;

.field private oW:Landroid/preference/ListPreference;

.field private oX:Landroid/preference/Preference;

.field private oY:Landroid/preference/Preference;

.field private oZ:Landroid/preference/PreferenceScreen;

.field private final pa:Landroid/speech/tts/TtsEngines;

.field private pb:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    .line 75
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->pa:Landroid/speech/tts/TtsEngines;

    .line 76
    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->pb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 190
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.speech"

    invoke-virtual {v5, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 196
    if-nez v4, :cond_1

    .line 197
    :try_start_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No android.speech meta-data for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 222
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 223
    :goto_0
    :try_start_2
    const-string v6, "VoiceInputOutputSettings"

    const-string v7, "error parsing recognition service meta-data"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 232
    :cond_0
    :goto_1
    if-nez v2, :cond_6

    .line 234
    const-string v0, "VoiceInputOutputSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no recognizer settings available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :goto_2
    return-void

    .line 201
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 204
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 208
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 211
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 212
    const-string v7, "recognition-service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 213
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with recognition-service tag"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 224
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 225
    :goto_3
    :try_start_4
    const-string v6, "VoiceInputOutputSettings"

    const-string v7, "error parsing recognition service meta-data"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 217
    :cond_4
    :try_start_5
    sget-object v6, Landroid/R$styleable;->RecognitionService:[I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 221
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 229
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 226
    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 227
    :goto_4
    :try_start_7
    const-string v6, "VoiceInputOutputSettings"

    const-string v7, "error parsing recognition service meta-data"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 229
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v0

    .line 238
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->oZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 241
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 229
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 226
    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    .line 224
    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    .line 222
    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto/16 :goto_0
.end method

.method private d(Ljava/util/List;)V
    .locals 9
    .parameter

    .prologue
    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 155
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 156
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 159
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 167
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 171
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->pb:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v1

    .line 174
    aput-object v6, v4, v1

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v5}, Lcom/android/settings/VoiceInputOutputSettings;->B(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private dF()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->dG()Z

    move-result v0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->dH()Z

    move-result v1

    .line 97
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_0
    return-void
.end method

.method private dG()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 112
    if-nez v3, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->oX:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :goto_0
    return v0

    .line 118
    :cond_0
    if-ne v3, v1, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 125
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/android/settings/VoiceInputOutputSettings;->pb:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "voice_recognition_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->B(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 141
    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/VoiceInputOutputSettings;->d(Ljava/util/List;)V

    goto :goto_1
.end method

.method private dH()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->pa:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->oY:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oU:Landroid/preference/PreferenceGroup;

    .line 81
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oU:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    .line 82
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    .line 83
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oX:Landroid/preference/Preference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oY:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oV:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oZ:Landroid/preference/PreferenceScreen;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->pb:Ljava/util/HashMap;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->dF()V

    .line 92
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->oW:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 247
    check-cast p2, Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->fW:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_recognition_service"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    invoke-direct {p0, p2}, Lcom/android/settings/VoiceInputOutputSettings;->B(Ljava/lang/String;)V

    .line 257
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
