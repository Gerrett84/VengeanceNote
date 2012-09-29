.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static tK:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field mHandler:Landroid/os/Handler;

.field sT:Lcom/android/internal/os/BatteryStatsImpl;

.field tL:Lcom/android/internal/app/IBatteryStats;

.field private final tM:Ljava/util/List;

.field private final tN:Ljava/util/List;

.field private final tO:Ljava/util/List;

.field private tP:Landroid/preference/PreferenceGroup;

.field private tQ:Landroid/preference/Preference;

.field private tR:I

.field private tS:J

.field private tT:D

.field private tU:D

.field private tV:D

.field private tW:D

.field private tX:Lcom/android/internal/os/PowerProfile;

.field private tY:J

.field private tZ:Ljava/util/ArrayList;

.field private ua:Ljava/lang/Thread;

.field private ub:Z

.field private uc:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tN:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tO:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tS:J

    .line 100
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->uc:Landroid/content/BroadcastReceiver;

    .line 805
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tQ:Landroid/preference/Preference;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 765
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    cmpl-double v0, p6, v0

    if-lez v0, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    .line 766
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    add-double/2addr v0, p6

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    .line 767
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 769
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 770
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 771
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    return-object v0
.end method

.method private a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 668
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 670
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    .line 671
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zG:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zG:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zG:J

    .line 672
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zH:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zH:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zH:J

    .line 673
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    .line 674
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    .line 675
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    .line 676
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    .line 667
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private fB()V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 363
    const v1, 0x7f0b04ad

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 365
    return-void
.end method

