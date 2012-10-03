.class Lcom/android/settings/wifi/E;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# instance fields
.field final synthetic yC:Lcom/android/settings/wifi/k;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/k;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/E;->yC:Lcom/android/settings/wifi/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/E;->yC:Lcom/android/settings/wifi/k;

    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/k;->a(Lcom/android/settings/wifi/k;I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string v0, "availableArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    const-string v1, "activeArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    const-string v2, "erroredArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/android/settings/wifi/E;->yC:Lcom/android/settings/wifi/k;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings/wifi/k;->a(Lcom/android/settings/wifi/k;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/E;->yC:Lcom/android/settings/wifi/k;

    invoke-static {v0}, Lcom/android/settings/wifi/k;->a(Lcom/android/settings/wifi/k;)V

    goto :goto_0
.end method
