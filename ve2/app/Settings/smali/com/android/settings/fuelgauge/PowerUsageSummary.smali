.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static ry:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field mHandler:Landroid/os/Handler;

.field qI:Lcom/android/internal/os/BatteryStatsImpl;

.field private final rA:Ljava/util/List;

.field private final rB:Ljava/util/List;

.field private final rC:Ljava/util/List;

.field private rD:Landroid/preference/PreferenceGroup;

.field private rE:Landroid/preference/Preference;

.field private rF:I

.field private rG:J

.field private rH:D

.field private rI:D

.field private rJ:D

.field private rK:D

.field private rL:Lcom/android/internal/os/PowerProfile;

.field private rM:J

.field private rN:Ljava/util/ArrayList;

.field private rO:Ljava/lang/Thread;

.field private rP:Z

.field private rQ:Landroid/content/BroadcastReceiver;

.field rz:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rB:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rC:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rG:J

    .line 97
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rQ:Landroid/content/BroadcastReceiver;

    .line 792
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rE:Landroid/preference/Preference;

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
    .line 752
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    cmpl-double v0, p6, v0

    if-lez v0, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    .line 753
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    add-double/2addr v0, p6

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    .line 754
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

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

    .line 756
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 757
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 758
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    return-object v0
.end method

.method private a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 654
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 655
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 657
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    .line 658
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wD:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wD:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wD:J

    .line 659
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wE:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wE:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wE:J

    .line 660
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    .line 661
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    .line 662
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    .line 663
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    .line 654
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method

.method private ev()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 350
    const v1, 0x7f0b0467

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 352
    return-void
.end method

.method private ew()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4059

    const-wide/16 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 358
    :cond_0
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    .line 359
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    .line 360
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rJ:D

    .line 361
    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rK:D

    .line 362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rM:J

    .line 364
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rE:Landroid/preference/Preference;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rE:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 373
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v1, "screen.full"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ev()V

    .line 410
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ex()V

    .line 381
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ez()V

    .line 383
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 385
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 386
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    div-double/2addr v2, v4

    mul-double/2addr v2, v10

    .line 387
    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 388
    new-instance v4, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 389
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v5

    mul-double/2addr v5, v10

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    div-double/2addr v5, v7

    .line 390
    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wJ:D

    .line 391
    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    const v7, 0x7fffffff

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 393
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(DD)V

    .line 394
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wz:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_3

    .line 395
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wz:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 398
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/16 v2, 0xb

    if-le v0, v2, :cond_2

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rO:Ljava/lang/Thread;

    if-nez v0, :cond_5

    .line 403
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "BatteryUsage Icon Loader"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rO:Ljava/lang/Thread;

    .line 404
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rO:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rO:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 409
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

