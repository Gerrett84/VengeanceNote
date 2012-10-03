.class Lcom/android/settings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# instance fields
.field final synthetic d:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$2;->d:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$2;->d:Lcom/android/settings/deviceinfo/Memory;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Memory;->a(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$2;->d:Lcom/android/settings/deviceinfo/Memory;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Memory;->a(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->ea()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method
