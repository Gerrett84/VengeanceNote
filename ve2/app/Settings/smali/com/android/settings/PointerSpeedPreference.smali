.class public Lcom/android/settings/PointerSpeedPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private h:Landroid/widget/SeekBar;

.field private final jL:Landroid/hardware/input/InputManager;

.field private mv:I

.field private mw:Z

.field private mx:Z

.field private my:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/settings/dK;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dK;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->my:Landroid/database/ContentObserver;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cO()V

    return-void
.end method

.method private cO()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 95
    return-void
.end method

.method private cP()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mw:Z

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mv:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mw:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 70
    invoke-static {p1}, Lcom/android/settings/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    .line 71
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->mv:I

    .line 73
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mv:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->my:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cP()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mx:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/ar;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_1
    check-cast p1, Lcom/android/settings/ar;

    .line 144
    invoke-virtual {p1}, Lcom/android/settings/ar;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 145
    iget v0, p1, Lcom/android/settings/ar;->hU:I

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->mv:I

    .line 146
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/settings/ar;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    iget v1, p1, Lcom/android/settings/ar;->progress:I

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 126
    :cond_1
    new-instance v0, Lcom/android/settings/ar;

    invoke-direct {v0, v1}, Lcom/android/settings/ar;-><init>(Landroid/os/Parcelable;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->h:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/android/settings/ar;->progress:I

    .line 128
    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->mv:I

    iput v1, v0, Lcom/android/settings/ar;->hU:I

    .line 131
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cP()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mx:Z

    .line 85
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mx:Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->jL:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 90
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/PointerSpeedPreference;->my:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mw:Z

    .line 64
    return-void
.end method
