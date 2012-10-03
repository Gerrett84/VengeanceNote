.class public Lcom/android/settings/wifi/s;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final aJ:Landroid/content/IntentFilter;

.field private final c:Landroid/net/wifi/WifiManager;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private ms:Landroid/widget/Switch;

.field private mt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/s;->mt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Lcom/android/settings/wifi/n;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/n;-><init>(Lcom/android/settings/wifi/s;)V

    iput-object v0, p0, Lcom/android/settings/wifi/s;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    .line 70
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/s;->c:Landroid/net/wifi/WifiManager;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/s;->aJ:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aJ:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/s;->aJ:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private C(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/s;->v(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 150
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/s;->v(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/s;->v(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/wifi/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/s;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/s;->C(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/s;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/s;->a(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private v(Z)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/s;->mu:Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/s;->mu:Z

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iput-object p1, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/s;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 95
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v3, v1

    .line 96
    :goto_1
    if-ne v0, v1, :cond_4

    move v0, v1

    .line 97
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    iget-object v4, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v2

    .line 95
    goto :goto_1

    :cond_4
    move v0, v2

    .line 96
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/wifi/s;->mu:Z

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01bf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/s;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 115
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/s;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/s;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01be

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/s;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/s;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/s;->aJ:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/s;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void
.end method
