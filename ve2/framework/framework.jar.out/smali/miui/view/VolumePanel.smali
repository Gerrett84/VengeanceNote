.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$VolumeChangeInfo;,
        Lmiui/view/VolumePanel$StreamControl;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lmiui/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x3e8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDivider:Landroid/view/View;

.field mLastAudibleRingVolume:I

.field private mMoreButton:Landroid/view/View;

.field private mPanel:Landroid/view/ViewGroup;

.field mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeChanged:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    sput-boolean v2, Lmiui/view/VolumePanel;->LOGD:Z

    .line 194
    const/16 v0, 0x8

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MasterStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RemoteStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 2
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 227
    iput v0, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 990
    iput v1, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 991
    iput v1, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 220
    iput-object p1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 221
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 222
    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 223
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 224
    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Lmiui/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 417
    iget-boolean v3, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 429
    :cond_0
    return-void

    .line 419
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 421
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 422
    .local v2, streamType:I
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lmiui/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 419
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_3
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 426
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 427
    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    iget-object v2, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 469
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 470
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 369
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 371
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 372
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 373
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 374
    sget-object v7, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 375
    .local v5, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v6, v5, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 376
    .local v6, streamType:I
    iget-boolean v7, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    sget-object v7, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    if-ne v5, v7, :cond_0

    .line 377
    sget-object v5, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    .line 379
    :cond_0
    new-instance v4, Lmiui/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V

    .line 380
    .local v4, sc:Lmiui/view/VolumePanel$StreamControl;
    iput v6, v4, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 381
    const v7, 0x6030029

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 382
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 383
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x60b0011

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 384
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 385
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 386
    iget v7, v5, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 387
    iget v7, v5, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 388
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x60b0012

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 390
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 392
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 393
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 394
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 395
    iget-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v2           #plusOne:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 397
    .end local v4           #sc:Lmiui/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_3
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 457
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 458
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 459
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v2, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 950
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 951
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 952
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 840
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 852
    :goto_0
    return-object v1

    .line 841
    :cond_0
    monitor-enter p0

    .line 842
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 844
    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 852
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 847
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 339
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 340
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 344
    :goto_0
    return v0

    .line 341
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 342
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 349
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 354
    :goto_0
    return v0

    .line 351
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 352
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 329
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 331
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 332
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 400
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 402
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 403
    .local v0, active:Lmiui/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 404
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 413
    :goto_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->addOtherVolumes()V

    .line 414
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 409
    iget-object v1, v0, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 945
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 946
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 947
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 862
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 863
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 864
    iput p1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 865
    iput p2, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 866
    iget-object v2, v0, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    :cond_0
    return-void

    .line 866
    :cond_1
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 359
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 360
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 366
    :goto_0
    return-void

    .line 361
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 362
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Lmiui/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 433
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 434
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 435
    .local v0, muted:Z
    iget-object v4, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 436
    iget-object v4, p1, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 439
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v4, 0x6020117

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    :cond_0
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/16 v4, -0xc8

    if-ne v1, v4, :cond_3

    .line 444
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 450
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 435
    goto :goto_0

    .line 436
    :cond_2
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 445
    :cond_3
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v1, v4, :cond_4

    if-eqz v0, :cond_4

    .line 446
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 448
    :cond_4
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 475
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 476
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 477
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/VolumePanel$StreamControl;

    .line 478
    .local v2, sc:Lmiui/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v2           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 883
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 886
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    goto :goto_0

    .line 891
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 896
    :pswitch_2
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 901
    :pswitch_3
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 906
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 911
    :pswitch_5
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 916
    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 918
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 923
    :pswitch_7
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 930
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 935
    :pswitch_9
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 939
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 984
    iget-object v0, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 985
    invoke-direct {p0}, Lmiui/view/VolumePanel;->expand()V

    .line 987
    :cond_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 988
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 871
    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 873
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 876
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 872
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 878
    :cond_1
    monitor-exit p0

    .line 879
    return-void

    .line 878
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 605
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 608
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 609
    iget-object v2, v0, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    :cond_1
    new-instance v1, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v1, v4, v4}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, p1, p2, v1}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    .line 613
    return-void

    .line 609
    :cond_2
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 732
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 735
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 738
    :cond_0
    monitor-enter p0

    .line 739
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 740
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 741
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 742
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 744
    :cond_1
    monitor-exit p0

    .line 745
    return-void

    .line 744
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 957
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lmiui/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 958
    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 959
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 960
    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lmiui/view/VolumePanel;->setStreamVolume(III)V

    .line 963
    .end local v0           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 964
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 774
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 777
    :cond_1
    monitor-enter p0

    .line 778
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 779
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->reorderSliders(I)V

    .line 781
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 782
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 788
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 789
    invoke-virtual {p0, v4, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 792
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 793
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 794
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 795
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 798
    :cond_5
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 799
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 801
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 802
    return-void

    .line 782
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 784
    :cond_6
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 805
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 811
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v11, 0x6020020

    const/4 v5, 0x0

    const/16 v10, -0xc8

    const/4 v6, 0x1

    .line 616
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 618
    .local v0, index:I
    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    .line 620
    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 621
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 629
    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    .line 695
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumePanel$StreamControl;

    .line 696
    .local v3, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 697
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v7, v1, :cond_2

    .line 698
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 700
    :cond_2
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 701
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v7

    if-eq p1, v7, :cond_8

    if-eq p1, v10, :cond_8

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 703
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 709
    :cond_3
    :goto_1
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 710
    if-ne p1, v10, :cond_a

    const/4 v4, -0x1

    .line 712
    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 713
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 715
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_4

    .line 716
    invoke-direct {p0}, Lmiui/view/VolumePanel;->collapse()V

    .line 718
    :cond_4
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 722
    .end local v4           #stream:I
    :cond_5
    if-eq p1, v10, :cond_6

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 726
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 728
    :cond_6
    return-void

    .line 633
    .end local v3           #sc:Lmiui/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 635
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 636
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 643
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_7

    .line 647
    const v7, 0x6020156

    const v8, 0x6020157

    invoke-direct {p0, v7, v8}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 649
    :cond_7
    invoke-direct {p0, v11, v11}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 660
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 661
    add-int/lit8 v1, v1, 0x1

    .line 662
    goto/16 :goto_0

    .line 670
    :sswitch_4
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 672
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 673
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 684
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 686
    goto/16 :goto_0

    .line 690
    :sswitch_6
    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 705
    .restart local v3       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_8
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v8

    if-nez v8, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v4, p1

    .line 710
    goto/16 :goto_2

    .line 629
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 822
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    if-ne p2, v1, :cond_2

    .line 824
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 825
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 826
    .local v2, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v3, v2, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 827
    iput-boolean v1, v2, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 828
    if-nez v1, :cond_1

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 829
    const/4 v3, -0x1

    iput v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 823
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 824
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 822
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 967
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 751
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 752
    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 753
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 751
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 757
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 758
    return-void

    .line 757
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 970
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 971
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lmiui/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 972
    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 977
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 978
    invoke-direct {p0, v3}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 981
    .end local v0           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 763
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"
    .parameter "vc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 571
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 576
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->reorderSliders(I)V

    .line 578
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 580
    if-ne v3, p1, :cond_2

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_2

    .line 581
    iget v0, p3, Lmiui/view/VolumePanel$VolumeChangeInfo;->mFromVolume:I

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 583
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 587
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 588
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 591
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 592
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 593
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 594
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 597
    :cond_5
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 598
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 601
    return-void

    .line 583
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 539
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 561
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postMuteChanged(II)V

    .line 562
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 546
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 547
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 551
    :cond_0
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 553
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createSliders()V

    .line 555
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 557
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 523
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 525
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 512
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 513
    :cond_0
    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 515
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createSliders()V

    .line 517
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 519
    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 7
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, from:I
    const/4 v2, 0x0

    .line 485
    .local v2, to:I
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 486
    iget v0, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 487
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 488
    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 490
    :cond_0
    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 494
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createSliders()V

    .line 496
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 499
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 500
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_4

    .line 501
    iput p1, v1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 502
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .end local v1           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 508
    new-instance v3, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v3, v0, v2}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, v6, p1, p2, v3}, Lmiui/view/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 504
    .restart local v1       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_4
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown stream type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not bind any streamcontrol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public recreateIfNeeded()V
    .locals 12

    .prologue
    .line 229
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 230
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    const/4 v5, 0x0

    .line 231
    .local v5, themeChanged:I
    :goto_0
    iget v9, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    if-ne v9, v5, :cond_1

    .line 310
    :goto_1
    return-void

    .line 230
    .end local v5           #themeChanged:I
    :cond_0
    iget-object v9, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v5, v9, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    goto :goto_0

    .line 233
    .restart local v5       #themeChanged:I
    :cond_1
    iput v5, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 234
    const/4 v9, 0x0

    iput-object v9, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 236
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 238
    .local v6, useMasterVolume:Z
    if-eqz v6, :cond_3

    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 240
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v4, v9, v1

    .line 241
    .local v4, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v9, v4, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, v4, Lmiui/view/VolumePanel$StreamResources;->show:Z

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 245
    .end local v1           #i:I
    .end local v4           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_3
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 247
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x6030028

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 248
    .local v7, view:Landroid/view/View;
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lmiui/view/VolumePanel$1;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b000d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 255
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b000e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 256
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b000f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 257
    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b0010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 259
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_4

    .line 260
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 274
    :goto_4
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 276
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Lmiui/view/VolumePanel$3;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 288
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 289
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 290
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 292
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x60a001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 294
    const/16 v9, 0x7e4

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 295
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 298
    const v9, 0x40028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 301
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    .line 302
    iget-boolean v9, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-nez v9, :cond_5

    if-nez v6, :cond_5

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 304
    iget-boolean v9, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v9, :cond_6

    .line 305
    iget-object v9, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 262
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_4
    new-instance v9, Lmiui/view/VolumePanel$2;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const v11, 0x60d0025

    invoke-direct {v9, p0, v10, v11}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 271
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 272
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_4

    .line 302
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 308
    :cond_6
    iget-object v9, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method
