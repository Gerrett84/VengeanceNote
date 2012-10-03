.class Lcom/android/settings/bo;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# instance fields
.field final synthetic tm:Lcom/android/settings/bW;


# direct methods
.method constructor <init>(Lcom/android/settings/bW;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/bo;->tm:Lcom/android/settings/bW;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 210
    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    :goto_0
    if-nez v0, :cond_1

    .line 216
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bo;->tm:Lcom/android/settings/bW;

    iget-object v0, v0, Lcom/android/settings/bW;->AX:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->os:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/bo;->tm:Lcom/android/settings/bW;

    iget-object v1, v1, Lcom/android/settings/bW;->AX:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->ot:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/bo;->tm:Lcom/android/settings/bW;

    iget-object v0, v0, Lcom/android/settings/bW;->AX:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 227
    :goto_2
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/bo;->tm:Lcom/android/settings/bW;

    iget-object v0, v0, Lcom/android/settings/bW;->AX:Lcom/android/settings/DeviceAdminAdd;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 217
    :catch_0
    move-exception v0

    goto :goto_1
.end method