.method private ex()V
    .locals 47

    .prologue
    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/hardware/SensorManager;

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    move/from16 v27, v0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v28

    .line 417
    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v29, v0

    .line 418
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v30, v0

    .line 419
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v3, v0, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.active"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ey()D

    move-result-wide v31

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v33

    .line 424
    const-wide/16 v4, 0x0

    .line 425
    const/4 v13, 0x0

    .line 426
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rG:J

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v35

    .line 428
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v36

    .line 429
    const/4 v3, 0x0

    move/from16 v24, v3

    move-wide/from16 v25, v4

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    .line 430
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 431
    const-wide/16 v14, 0x0

    .line 432
    const-wide/16 v8, 0x0

    .line 433
    const/4 v7, 0x0

    .line 435
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v11

    .line 436
    const-wide/16 v5, 0x0

    .line 437
    const-wide/16 v3, 0x0

    .line 438
    const-wide/16 v20, 0x0

    .line 439
    const-wide/16 v22, 0x0

    .line 440
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_17

    .line 443
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

    .line 445
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 446
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v18

    .line 447
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v38

    .line 448
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    .line 449
    const-wide/16 v42, 0xa

    mul-long v40, v40, v42

    add-long v5, v5, v40

    .line 450
    add-long v18, v18, v38

    const-wide/16 v38, 0xa

    mul-long v38, v38, v18

    .line 451
    const/16 v18, 0x0

    .line 453
    const/4 v11, 0x0

    move/from16 v45, v11

    move/from16 v11, v18

    move/from16 v18, v45

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 454
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v40

    aput-wide v40, v30, v18

    .line 455
    int-to-long v0, v11

    move-wide/from16 v40, v0

    aget-wide v42, v30, v18

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v19, v0

    .line 453
    add-int/lit8 v11, v18, 0x1

    move/from16 v18, v11

    move/from16 v11, v19

    goto :goto_3

    .line 457
    :cond_1
    if-nez v11, :cond_16

    const/4 v4, 0x1

    .line 459
    :goto_4
    const-wide/16 v18, 0x0

    .line 460
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v11, v0, :cond_2

    .line 461
    aget-wide v40, v30, v11

    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v4

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    .line 462
    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    aget-wide v42, v29, v11

    mul-double v40, v40, v42

    add-double v18, v18, v40

    .line 460
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 464
    :cond_2
    add-long v7, v7, v38

    .line 465
    add-double v16, v16, v18

    .line 466
    if-eqz v9, :cond_3

    const-string v4, "*"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 469
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-wide/from16 v14, v18

    :goto_6
    move-object v9, v3

    .line 475
    goto/16 :goto_2

    .line 470
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

    .line 473
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

    .line 479
    :goto_7
    cmp-long v8, v16, v3

    if-lez v8, :cond_14

    move-wide/from16 v14, v16

    .line 485
    :goto_8
    const-wide v3, 0x408f400000000000L

    div-double v8, v5, v3

    .line 488
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 490
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

    .line 491
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 494
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 495
    if-eqz v3, :cond_13

    .line 496
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v18

    add-long v3, v4, v18

    :goto_a
    move-wide v4, v3

    .line 498
    goto :goto_9

    .line 499
    :cond_6
    const-wide/16 v18, 0x3e8

    div-long v37, v4, v18

    .line 500
    add-long v25, v25, v37

    .line 503
    move-wide/from16 v0, v37

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.awake"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double/2addr v3, v8

    .line 507
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v39

    .line 508
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v41

    .line 509
    add-long v5, v39, v41

    long-to-double v5, v5

    mul-double v5, v5, v31

    add-double/2addr v3, v5

    .line 512
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v43, v5, v8

    .line 513
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rM:J

    add-long v5, v5, v43

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rM:J

    .line 514
    move-wide/from16 v0, v43

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double/2addr v3, v5

    .line 518
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v5

    .line 520
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

    .line 521
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 522
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v5

    .line 523
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 524
    move-wide/from16 v0, v33

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    .line 525
    const-wide/16 v3, 0x0

    .line 526
    packed-switch v5, :pswitch_data_0

    .line 532
    invoke-virtual {v12, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 534
    if-eqz v5, :cond_12

    .line 535
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    float-to-double v3, v3

    move-wide v5, v3

    move-wide/from16 v3, v18

    .line 542
    :goto_c
    long-to-double v8, v8

    mul-double/2addr v5, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v5, v8

    add-double v5, v5, v20

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 543
    goto :goto_b

    .line 528
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v5, v3

    move-wide v3, v8

    .line 530
    goto :goto_c

    .line 548
    :cond_7
    const-wide/16 v3, 0x0

    cmpl-double v3, v20, v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_11

    .line 549
    :cond_8
    new-instance v3, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v9, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [D

    const/16 v22, 0x0

    aput-wide v20, v11, v22

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 552
    iput-wide v14, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    .line 553
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wD:J

    .line 554
    move-wide/from16 v0, v43

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wE:J

    .line 555
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    .line 556
    move-wide/from16 v0, v37

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    .line 557
    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    .line 558
    move-wide/from16 v0, v41

    iput-wide v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    .line 559
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_9

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rB:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_d
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    if-nez v4, :cond_11

    .line 570
    :goto_e
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x3f2

    if-ne v4, v5, :cond_b

    .line 571
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rJ:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rJ:D

    .line 429
    :goto_f
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    move-object v13, v3

    goto/16 :goto_1

    .line 561
    :cond_9
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rC:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 564
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rA:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 572
    :cond_b
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rK:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rK:D

    goto :goto_f

    .line 575
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    cmpl-double v4, v20, v4

    if-lez v4, :cond_d

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    .line 576
    :cond_d
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    add-double v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    goto :goto_f

    .line 584
    :cond_e
    if-eqz v13, :cond_10

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move/from16 v0, v27

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 587
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    add-long v5, v5, v25

    sub-long/2addr v3, v5

    .line 589
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_10

    .line 590
    long-to-double v5, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v8, "cpu.awake"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    .line 593
    iget-wide v7, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    add-long/2addr v3, v7

    iput-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    .line 594
    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double/2addr v3, v5

    iput-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 595
    iget-object v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->wA:[D

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    add-double/2addr v7, v5

    aput-wide v7, v3, v4

    .line 596
    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    cmpl-double v3, v3, v7

    if-lez v3, :cond_f

    iget-wide v3, v13, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    .line 597
    :cond_f
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    .line 600
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

    .line 526
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private ey()D
    .locals 14

    .prologue
    .line 705
    .line 707
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 709
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 711
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 713
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 715
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 716
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 720
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 721
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 722
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 723
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 726
    :goto_1
    return-wide v0

    .line 716
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 726
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private ez()V
    .locals 5

    .prologue
    .line 731
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 733
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v0

    .line 739
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i(J)V

    .line 740
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->j(J)V

    .line 741
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->l(J)V

    .line 742
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->n(J)V

    .line 743
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->m(J)V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ci;->G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k(J)V

    .line 748
    :cond_0
    return-void
.end method

.method private i(J)V
    .locals 8
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 604
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0481

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vJ:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020085

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 608
    return-void
.end method

.method private j(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 611
    const-wide/16 v0, 0x0

    .line 612
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v3, v2, v11

    .line 613
    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v0, v5

    .line 614
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 616
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_0

    .line 617
    int-to-float v7, v0

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    .line 619
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v9, v0, p1, p2, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 620
    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double v6, v1, v5

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b047d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vM:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007a

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 629
    return-void
.end method

.method private k(J)V
    .locals 11
    .parameter

    .prologue
    .line 632
    const-wide/16 v1, 0x0

    .line 634
    const-wide/16 v3, 0x0

    .line 635
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 636
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v5, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 637
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    long-to-double v7, v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v10, "radio.on"

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 639
    add-long/2addr v3, v5

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 642
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0480

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020076

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 647
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wK:D

    .line 651
    :cond_1
    return-void
.end method

.method private l(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 669
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 672
    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rM:J

    sub-long v3, v2, v7

    .line 673
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 674
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b047e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vK:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020086

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rJ:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rB:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method private load()V
    .locals 4

    .prologue
    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rz:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 766
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 767
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 768
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    .line 770
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private m(J)V
    .locals 8
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 685
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 689
    return-void
.end method

.method private n(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 692
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 693
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 695
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 696
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b047f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020074

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rK:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rC:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 702
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ry:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    .line 135
    :cond_0
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 136
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rz:Lcom/android/internal/app/IBatteryStats;

    .line 138
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    .line 139
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rD:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rE:Landroid/preference/Preference;

    .line 140
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rL:Lcom/android/internal/os/PowerProfile;

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 321
    const/4 v0, 0x2

    const v1, 0x7f0b04a7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 324
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ry:Lcom/android/internal/os/BatteryStatsImpl;

    .line 169
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 344
    :goto_0
    return v0

    .line 332
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    if-nez v2, :cond_0

    .line 333
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    .line 337
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ew()V

    goto :goto_0

    .line 335
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    goto :goto_1

    .line 340
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    .line 341
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ew()V

    goto :goto_0

    .line 330
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

    .line 155
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    monitor-enter v1

    .line 156
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rP:Z

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rQ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 161
    return-void

    .line 157
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
    .line 173
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 177
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 180
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0478

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    .line 184
    :cond_0
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 185
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 187
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 188
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->gn()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 189
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 190
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rI:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySipper;->fZ()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rH:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rG:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wL:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wK:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 199
    iget-object v0, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wz:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wz:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    :cond_2
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wB:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->da:[I

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wB:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v4, 0x7f0b048d

    aput v4, v1, v0

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    .line 304
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 305
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 307
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0479

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 209
    :pswitch_0
    iget-object v4, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wz:Landroid/os/BatteryStats$Uid;

    .line 210
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 221
    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x3

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wD:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x4

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wE:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    const/16 v3, 0x8

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    .line 233
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 234
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 235
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 236
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 239
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 240
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->qI:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rF:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 241
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wK:D

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 258
    :pswitch_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 266
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 277
    :pswitch_3
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 285
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wC:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wF:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wG:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wI:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/settings/fuelgauge/BatterySipper;->wH:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 210
    :array_0
    .array-data 0x4
        0x83t 0x4t 0xbt 0x7ft
        0x84t 0x4t 0xbt 0x7ft
        0x85t 0x4t 0xbt 0x7ft
        0x86t 0x4t 0xbt 0x7ft
        0x87t 0x4t 0xbt 0x7ft
        0x89t 0x4t 0xbt 0x7ft
        0x8at 0x4t 0xbt 0x7ft
        0x8bt 0x4t 0xbt 0x7ft
        0x8ct 0x4t 0xbt 0x7ft
    .end array-data

    .line 246
    :array_1
    .array-data 0x4
        0x8dt 0x4t 0xbt 0x7ft
        0x8et 0x4t 0xbt 0x7ft
    .end array-data

    .line 258
    :array_2
    .array-data 0x4
        0x87t 0x4t 0xbt 0x7ft
        0x83t 0x4t 0xbt 0x7ft
        0x84t 0x4t 0xbt 0x7ft
        0x85t 0x4t 0xbt 0x7ft
        0x89t 0x4t 0xbt 0x7ft
        0x8at 0x4t 0xbt 0x7ft
    .end array-data

    .line 277
    :array_3
    .array-data 0x4
        0x8dt 0x4t 0xbt 0x7ft
        0x83t 0x4t 0xbt 0x7ft
        0x84t 0x4t 0xbt 0x7ft
        0x85t 0x4t 0xbt 0x7ft
        0x89t 0x4t 0xbt 0x7ft
        0x8at 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rP:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rQ:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->ew()V

    .line 151
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 779
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    monitor-enter v1

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rP:Z

    if-eqz v0, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rO:Ljava/lang/Thread;

    .line 782
    monitor-exit v1

    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rN:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 785
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->ga()V

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
