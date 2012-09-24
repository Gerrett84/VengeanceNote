.class Lcom/android/settings/sound/j;
.super Landroid/os/Handler;
.source "RingerVolumeActivity.java"


# instance fields
.field final synthetic l:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/sound/j;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/sound/j;->l:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeActivity;->a(Lcom/android/settings/sound/RingerVolumeActivity;)V

    .line 102
    return-void
.end method
