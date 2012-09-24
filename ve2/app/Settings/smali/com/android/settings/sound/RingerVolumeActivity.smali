.class public Lcom/android/settings/sound/RingerVolumeActivity;
.super Lcom/android/settings/z;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final BR:[I

.field private static final BT:[I

.field private static final BU:[I

.field private static final BV:[I


# instance fields
.field private BQ:[Lcom/android/settings/sound/a;

.field private final BS:[I

.field private BW:[Landroid/widget/ImageView;

.field private BX:[Landroid/widget/SeekBar;

.field private BY:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BU:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BV:[I

    return-void

    .line 46
    :array_0
    .array-data 0x4
        0xcet 0x0t 0x8t 0x7ft
        0xd2t 0x0t 0x8t 0x7ft
        0xd8t 0x0t 0x8t 0x7ft
        0xd9t 0x0t 0x8t 0x7ft
        0xdat 0x0t 0x8t 0x7ft
        0xdbt 0x0t 0x8t 0x7ft
        0xdct 0x0t 0x8t 0x7ft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_2
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x6t
        0x59t 0x1t 0x2t 0x6t
        0x55t 0x1t 0x2t 0x6t
        0x5at 0x1t 0x2t 0x6t
        0xf9t 0x1t 0x2t 0x6t
        0xfbt 0x1t 0x2t 0x6t
        0x57t 0x1t 0x2t 0x6t
    .end array-data

    .line 86
    :array_3
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x6t
        0x58t 0x1t 0x2t 0x6t
        0x54t 0x1t 0x2t 0x6t
        0x5at 0x1t 0x2t 0x6t
        0xf9t 0x1t 0x2t 0x6t
        0xfat 0x1t 0x2t 0x6t
        0x56t 0x1t 0x2t 0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/z;-><init>()V

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BS:[I

    .line 96
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BU:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BW:[Landroid/widget/ImageView;

    .line 97
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BX:[Landroid/widget/SeekBar;

    .line 99
    new-instance v0, Lcom/android/settings/sound/j;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/j;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    .line 371
    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x59t 0x2t 0xbt 0x7ft
        0x5at 0x2t 0xbt 0x7ft
        0x5bt 0x2t 0xbt 0x7ft
        0x99t 0x6t 0xbt 0x7ft
        0x58t 0x2t 0xbt 0x7ft
        0x9at 0x6t 0xbt 0x7ft
        0x9bt 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->hm()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bM()V
    .locals 10

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 115
    invoke-virtual {p0, v7}, Lcom/android/settings/sound/RingerVolumeActivity;->setContentView(Landroid/view/View;)V

    .line 116
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/a;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    .line 118
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 120
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    aget v0, v0, v6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 121
    const v0, 0x7f0800f4

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 122
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BX:[Landroid/widget/SeekBar;

    aput-object v3, v0, v6

    .line 123
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v9, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    new-instance v0, Lcom/android/settings/sound/a;

    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    aget v4, v1, v6

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->hn()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/a;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v9, v6

    .line 132
    :goto_1
    const v0, 0x7f0800f2

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BW:[Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 136
    const v0, 0x7f0800f3

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BS:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    new-instance v1, Lcom/android/settings/sound/a;

    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    aget v2, v2, v6

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/settings/sound/a;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v6

    goto :goto_1

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->hm()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/android/settings/sound/i;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/i;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    .line 155
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    :cond_2
    invoke-static {p0}, Lcom/android/settings/ci;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    const v0, 0x7f0800ce

    .line 165
    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 172
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 173
    return-void

    .line 163
    :cond_3
    const v0, 0x7f0800d2

    goto :goto_2
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/a;->stop()V

    .line 256
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    aput-object v2, v1, v0

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BY:Landroid/content/BroadcastReceiver;

    .line 263
    :cond_2
    return-void
.end method

.method private hm()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 201
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    aget v3, v2, v0

    .line 202
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    .line 204
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BW:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BW:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v5, 0x7f020051

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BX:[Landroid/widget/SeekBar;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 215
    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 217
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BX:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BW:[Landroid/widget/ImageView;

    aget-object v5, v2, v0

    if-eqz v4, :cond_3

    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BU:[I

    aget v2, v2, v0

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BV:[I

    aget v2, v2, v0

    goto :goto_3

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_2

    .line 220
    :cond_5
    return-void
.end method

.method private hn()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected d(Lcom/android/settings/sound/a;)V
    .locals 4
    .parameter

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 242
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/a;->stopSample()V

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method hk()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b069c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/h;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/h;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b069d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void
.end method

.method hl()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 192
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BT:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 193
    iget-object v5, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v6, v6, v4

    invoke-virtual {v5, v4, v6, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->hm()V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/z;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->bM()V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 349
    const v0, 0x7f0b069c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 350
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->cleanup()V

    .line 249
    invoke-super {p0}, Lcom/android/settings/z;->onDestroy()V

    .line 250
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    sparse-switch p2, :sswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 234
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 364
    invoke-super {p0, p1}, Lcom/android/settings/z;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 360
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->hk()V

    .line 361
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 268
    const-string v0, "save_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    .line 269
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->y(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v1

    .line 270
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    aget-object v2, v2, v0

    .line 272
    if-eqz v2, :cond_0

    .line 273
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/sound/a;->onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/z;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 281
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v0, v0

    new-array v1, v0, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 282
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->BR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->BQ:[Lcom/android/settings/sound/a;

    aget-object v2, v2, v0

    .line 284
    if-eqz v2, :cond_0

    .line 285
    new-instance v3, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v3}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v3, v1, v0

    .line 286
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/sound/a;->onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;-><init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 290
    const-string v1, "save_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/z;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    return-void
.end method
