.class Lcom/android/settings/cQ;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic GN:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/cQ;->GN:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/cQ;->GN:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSoundSettings;->eM()V

    .line 176
    return-void
.end method
