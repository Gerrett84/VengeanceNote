.class Lcom/android/settings/wifi/w;
.super Landroid/content/BroadcastReceiver;
.source "WifiRestoreService.java"


# instance fields
.field final synthetic sL:Lcom/android/settings/wifi/WifiRestoreService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/wifi/w;->sL:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/w;->sL:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->a(Lcom/android/settings/wifi/WifiRestoreService;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/w;->sL:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->b(Lcom/android/settings/wifi/WifiRestoreService;)V

    goto :goto_0
.end method
