.class Lcom/android/settings/cP;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic GR:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/cP;->GR:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/cP;->GR:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSoundSettings;->eQ()V

    .line 187
    return-void
.end method
