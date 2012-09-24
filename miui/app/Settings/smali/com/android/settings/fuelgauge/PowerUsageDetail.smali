.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static rK:[I


# instance fields
.field private be:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mUid:I

.field private rL:Landroid/app/admin/DevicePolicyManager;

.field private rM:I

.field private rN:[I

.field private rO:[D

.field private rP:Landroid/widget/TextView;

.field private rQ:Landroid/view/ViewGroup;

.field private rR:Landroid/widget/Button;

.field private rS:Landroid/widget/Button;

.field private rT:Landroid/view/ViewGroup;

.field private rU:Landroid/view/ViewGroup;

.field private rV:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private rW:Landroid/graphics/drawable/Drawable;

.field private rX:D

.field private rY:Z

.field private rZ:[Ljava/lang/String;

.field sa:Landroid/content/pm/ApplicationInfo;

.field sb:Landroid/content/ComponentName;

.field private final sc:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rK:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xdct 0x4t 0xbt 0x7ft
        0xddt 0x4t 0xbt 0x7ft
        0xdbt 0x4t 0xbt 0x7ft
        0xe1t 0x4t 0xbt 0x7ft
        0xe3t 0x4t 0xbt 0x7ft
        0xdft 0x4t 0xbt 0x7ft
        0xe6t 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 429
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sc:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Y(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 273
    :pswitch_0
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0257

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 277
    :pswitch_1
    const-class v1, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01b7

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 281
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0164

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 285
    :pswitch_3
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b00ed

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 289
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fa()V

    goto :goto_0

    .line 292
    :pswitch_5
    const-class v1, Lcom/android/settings/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0114

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 296
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fd()V

    goto :goto_0

    .line 299
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->ff()V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private Z(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 342
    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 345
    :cond_0
    if-eqz v1, :cond_5

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v0, v2

    .line 348
    :goto_1
    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->dp:[I

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rV:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    :cond_1
    move v3, v2

    .line 391
    :goto_2
    if-eqz v3, :cond_2

    .line 392
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rU:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 394
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 342
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    .line 345
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 351
    :pswitch_0
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 352
    const v0, 0x7f0b04d6

    const v1, 0x7f0b04e7

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    move v2, v3

    .line 358
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rY:Z

    if-eqz v0, :cond_1

    .line 359
    const v0, 0x7f0b0114

    const v1, 0x7f0b04e8

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    goto :goto_2

    .line 365
    :pswitch_1
    const v0, 0x7f0b0286

    const v1, 0x7f0b04e0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    goto :goto_2

    .line 371
    :pswitch_2
    const v0, 0x7f0b01b7

    const v1, 0x7f0b04e2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    goto :goto_2

    .line 377
    :pswitch_3
    const v0, 0x7f0b0164

    const v1, 0x7f0b04e4

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    goto :goto_2

    .line 383
    :pswitch_4
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rX:D

    const-wide/high16 v4, 0x4024

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 384
    const v0, 0x7f0b00ed

    const v1, 0x7f0b04de

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->d(III)V

    goto :goto_2

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    return-object v0
.end method

.method private aa(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 492
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fc()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 502
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    .line 503
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v2, v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    .line 504
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fc()V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 512
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_4

    .line 515
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 520
    :cond_4
    const v1, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 522
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 523
    const v5, 0x7f0800c1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 524
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 525
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private d(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 399
    const v1, 0x7f040049

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rU:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 402
    const v3, 0x7f0800bf

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 407
    return-void
.end method

.method private eZ()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 165
    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 166
    const-string v0, "percent"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 167
    const-string v0, "gauge"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 168
    const-string v0, "since"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rM:I

    .line 169
    const-string v0, "uid"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 170
    const-string v0, "drainType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rV:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 171
    const-string v0, "noCoverage"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rX:D

    .line 172
    const-string v0, "iconPackage"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v6, "iconId"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 177
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rW:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rW:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rW:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v6, 0x1020010

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    const-string v0, "types"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rN:[I

    .line 197
    const-string v0, "values"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    .line 199
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rP:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rP:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    const v3, 0x7f0b0646

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rQ:Landroid/view/ViewGroup;

    .line 206
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f08015c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f08015d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rS:Landroid/widget/Button;

    .line 208
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 211
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rT:Landroid/view/ViewGroup;

    .line 217
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rU:Landroid/view/ViewGroup;

    .line 219
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fb()V

    .line 220
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aa(I)V

    .line 221
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Z(I)V

    .line 223
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_6

    .line 224
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    const v3, 0x7f0b03b2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rS:Landroid/widget/Button;

    const v3, 0x60c019a

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rS:Landroid/widget/Button;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_action_app_error"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 237
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sa:Landroid/content/pm/ApplicationInfo;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sa:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v3, v4}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sb:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rS:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sb:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    :goto_3
    return-void

    .line 184
    :cond_3
    if-eqz v6, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rW:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 244
    goto :goto_2

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rQ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rQ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 241
    :catch_0
    move-exception v0

    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private fa()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 260
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 264
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03a8

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 266
    return-void
.end method

.method private fb()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 306
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rN:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    if-eqz v0, :cond_1

    move v2, v3

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rN:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    aget-wide v0, v0, v2

    const-wide/16 v6, 0x0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_0

    .line 307
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rN:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rN:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    aget-wide v7, v1, v2

    invoke-static {v0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 326
    :goto_3
    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 328
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rT:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 329
    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    const v7, 0x7f0800c2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 315
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    aget-wide v7, v1, v2

    invoke-static {v0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->b(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 316
    goto :goto_3

    .line 318
    :pswitch_2
    const-string v0, "%d%%"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rO:[D

    aget-wide v7, v4, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 319
    goto :goto_3

    .line 321
    :pswitch_3
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rY:Z

    goto :goto_2

    .line 335
    :cond_1
    return-void

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04cc
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fc()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 411
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_1
    return-void
.end method

.method private fd()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 423
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fe()V

    goto :goto_0
.end method

.method private fe()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 463
    :goto_0
    return-void

    :cond_1
    move v0, v5

    .line 441
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rL:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 441
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 447
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->be:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 450
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    .line 451
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rR:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 459
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sc:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 447
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private ff()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 489
    :goto_0
    return-void

    .line 468
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 469
    const/4 v3, 0x3

    iput v3, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 470
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 471
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sb:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 472
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rZ:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 474
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sa:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 477
    new-instance v3, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 478
    const-string v4, "percent"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 479
    const-string v1, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 480
    const-string v1, "report_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 481
    const-string v1, "report_checkin_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 482
    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sb:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rK:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rV:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Y(I)V

    .line 255
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->be:Landroid/content/pm/PackageManager;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->rL:Landroid/app/admin/DevicePolicyManager;

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->eZ()V

    .line 147
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 153
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 154
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fe()V

    .line 155
    return-void
.end method
