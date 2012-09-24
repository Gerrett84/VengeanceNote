.class Lcom/android/settings/wifi/p2p/a;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pEnabler.java"


# instance fields
.field final synthetic eB:Lcom/android/settings/wifi/p2p/k;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/k;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/a;->eB:Lcom/android/settings/wifi/p2p/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->eB:Lcom/android/settings/wifi/p2p/k;

    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/k;->a(Lcom/android/settings/wifi/p2p/k;I)V

    .line 53
    :cond_0
    return-void
.end method
