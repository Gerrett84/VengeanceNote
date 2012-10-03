.class final Lmiui/app/screenelement/ActionCommand$WifiStateTracker;
.super Lmiui/app/screenelement/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$StateTracker;-><init>()V

    .line 421
    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 423
    iput v0, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/ActionCommand$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 498
    packed-switch p0, :pswitch_data_0

    .line 508
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 500
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 506
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 498
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
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 427
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 428
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 431
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 466
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    const-string v5, "wifi_state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, wifiState:I
    invoke-static {v2}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 470
    if-ne v7, v2, :cond_0

    .line 471
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 472
    iput v3, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 492
    .end local v2           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 475
    iget v4, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge v4, v7, :cond_0

    .line 476
    iget v4, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne v4, v7, :cond_0

    .line 477
    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 480
    :cond_2
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    iput v7, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 483
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 485
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 486
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 436
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 437
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 438
    const-string v1, "ActionCommand"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v1, Lmiui/app/screenelement/ActionCommand$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker$1;-><init>(Lmiui/app/screenelement/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
