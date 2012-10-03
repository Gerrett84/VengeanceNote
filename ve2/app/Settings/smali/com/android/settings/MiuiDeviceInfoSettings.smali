.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"


# static fields
.field private static mN:J


# instance fields
.field private mK:Landroid/os/storage/StorageManager;

.field private mL:Ljava/util/ArrayList;

.field private mM:Ljava/util/ArrayList;

.field private mO:Lcom/android/settings/cA;

.field private mP:Lcom/android/settings/cA;

.field private mQ:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 418
    new-instance v0, Lcom/android/settings/cA;

    invoke-direct {v0}, Lcom/android/settings/cA;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mO:Lcom/android/settings/cA;

    .line 419
    new-instance v0, Lcom/android/settings/cA;

    invoke-direct {v0}, Lcom/android/settings/cA;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mP:Lcom/android/settings/cA;

    .line 462
    new-instance v0, Lcom/android/settings/cS;

    invoke-direct {v0, p0}, Lcom/android/settings/cS;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mQ:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mQ:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v0, "DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing and no \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mO:Lcom/android/settings/cA;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mP:Lcom/android/settings/cA;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 404
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 407
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method private cT()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 202
    :try_start_0
    const-string v0, "/proc/version"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 214
    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex did not match on /proc/version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "Unavailable"

    .line 234
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 221
    const-string v0, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " groups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "Unavailable"

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private cU()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 249
    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 256
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private cV()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v8, 0x19

    const/4 v0, 0x0

    const/high16 v7, 0x447a

    .line 274
    .line 276
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/android/settings/cR;

    invoke-direct {v2, p0}, Lcom/android/settings/cR;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v1, ""

    .line 290
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 291
    const v1, 0x7f0b068d

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_0
    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 293
    const v1, 0x7f0b068e

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 294
    :goto_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 295
    sget-boolean v2, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_U9200:Z

    if-eqz v2, :cond_2

    .line 296
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 298
    :cond_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 303
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    const-wide/16 v5, 0xc

    add-long/2addr v2, v5

    const-wide/16 v5, 0x19

    div-long/2addr v2, v5

    mul-long/2addr v2, v8

    long-to-float v3, v2

    .line 304
    const-string v2, "MHz"

    .line 305
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_3

    .line 306
    div-float/2addr v3, v7

    .line 307
    const-string v2, "GHz"

    .line 309
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .line 313
    if-eqz v1, :cond_4

    .line 315
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 320
    :cond_4
    :goto_1
    return-object v0

    .line 313
    :cond_5
    if-eqz v1, :cond_4

    .line 315
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v1

    goto :goto_1

    .line 311
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 313
    :goto_2
    if-eqz v1, :cond_4

    .line 315
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 316
    :catch_2
    move-exception v1

    goto :goto_1

    .line 313
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    if-eqz v1, :cond_6

    .line 315
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 317
    :cond_6
    :goto_4
    throw v0

    .line 316
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 313
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 311
    :catch_5
    move-exception v2

    goto :goto_2

    :cond_7
    move-object v4, v1

    goto/16 :goto_0
.end method

.method private cW()V
    .locals 13

    .prologue
    const v12, 0x7f0b0690

    const v11, 0x7f0b068f

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getView()Landroid/view/View;

    move-result-object v3

    .line 325
    const v0, 0x7f08006f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v0, 0x7f080070

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v0, 0x7f080071

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v0, 0x7f080072

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    const v0, 0x7f080073

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    invoke-static {}, Lmiui/os/Environment;->getTotalPhysicalMemory()J

    move-result-wide v1

    const-wide/16 v4, 0x400

    mul-long/2addr v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->g(J)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const v0, 0x7f080075

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->cX()J

    move-result-wide v1

    .line 343
    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v1, v4

    .line 344
    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {p0, v12, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 348
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 350
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 352
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mP:Lcom/android/settings/cA;

    iget-wide v4, v2, Lcom/android/settings/cA;->FH:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mP:Lcom/android/settings/cA;

    iget-wide v4, v2, Lcom/android/settings/cA;->FH:J

    add-long/2addr v0, v4

    move-wide v1, v0

    .line 355
    :goto_0
    const v0, 0x7f080074

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 356
    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {p0, v11, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const v0, 0x7f080079

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    const v1, 0x7f080078

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    const v2, 0x7f080076

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 363
    iget-object v4, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mO:Lcom/android/settings/cA;

    iget-wide v4, v4, Lcom/android/settings/cA;->dy:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 364
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :goto_1
    return-void

    .line 368
    :cond_0
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mO:Lcom/android/settings/cA;

    iget-wide v5, v5, Lcom/android/settings/cA;->FH:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 369
    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mO:Lcom/android/settings/cA;

    iget-wide v6, v6, Lcom/android/settings/cA;->dy:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v12, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    const v0, 0x7f080077

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move-wide v1, v0

    goto :goto_0
.end method

.method public static cX()J
    .locals 4

    .prologue
    .line 382
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mN:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 385
    :try_start_0
    const-string v0, "/proc/partitions"

    const-string v1, "mmcblk0"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mN:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mN:J

    return-wide v0

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mM:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cW()V

    return-void
.end method

.method private g(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private w(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 192
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 67
    const-string v0, "baseband_version"

    const-string v3, "gsm.version.baseband"

    invoke-direct {p0, v0, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "build_number"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUI-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "safetylegal"

    const-string v4, "ro.url.safetylegal"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "baseband_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 86
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 87
    const-string v3, "team"

    invoke-static {v4, v0, v3, v1}, Lcom/android/settings/cu;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 92
    const-string v3, "contributors"

    invoke-static {v4, v0, v3, v1}, Lcom/android/settings/cu;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 95
    const-string v0, "storage"

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mK:Landroid/os/storage/StorageManager;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mL:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mM:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mK:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    move v3, v2

    .line 100
    :goto_0
    array-length v0, v5

    if-ge v3, v0, :cond_3

    .line 101
    aget-object v0, v5, v3

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v6, "mounted"

    iget-object v7, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mK:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    aget-object v6, v5, v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4, v6, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    .line 105
    new-instance v6, Lcom/android/settings/Q;

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    invoke-direct {v6, p0, v7}, Lcom/android/settings/Q;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;Z)V

    .line 106
    iget-object v7, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mM:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0, v6}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 109
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 110
    iget-object v6, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mL:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 103
    goto :goto_1

    .line 113
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x1

    const v1, 0x7f0b02b3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 118
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 262
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->n()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 265
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cW()V

    .line 271
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04002f

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 131
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040030

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    return-void
.end method
