.class public Lcom/android/settings/sound/a;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private h:I

.field private i:Landroid/media/Ringtone;

.field private j:I

.field private k:Landroid/widget/SeekBar;

.field private l:I

.field private m:Landroid/database/ContentObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStreamType:I

.field final synthetic n:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/a;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 410
    iput-object p1, p0, Lcom/android/settings/sound/a;->n:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    .line 389
    iput v1, p0, Lcom/android/settings/sound/a;->j:I

    .line 391
    iput v1, p0, Lcom/android/settings/sound/a;->l:I

    .line 393
    new-instance v0, Lcom/android/settings/sound/d;

    iget-object v1, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/d;-><init>(Lcom/android/settings/sound/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sound/a;->m:Landroid/database/ContentObserver;

    .line 411
    iput-object p2, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    .line 412
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    .line 413
    iput p4, p0, Lcom/android/settings/sound/a;->mStreamType:I

    .line 414
    iput-object p3, p0, Lcom/android/settings/sound/a;->k:Landroid/widget/SeekBar;

    .line 416
    invoke-direct {p0, p3, p5}, Lcom/android/settings/sound/a;->a(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/a;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/a;->k:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private a(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/a;->h:I

    .line 422
    iget v0, p0, Lcom/android/settings/sound/a;->h:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/sound/a;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/a;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 429
    if-nez p2, :cond_0

    .line 430
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 431
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 439
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/settings/sound/a;->n:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {v0, v1, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    .line 440
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 445
    :cond_1
    return-void

    .line 432
    :cond_2
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 433
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 435
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/a;)I
    .locals 1
    .parameter

    .prologue
    .line 379
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    return v0
.end method


# virtual methods
.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    if-nez p3, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/a;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 2
    .parameter

    .prologue
    .line 539
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 540
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings/sound/a;->h:I

    .line 541
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings/sound/a;->j:I

    .line 542
    iget v0, p0, Lcom/android/settings/sound/a;->j:I

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/a;->postSetVolume(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iget v0, p0, Lcom/android/settings/sound/a;->j:I

    if-ltz v0, :cond_0

    .line 533
    iget v0, p0, Lcom/android/settings/sound/a;->j:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 534
    iget v0, p0, Lcom/android/settings/sound/a;->h:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 536
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->startSample()V

    .line 480
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter

    .prologue
    .line 468
    iput p1, p0, Lcom/android/settings/sound/a;->j:I

    .line 469
    iget-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    iget v2, p0, Lcom/android/settings/sound/a;->j:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 484
    return-void
.end method

.method public startSample()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings/sound/a;->n:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity;->d(Lcom/android/settings/sound/a;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 496
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->stopSample()V

    .line 449
    iget-object v0, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/a;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/sound/a;->k:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 451
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 502
    :cond_0
    return-void
.end method
