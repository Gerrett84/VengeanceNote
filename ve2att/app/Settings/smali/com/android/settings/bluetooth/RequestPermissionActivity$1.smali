.class Lcom/android/settings/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# instance fields
.field final synthetic mz:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->mz:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->mz:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->a(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 84
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->mz:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->b(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->mz:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->c(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0
.end method
