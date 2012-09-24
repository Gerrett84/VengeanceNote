.class Lcom/android/settings/n;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aO:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/n;->aO:Lcom/android/settings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/n;->aO:Lcom/android/settings/MediaFormat;

    invoke-static {v2}, Lcom/android/settings/MediaFormat;->a(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/android/settings/n;->aO:Lcom/android/settings/MediaFormat;

    invoke-static {v1}, Lcom/android/settings/MediaFormat;->b(Lcom/android/settings/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "reboot_after_format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/settings/n;->aO:Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, v0}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    iget-object v0, p0, Lcom/android/settings/n;->aO:Lcom/android/settings/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0
.end method
