.class Lcom/android/settings/wifi/n;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# instance fields
.field final synthetic dj:Lcom/android/settings/wifi/q;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/q;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/q;->a(Lcom/android/settings/wifi/q;I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    invoke-static {v0}, Lcom/android/settings/wifi/q;->a(Lcom/android/settings/wifi/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/q;->a(Lcom/android/settings/wifi/q;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 60
    iget-object v1, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    invoke-static {v1}, Lcom/android/settings/wifi/q;->a(Lcom/android/settings/wifi/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/wifi/n;->dj:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/q;->a(Lcom/android/settings/wifi/q;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method
