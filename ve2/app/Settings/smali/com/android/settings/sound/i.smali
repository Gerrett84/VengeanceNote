.class Lcom/android/settings/sound/i;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumeActivity.java"


# instance fields
.field final synthetic l:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/sound/i;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/sound/i;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeActivity;->b(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/i;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity;->b(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const-string v3, "android.media.EXTRA_RINGER_MODE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_0
    return-void
.end method
