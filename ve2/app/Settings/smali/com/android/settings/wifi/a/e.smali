.class Lcom/android/settings/wifi/a/e;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# instance fields
.field final synthetic Bo:Lcom/android/settings/wifi/a/b;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/settings/wifi/a/b;->a(Lcom/android/settings/wifi/a/b;Z)Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->a(Lcom/android/settings/wifi/a/b;)V

    .line 138
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v1}, Lcom/android/settings/wifi/a/b;->c(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 113
    :cond_3
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 117
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->d(Lcom/android/settings/wifi/a/b;)V

    goto :goto_1

    .line 123
    :cond_4
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/a/b;->a(Lcom/android/settings/wifi/a/b;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->e(Lcom/android/settings/wifi/a/b;)V

    goto :goto_1

    .line 128
    :cond_5
    const-string v3, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "discoveryState"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    if-ne v2, v4, :cond_6

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;Z)V

    goto :goto_1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/a/e;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;Z)V

    goto :goto_1
.end method
