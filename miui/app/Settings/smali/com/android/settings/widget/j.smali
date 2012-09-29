.class Lcom/android/settings/widget/j;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic ws:Z

.field final synthetic yR:Landroid/net/wifi/WifiManager;

.field final synthetic yS:Lcom/android/settings/widget/p;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/p;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/widget/j;->yS:Lcom/android/settings/widget/p;

    iput-object p2, p0, Lcom/android/settings/widget/j;->yR:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/settings/widget/j;->ws:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 364
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/j;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/settings/widget/j;->yR:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 371
    iget-boolean v1, p0, Lcom/android/settings/widget/j;->ws:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/j;->yR:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/j;->yR:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings/widget/j;->ws:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 377
    return-object v2
.end method