.method private fC()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4059

    const-wide/16 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fG()V

    .line 371
    :cond_0
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    .line 372
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    .line 373
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tV:D

    .line 374
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tW:D

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tY:J

    .line 377
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tQ:Landroid/preference/Preference;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tQ:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 385
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 386
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 389
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v1, "screen.full"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fB()V

    .line 423
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fD()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fF()V

    .line 396
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 398
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 399
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    div-double/2addr v2, v4

    mul-double/2addr v2, v10

    .line 400
    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 401
    new-instance v4, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 402
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v5

    mul-double/2addr v5, v10

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    div-double/2addr v5, v7

    .line 403
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zM:D

    .line 404
    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    const v7, 0x7fffffff

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 406
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(DD)V

    .line 407
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zC:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_3

    .line 408
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zC:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 411
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    .line 413
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ua:Ljava/lang/Thread;

    if-nez v0, :cond_5

    .line 416
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "BatteryUsage Icon Loader"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ua:Ljava/lang/Thread;

    .line 417
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ua:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ua:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 422
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fD()V
    .locals 47

    .prologue
    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/hardware/SensorManager;

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    move/from16 v27, v0

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v28

    .line 430
    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v29, v0

    .line 431
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 432
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v3, v0, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.active"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fE()D

    move-result-wide v31

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v33

    .line 437
    const-wide/16 v4, 0x0

    .line 438
    const/4 v13, 0x0

    .line 439
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tS:J

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v35

    .line 441
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v36

    .line 442
    const/4 v3, 0x0

    move/from16 v24, v3

    move-wide/from16 v25, v4

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    .line 443
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 444
    const-wide/16 v14, 0x0

    .line 445
    const-wide/16 v8, 0x0

    .line 446
    const/4 v7, 0x0

    .line 448
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v11

    .line 449
    const-wide/16 v5, 0x0

    .line 450
    const-wide/16 v3, 0x0

    .line 451
    const-wide/16 v20, 0x0

    .line 452
    const-wide/16 v22, 0x0

    .line 453
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_17

    .line 456
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-wide/from16 v16, v14

    move-wide v14, v8

    move-object v9, v7

    move-wide v7, v5

    move-wide v5, v3

    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 459
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v18

    .line 460
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v38

    .line 461
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    .line 462
    const-wide/16 v42, 0xa

    mul-long v40, v40, v42

    add-long v5, v5, v40

    .line 463
    add-long v18, v18, v38

    const-wide/16 v38, 0xa

    mul-long v38, v38, v18

    .line 464
    const/16 v18, 0x0

    .line 466
    const/4 v11, 0x0

    move/from16 v45, v11

    move/from16 v11, v18

    move/from16 v18, v45

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 467
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v40

    aput-wide v40, v30, v18

    .line 468
    int-to-long v0, v11

    move-wide/from16 v40, v0

    aget-wide v42, v30, v18

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v19, v0

    .line 466
    add-int/lit8 v11, v18, 0x1

    move/from16 v18, v11

    move/from16 v11, v19

    goto :goto_3

    .line 470
    :cond_1
    if-nez v11, :cond_16

    const/4 v4, 0x1

    .line 472
    :goto_4
    const-wide/16 v18, 0x0

    .line 473
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v11, v0, :cond_2

    .line 474
    aget-wide v40, v30, v11

    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v4

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    .line 475
    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    aget-wide v42, v29, v11

    mul-double v40, v40, v42

    add-double v18, v18, v40

    .line 473
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 477
    :cond_2
    add-long v7, v7, v38

    .line 478
    add-double v16, v16, v18

    .line 479
    if-eqz v9, :cond_3

    const-string v4, "*"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v14, v18

    :goto_6
    move-object v9, v3

    .line 488
    goto/16 :goto_2

    .line 483
    :cond_4
    cmpg-double v4, v14, v18

    if-gez v4, :cond_15

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 486
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v14, v18

    goto :goto_6

    :cond_5
    move-wide v3, v7

    move-object v7, v9

    move-wide/from16 v45, v5

    move-wide/from16 v5, v16

    move-wide/from16 v16, v45

    .line 492
    :goto_7
    cmp-long v8, v16, v3

    if-lez v8, :cond_14

    move-wide/from16 v14, v16

    .line 498
    :goto_8
    const-wide v3, 0x408f400000000000L

    div-double v8, v5, v3

    .line 501
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 503
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v4, v20

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 507
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 508
    if-eqz v3, :cond_13

    .line 509
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v18

    add-long v3, v4, v18

    :goto_a
    move-wide v4, v3

    .line 511
    goto :goto_9

    .line 512
    :cond_6
    const-wide/16 v18, 0x3e8

    div-long v37, v4, v18

    .line 513
    add-long v25, v25, v37

    .line 516
    move-wide/from16 v0, v37

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.awake"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double/2addr v3, v8

    .line 520
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v39

    .line 521
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v41

    .line 522
    add-long v5, v39, v41

    long-to-double v5, v5

    mul-double v5, v5, v31

    add-double/2addr v3, v5

    .line 525
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v43, v5, v8

    .line 526
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tY:J

    add-long v5, v5, v43

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tY:J

    .line 527
    move-wide/from16 v0, v43

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double/2addr v3, v5

    .line 531
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v5

    .line 533
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v18, v22

    move-wide/from16 v20, v3

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 535
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v5

    .line 536
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 537
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    .line 538
    const-wide/16 v3, 0x0

    .line 539
    packed-switch v5, :pswitch_data_0

    .line 545
    invoke-virtual {v12, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 547
    if-eqz v5, :cond_12

    .line 548
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    float-to-double v3, v3

    move-wide v5, v3

    move-wide/from16 v3, v18

    .line 555
    :goto_c
    long-to-double v8, v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double v5, v5, v20

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 556
    goto :goto_b

    .line 541
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v5, v3

    move-wide v3, v8

    .line 543
    goto :goto_c

    .line 561
    :cond_7
    const-wide/16 v3, 0x0

    cmpl-double v3, v20, v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_11

    .line 562
    :cond_8
    new-instance v3, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yM:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v9, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [D

    const/16 v22, 0x0

    aput-wide v20, v11, v22

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 565
    iput-wide v14, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    .line 566
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zG:J

    .line 567
    move-wide/from16 v0, v43

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zH:J

    .line 568
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    .line 569
    move-wide/from16 v0, v37

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    .line 570
    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    .line 571
    move-wide/from16 v0, v41

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    .line 572
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_9

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tN:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :goto_d
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    if-nez v4, :cond_11

    .line 583
    :goto_e
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_b

    .line 584
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tV:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tV:D

    .line 442
    :goto_f
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    move-object v13, v3

    goto/16 :goto_1

    .line 574
    :cond_9
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_a

    .line 575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tO:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tM:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 585
    :cond_b
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_c

    .line 586
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tW:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tW:D

    goto :goto_f

    .line 588
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    cmpl-double v4, v20, v4

    if-lez v4, :cond_d

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    .line 589
    :cond_d
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    goto :goto_f

    .line 597
    :cond_e
    if-eqz v13, :cond_10

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    add-long v5, v5, v25

    sub-long/2addr v3, v5

    .line 602
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_10

    .line 603
    long-to-double v5, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v8, "cpu.awake"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    .line 606
    iget-wide v7, v13, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    add-long/2addr v3, v7

    iput-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    .line 607
    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double/2addr v3, v5

    iput-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 608
    iget-object v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->zD:[D

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    add-double/2addr v7, v5

    aput-wide v7, v3, v4

    .line 609
    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    cmpl-double v3, v3, v7

    if-lez v3, :cond_f

    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    .line 610
    :cond_f
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    .line 613
    :cond_10
    return-void

    :cond_11
    move-object v3, v13

    goto/16 :goto_e

    :cond_12
    move-wide v5, v3

    move-wide/from16 v3, v18

    goto/16 :goto_c

    :cond_13
    move-wide v3, v4

    goto/16 :goto_a

    :cond_14
    move-wide v14, v3

    goto/16 :goto_8

    :cond_15
    move-object v3, v9

    goto/16 :goto_6

    :cond_16
    move v4, v11

    goto/16 :goto_4

    :cond_17
    move-wide/from16 v16, v3

    move-wide v3, v5

    move-wide v5, v14

    goto/16 :goto_7

    .line 539
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private fE()D
    .locals 14

    .prologue
    .line 718
    .line 720
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 722
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 724
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 726
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 728
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 729
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 733
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 734
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 735
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 736
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 739
    :goto_1
    return-wide v0

    .line 729
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 739
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private fF()V
    .locals 5

    .prologue
    .line 744
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 746
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v0

    .line 752
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k(J)V

    .line 753
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->l(J)V

    .line 754
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->n(J)V

    .line 755
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->p(J)V

    .line 756
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->o(J)V

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->m(J)V

    .line 761
    :cond_0
    return-void
.end method

.method private fG()V
    .locals 4

    .prologue
    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tL:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 779
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 780
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 781
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    .line 783
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private k(J)V
    .locals 8
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 617
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020086

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 621
    return-void
.end method

.method private l(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 624
    const-wide/16 v0, 0x0

    .line 625
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v3, v2, v11

    .line 626
    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v0, v5

    .line 627
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 629
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_0

    .line 630
    int-to-float v7, v0

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    .line 632
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v9, v0, p1, p2, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 633
    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double v6, v1, v5

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007b

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 642
    return-void
.end method

.method private m(J)V
    .locals 11
    .parameter

    .prologue
    .line 645
    const-wide/16 v1, 0x0

    .line 647
    const-wide/16 v3, 0x0

    .line 648
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 649
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v5, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 650
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    long-to-double v7, v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v10, "radio.on"

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 652
    add-long/2addr v3, v5

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 655
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020077

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 660
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/BatterySipper;->zN:D

    .line 664
    :cond_1
    return-void
.end method

.method private n(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 681
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 682
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 685
    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tY:J

    sub-long v3, v2, v7

    .line 686
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 687
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yJ:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020087

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tV:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tN:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private o(J)V
    .locals 8
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 698
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yG:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020080

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 702
    return-void
.end method

.method private p(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 705
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 706
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 708
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 709
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->yK:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020075

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tW:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tO:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 715
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tK:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    .line 138
    :cond_0
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 139
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tL:Lcom/android/internal/app/IBatteryStats;

    .line 141
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    .line 142
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tP:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tQ:Landroid/preference/Preference;

    .line 143
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tX:Lcom/android/internal/os/PowerProfile;

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 324
    const/4 v0, 0x2

    const v1, 0x7f0b04ed

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 327
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0660

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x3

    const v2, 0x7f0b0659

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 333
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    const/high16 v0, 0x1080

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 337
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 339
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tK:Lcom/android/internal/os/BatteryStatsImpl;

    .line 172
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 357
    :goto_0
    return v0

    .line 345
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    if-nez v2, :cond_0

    .line 346
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    .line 350
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fC()V

    goto :goto_0

    .line 348
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    goto :goto_1

    .line 353
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    .line 354
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fC()V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    monitor-enter v1

    .line 159
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ub:Z

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->uc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 164
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 176
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 180
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 181
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 183
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04be

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 187
    :cond_0
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 190
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->hW()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tU:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->hG()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tT:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tS:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zO:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zN:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 202
    iget-object v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zC:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zC:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    :cond_2
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 209
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->ds:[I

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v4, 0x7f0b04d3

    aput v4, v1, v0

    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    .line 307
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 308
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 310
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04bf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 313
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 212
    :pswitch_0
    iget-object v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zC:Landroid/os/BatteryStats$Uid;

    .line 213
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 224
    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x3

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zG:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x4

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zH:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    const/16 v3, 0x8

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    .line 236
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 237
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 238
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 239
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 242
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 243
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sT:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tR:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 244
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 249
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zN:D

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 261
    :pswitch_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 269
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 280
    :pswitch_3
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 288
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zF:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zI:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zJ:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zL:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->zK:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 213
    :array_0
    .array-data 0x4
        0xc9t 0x4t 0xbt 0x7ft
        0xcat 0x4t 0xbt 0x7ft
        0xcbt 0x4t 0xbt 0x7ft
        0xcct 0x4t 0xbt 0x7ft
        0xcdt 0x4t 0xbt 0x7ft
        0xcft 0x4t 0xbt 0x7ft
        0xd0t 0x4t 0xbt 0x7ft
        0xd1t 0x4t 0xbt 0x7ft
        0xd2t 0x4t 0xbt 0x7ft
    .end array-data

    .line 249
    :array_1
    .array-data 0x4
        0xd3t 0x4t 0xbt 0x7ft
        0xd4t 0x4t 0xbt 0x7ft
    .end array-data

    .line 261
    :array_2
    .array-data 0x4
        0xcdt 0x4t 0xbt 0x7ft
        0xc9t 0x4t 0xbt 0x7ft
        0xcat 0x4t 0xbt 0x7ft
        0xcbt 0x4t 0xbt 0x7ft
        0xcft 0x4t 0xbt 0x7ft
        0xd0t 0x4t 0xbt 0x7ft
    .end array-data

    .line 280
    :array_3
    .array-data 0x4
        0xd3t 0x4t 0xbt 0x7ft
        0xc9t 0x4t 0xbt 0x7ft
        0xcat 0x4t 0xbt 0x7ft
        0xcbt 0x4t 0xbt 0x7ft
        0xcft 0x4t 0xbt 0x7ft
        0xd0t 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ub:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->uc:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->fC()V

    .line 154
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 792
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ub:Z

    if-eqz v0, :cond_1

    .line 794
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ua:Ljava/lang/Thread;

    .line 795
    monitor-exit v1

    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->tZ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 798
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->hH()V

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
