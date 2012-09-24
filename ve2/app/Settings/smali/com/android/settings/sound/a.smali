.class public Lcom/android/settings/sound/a;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private f:I

.field private g:Landroid/media/Ringtone;

.field private h:I

.field private i:Landroid/widget/SeekBar;

.field private j:I

.field private k:Landroid/database/ContentObserver;

.field final synthetic l:Lcom/android/settings/sound/RingerVolumeActivity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/a;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 400
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

    .line 402
    iput-object p1, p0, Lcom/android/settings/sound/a;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    .line 381
    iput v1, p0, Lcom/android/settings/sound/a;->h:I

    .line 383
    iput v1, p0, Lcom/android/settings/sound/a;->j:I

    .line 385
    new-instance v0, Lcom/android/settings/sound/d;

    iget-object v1, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/d;-><init>(Lcom/android/settings/sound/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sound/a;->k:Landroid/database/ContentObserver;

    .line 403
    iput-object p2, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    .line 404
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    .line 405
    iput p4, p0, Lcom/android/settings/sound/a;->mStreamType:I

    .line 406
    iput-object p3, p0, Lcom/android/settings/sound/a;->i:Landroid/widget/SeekBar;

    .line 408
    invoke-direct {p0, p3, p5}, Lcom/android/settings/sound/a;->a(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 409
    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/a;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private a(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/a;->f:I

    .line 414
    iget v0, p0, Lcom/android/settings/sound/a;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 415
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/sound/a;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/sound/a;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 421
    if-nez p2, :cond_0

    .line 422
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 423
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 431
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    .line 433
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 436
    :cond_1
    return-void

    .line 424
    :cond_2
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 425
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 427
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/a;)I
    .locals 1
    .parameter

    .prologue
    .line 371
    iget v0, p0, Lcom/android/settings/sound/a;->mStreamType:I

    return v0
.end method


# virtual methods
.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

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
    .line 450
    if-nez p3, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/a;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 2
    .parameter

    .prologue
    .line 529
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 530
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings/sound/a;->f:I

    .line 531
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings/sound/a;->h:I

    .line 532
    iget v0, p0, Lcom/android/settings/sound/a;->h:I

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/a;->postSetVolume(I)V

    .line 534
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 1
    .parameter

    .prologue
    .line 522
    iget v0, p0, Lcom/android/settings/sound/a;->h:I

    if-ltz v0, :cond_0

    .line 523
    iget v0, p0, Lcom/android/settings/sound/a;->h:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 524
    iget v0, p0, Lcom/android/settings/sound/a;->f:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 526
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->startSample()V

    .line 471
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter

    .prologue
    .line 459
    iput p1, p0, Lcom/android/settings/sound/a;->h:I

    .line 460
    iget-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/sound/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/sound/a;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/a;->mStreamType:I

    iget v2, p0, Lcom/android/settings/sound/a;->h:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 475
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/sound/a;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity;->d(Lcom/android/settings/sound/a;)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 486
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/settings/sound/a;->stopSample()V

    .line 440
    iget-object v0, p0, Lcom/android/settings/sound/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/a;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/sound/a;->i:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 442
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/settings/sound/a;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 492
    :cond_0
    return-void
.end method
