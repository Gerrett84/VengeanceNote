.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private jB:Ljava/util/Calendar;

.field private jC:Landroid/preference/CheckBoxPreference;

.field private jD:Landroid/preference/Preference;

.field private jE:Landroid/preference/Preference;

.field private jF:Landroid/preference/CheckBoxPreference;

.field private jG:Landroid/preference/Preference;

.field private jH:Landroid/preference/Preference;

.field private jI:Landroid/preference/ListPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 407
    new-instance v0, Lcom/android/settings/aL;

    invoke-direct {v0, p0}, Lcom/android/settings/aL;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static b(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 367
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->t(I)[C

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 344
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 345
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 347
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 348
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 350
    :cond_0
    return-void
.end method

.method private bP()V
    .locals 13

    .prologue
    const v12, 0x7f070001

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v0, "auto_time"

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->t(Ljava/lang/String;)Z

    move-result v5

    .line 85
    const-string v0, "auto_time_zone"

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->t(Ljava/lang/String;)Z

    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    const-string v3, "firstRun"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jB:Ljava/util/Calendar;

    .line 92
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jC:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    const-string v0, "auto_zone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jF:Landroid/preference/CheckBoxPreference;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move v1, v2

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jD:Landroid/preference/Preference;

    .line 104
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jE:Landroid/preference/Preference;

    .line 105
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jG:Landroid/preference/Preference;

    .line 106
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jH:Landroid/preference/Preference;

    .line 107
    const-string v0, "date_format"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    .line 108
    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jE:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 114
    array-length v0, v6

    new-array v7, v0, [Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->bS()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    const-string v0, ""

    :cond_3
    move v3, v2

    .line 121
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    aget-object v9, v6, v3

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->jB:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 126
    aget-object v9, v6, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0093

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v8, v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 121
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_4
    aput-object v8, v7, v3

    goto :goto_1

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    invoke-virtual {v3, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jD:Landroid/preference/Preference;

    if-nez v5, :cond_6

    move v0, v4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->jH:Landroid/preference/Preference;

    if-nez v5, :cond_7

    move v0, v4

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jG:Landroid/preference/Preference;

    if-nez v1, :cond_8

    :goto_4
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    return-void

    :cond_6
    move v0, v2

    .line 138
    goto :goto_2

    :cond_7
    move v0, v2

    .line 139
    goto :goto_3

    :cond_8
    move v4, v2

    .line 140
    goto :goto_4
.end method

.method private bQ()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method private bR()Z
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private bS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setTime(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 356
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 357
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 358
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 359
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 361
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 362
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 364
    :cond_0
    return-void
.end method

.method private t(Z)V
    .locals 3
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    return-void

    .line 319
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method private t(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 332
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static t(I)[C
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 379
    div-int/lit16 v0, p0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    .line 381
    const/16 v1, 0x9

    new-array v1, v1, [C

    .line 382
    const/4 v2, 0x0

    const/16 v3, 0x47

    aput-char v3, v1, v2

    .line 383
    const/4 v2, 0x1

    const/16 v3, 0x4d

    aput-char v3, v1, v2

    .line 384
    const/4 v2, 0x2

    const/16 v3, 0x54

    aput-char v3, v1, v2

    .line 386
    if-gez v0, :cond_0

    .line 387
    const/16 v2, 0x2d

    aput-char v2, v1, v4

    .line 388
    neg-int v0, v0

    .line 393
    :goto_0
    div-int/lit8 v2, v0, 0x3c

    .line 394
    rem-int/lit8 v0, v0, 0x3c

    .line 396
    const/4 v3, 0x4

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 397
    const/4 v3, 0x5

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v3

    .line 399
    const/4 v2, 0x6

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    .line 401
    const/4 v2, 0x7

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 402
    const/16 v2, 0x8

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 404
    return-object v1

    .line 390
    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v1, v4

    goto :goto_0
.end method


# virtual methods
.method public l(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 173
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jB:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jB:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jB:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->jD:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->jG:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->b(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->jH:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->jI:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->bP()V

    .line 81
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 232
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 233
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 243
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->b(III)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 168
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jH:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 298
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jD:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jE:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jE:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->t(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 296
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->bQ()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jE:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->bR()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    const-string v0, "date_format"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v0, "auto_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->jD:Landroid/preference/Preference;

    if-nez v3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jH:Landroid/preference/Preference;

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 214
    goto :goto_1

    :cond_3
    move v0, v2

    .line 216
    goto :goto_2

    :cond_4
    move v1, v2

    .line 217
    goto :goto_3

    .line 218
    :cond_5
    const-string v0, "auto_zone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time_zone"

    if-eqz v3, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->jG:Landroid/preference/Preference;

    if-nez v3, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 220
    goto :goto_4

    :cond_7
    move v1, v2

    .line 222
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->l(Landroid/content/Context;)V

    .line 202
    :cond_0
    return-void
.end method
