.class final Lcom/android/settings/widget/p;
.super Lcom/android/settings/widget/e;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/e;-><init>(Lcom/android/settings/widget/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/settings/widget/p;-><init>()V

    return-void
.end method

.method private static aY(I)I
    .locals 1
    .parameter

    .prologue
    .line 396
    packed-switch p0, :pswitch_data_0

    .line 406
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 398
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 400
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 404
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public G()I
    .locals 1

    .prologue
    .line 332
    const v0, 0x7f0801a3

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 333
    const v0, 0x7f0801a4

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 384
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v0, "wifi_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 388
    invoke-static {v0}, Lcom/android/settings/widget/p;->aY(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/p;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 353
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 355
    if-nez v0, :cond_0

    .line 356
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No wifiManager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v1, Lcom/android/settings/widget/j;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/widget/j;-><init>(Lcom/android/settings/widget/p;Landroid/net/wifi/WifiManager;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 335
    if-eqz p1, :cond_0

    const v0, 0x7f020047

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020046

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 344
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/p;->aY(I)I

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method
