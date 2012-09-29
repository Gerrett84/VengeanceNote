.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# static fields
.field static final pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field public static final pJ:Ljava/util/Set;

.field static final pK:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;


# instance fields
.field private ca:Landroid/os/storage/StorageVolume;

.field private mColors:[I

.field private mN:Landroid/os/storage/StorageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mT:Landroid/os/Handler;

.field private pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private pC:[Landroid/preference/Preference;

.field private pD:Landroid/preference/Preference;

.field private pE:Landroid/preference/Preference;

.field private pF:Landroid/preference/Preference;

.field private pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private pH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02d9

    invoke-direct {v1, v2, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02db

    const v3, 0x7f0a0004

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02de

    const v3, 0x7f0a0006

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02df

    const v3, 0x7f0a0007

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02dd

    const v3, 0x7f0a0005

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02e0

    const v4, 0x7f0a0008

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02d8

    const v4, 0x7f0a0003

    invoke-direct {v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pJ:Ljava/util/Set;

    .line 119
    new-array v0, v6, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pK:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    .line 129
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pJ:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pJ:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mN:Landroid/os/storage/StorageManager;

    .line 142
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mT:Landroid/os/Handler;

    .line 173
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 174
    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    .line 175
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mN:Landroid/os/storage/StorageManager;

    .line 176
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {p1, p3, p5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pH:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pH:Z

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->dZ()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v3, :cond_3

    :goto_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pH:Z

    .line 187
    if-nez p5, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pH:Z

    .line 188
    :cond_0
    return-void

    .line 176
    :cond_1
    const v0, 0x7f0b03d6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 182
    goto :goto_1

    :cond_3
    move v1, v2

    .line 184
    goto :goto_2
.end method

.method private a(JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->a(FI)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static c(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 414
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 415
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    return-object v0
.end method

.method private dZ()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eb()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 258
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v1

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move v1, v0

    .line 261
    :goto_0
    if-ge v1, v2, :cond_0

    .line 262
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_2
    :goto_1
    if-ge v0, v2, :cond_3

    .line 274
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    return-void
.end method

.method private ec()V
    .locals 8

    .prologue
    const v6, 0x7f0b02e4

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 285
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->eb()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mN:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    const-string v1, ""

    .line 292
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 293
    const-string v1, "mounted"

    .line 294
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 308
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    :cond_3
    :goto_2
    return-void

    .line 287
    :cond_4
    const-string v0, "mounted"

    goto/16 :goto_0

    .line 314
    :cond_5
    const-string v0, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "nofs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unmountable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :goto_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method private g(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 391
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 392
    return-void
.end method


# virtual methods
.method public a(JJJJJ[J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sub-long v0, p1, p3

    .line 356
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v0, v0

    long-to-float v1, p1

    div-float/2addr v0, v1

    const v1, -0x777778

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/deviceinfo/UsageBarPreference;->a(FI)V

    .line 359
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p5

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJI)V

    .line 361
    const-wide/16 v1, 0x0

    .line 362
    const/4 v0, 0x0

    move v6, v0

    move-wide v7, v1

    :goto_0
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pK:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 363
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pK:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v0, v0, v6

    iget v5, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->zR:I

    .line 364
    aget-wide v1, p11, v6

    move-object v0, p0

    move-wide v3, p1

    .line 365
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJI)V

    .line 366
    add-long/2addr v1, v7

    .line 362
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v7, v1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v5, 0x4

    move-object v0, p0

    move-wide/from16 v1, p7

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJI)V

    .line 373
    const/4 v5, 0x5

    move-object v0, p0

    move-wide/from16 v1, p9

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJI)V

    .line 375
    const/4 v5, 0x6

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJI)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 378
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mT:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mT:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mT:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void
.end method

.method public b(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 442
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 450
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_2

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_3

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_4

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 461
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_5

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 466
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->u()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public c(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    sub-long v0, p1, p3

    .line 340
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 341
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v0, v0

    long-to-float v1, p1

    div-float/2addr v0, v1

    const v1, -0x777778

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/deviceinfo/UsageBarPreference;->a(FI)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ec()V

    .line 345
    return-void
.end method

.method public ea()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ca:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public ed()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 401
    return-void
.end method

.method public ee()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 405
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    .line 200
    new-instance v0, Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pB:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 203
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 205
    sget-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v3, v0

    .line 206
    new-array v0, v3, [Landroid/preference/Preference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    .line 207
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 208
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 209
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 210
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pC:[Landroid/preference/Preference;

    aput-object v4, v5, v0

    .line 211
    sget-object v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->ig:I

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 212
    const v5, 0x7f0b02da

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 213
    if-eqz v0, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v7, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pI:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->ih:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v0

    .line 216
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v5, v5, v0

    invoke-static {v1, v2, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    const v1, 0x7f0b02e1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pD:Landroid/preference/Preference;

    const v1, 0x7f0b02e2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pH:Z

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    .line 226
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->dZ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    const v1, 0x7f0b02e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 236
    :cond_2
    :goto_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 238
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;

    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;

    const v1, 0x7f0b02f3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_2
    return-void

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pE:Landroid/preference/Preference;

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 243
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pF:Landroid/preference/Preference;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 245
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->r()V

    .line 409
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->pG:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 397
    return-void
.end method
