.class public Lcom/android/settings/PointerSpeedPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private i:Landroid/widget/SeekBar;

.field private lj:I

.field private lk:Z

.field private ll:Z

.field private lm:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/settings/dq;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dq;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->lm:Landroid/database/ContentObserver;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cK()V

    return-void
.end method

.method private cK()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->w(I)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    return-void
.end method

.method private cL()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->lk:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->lj:I

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->x(I)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->lk:Z

    goto :goto_0
.end method

.method private w(I)I
    .locals 2
    .parameter

    .prologue
    .line 97
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 103
    :goto_0
    return p1

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private x(I)V
    .locals 1
    .parameter

    .prologue
    .line 136
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 74
    invoke-static {p1}, Lcom/android/settings/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    .line 75
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->w(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->lj:I

    .line 77
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->lj:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v1, "pointer_speed"

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->lm:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cL()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->ll:Z

    if-nez v0, :cond_0

    .line 83
    add-int/lit8 v0, p2, -0x7

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->x(I)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/ae;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_1
    check-cast p1, Lcom/android/settings/ae;

    .line 169
    invoke-virtual {p1}, Lcom/android/settings/ae;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    iget v0, p1, Lcom/android/settings/ae;->gZ:I

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->lj:I

    .line 171
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/settings/ae;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 172
    iget v0, p1, Lcom/android/settings/ae;->progress:I

    add-int/lit8 v0, v0, -0x7

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->x(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 148
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

    .line 157
    :goto_0
    return-object v0

    .line 151
    :cond_1
    new-instance v0, Lcom/android/settings/ae;

    invoke-direct {v0, v1}, Lcom/android/settings/ae;-><init>(Landroid/os/Parcelable;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/android/settings/ae;->progress:I

    .line 153
    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->lj:I

    iput v1, v0, Lcom/android/settings/ae;->gZ:I

    .line 156
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->cL()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->ll:Z

    .line 89
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->ll:Z

    .line 93
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-direct {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->x(I)V

    .line 94
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/PointerSpeedPreference;->lm:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->lk:Z

    .line 68
    return-void
.end method
