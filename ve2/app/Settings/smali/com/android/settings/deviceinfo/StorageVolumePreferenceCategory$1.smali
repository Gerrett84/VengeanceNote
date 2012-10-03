.class Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# instance fields
.field final synthetic bB:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->bB:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    const-string v1, "total_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 147
    const-string v3, "avail_size"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->bB:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->c(JJ)V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    const-string v1, "total_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 154
    const-string v3, "avail_size"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 155
    const-string v5, "apps_used"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 156
    const-string v7, "downloads_size"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 157
    const-string v9, "misc_size"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 158
    const-string v11, "media_sizes"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v11

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;->bB:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->a(JJJJJ[J)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
