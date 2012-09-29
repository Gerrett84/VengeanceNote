.class Lcom/android/settings/sound/d;
.super Landroid/database/ContentObserver;
.source "RingerVolumeActivity.java"


# instance fields
.field final synthetic tI:Lcom/android/settings/sound/a;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/a;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v0}, Lcom/android/settings/sound/a;->a(Lcom/android/settings/sound/a;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v0}, Lcom/android/settings/sound/a;->b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v0}, Lcom/android/settings/sound/a;->b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v1}, Lcom/android/settings/sound/a;->c(Lcom/android/settings/sound/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v0}, Lcom/android/settings/sound/a;->b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v1}, Lcom/android/settings/sound/a;->c(Lcom/android/settings/sound/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v1}, Lcom/android/settings/sound/a;->a(Lcom/android/settings/sound/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 403
    :cond_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v0}, Lcom/android/settings/sound/a;->b(Lcom/android/settings/sound/a;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/d;->tI:Lcom/android/settings/sound/a;

    invoke-static {v1}, Lcom/android/settings/sound/a;->c(Lcom/android/settings/sound/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
