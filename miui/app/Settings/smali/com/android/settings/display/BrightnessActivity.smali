.class public Lcom/android/settings/display/BrightnessActivity;
.super Lcom/android/settings/J;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private Je:Landroid/widget/CheckBox;

.field private OP:I

.field private OQ:I

.field private OR:Z

.field private OS:Z

.field private OT:I

.field private OU:I

.field private OV:Landroid/database/ContentObserver;

.field private OW:Landroid/database/ContentObserver;

.field private h:Landroid/widget/SeekBar;

.field private mDialog:Landroid/app/Dialog;

.field private mw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    .line 48
    new-instance v0, Lcom/android/settings/display/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/b;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->OV:Landroid/database/ContentObserver;

    .line 56
    new-instance v0, Lcom/android/settings/display/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/a;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->OW:Landroid/database/ContentObserver;

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lX()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lY()V

    return-void
.end method

.method private bP()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    .line 84
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lW()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OP:I

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->OP:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OR:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->bd(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    .line 92
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OS:Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method private bd(I)I
    .locals 2
    .parameter

    .prologue
    .line 120
    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 126
    :goto_0
    return p1

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cP()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mw:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OR:Z

    if-eqz v0, :cond_1

    .line 173
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 175
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OP:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->g(IZ)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mw:Z

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    goto :goto_0
.end method

.method private g(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OS:Z

    if-eqz v0, :cond_2

    .line 182
    int-to-float v0, p1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 184
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->setAutoBrightnessAdjustment(F)V

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 191
    const-string v2, "screen_auto_brightness_adj"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OU:I

    rsub-int v0, v0, 0xff

    .line 198
    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->OU:I

    add-int/2addr v0, v1

    .line 200
    :try_start_1
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_3

    .line 203
    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 205
    :cond_3
    if-eqz p2, :cond_4

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 208
    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :cond_4
    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private lW()I
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->bd(I)I

    move-result v0

    .line 132
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 135
    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 146
    :goto_0
    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 137
    :cond_0
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    if-gez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 143
    :goto_1
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->OU:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->OU:I

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method private lX()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lW()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 151
    return-void
.end method

.method private lY()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessActivity;->bd(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lW()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 158
    return-void

    :cond_0
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 219
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OS:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->lW()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->g(IZ)V

    .line 117
    return-void

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->OR:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->OU:I

    .line 69
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->bP()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->OV:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->OW:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mw:Z

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->OV:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->OW:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->g(IZ)V

    .line 166
    invoke-super {p0}, Lcom/android/settings/J;->onDestroy()V

    .line 167
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/display/BrightnessActivity;->g(IZ)V

    .line 102
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "save_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    .line 249
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->OP:I

    .line 250
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    .line 251
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    .line 252
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 253
    iget v0, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/display/BrightnessActivity;->g(IZ)V

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/J;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    return-void

    :cond_1
    move v1, v3

    .line 250
    goto :goto_0

    :cond_2
    move v2, v3

    .line 252
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Lcom/android/settings/display/BrightnessActivity$SavedState;

    invoke-direct {v1}, Lcom/android/settings/display/BrightnessActivity$SavedState;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->Je:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 231
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 232
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->OQ:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 233
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OP:I

    iput v0, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 234
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->OT:I

    iput v0, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    .line 235
    const-string v0, "save_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->cP()V

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/J;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method
