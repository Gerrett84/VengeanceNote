.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final Ih:Landroid/content/IntentFilter;

.field protected final LH:Ljava/lang/String;

.field private final LI:Lcom/android/settings/wifi/M;

.field protected LJ:Landroid/net/wifi/WifiManager$ActionListener;

.field protected LK:Landroid/net/wifi/WifiManager$ActionListener;

.field protected LL:Landroid/net/wifi/WifiManager$ActionListener;

.field private LM:Z

.field private LN:Lcom/android/settings/wifi/L;

.field private LO:Lcom/android/settings/wifi/AccessPoint;

.field protected LP:Landroid/net/NetworkInfo$DetailedState;

.field protected LQ:Landroid/net/wifi/WifiInfo;

.field private LR:I

.field private LS:Lcom/android/settings/wifi/u;

.field private LT:Z

.field private LU:Z

.field private LV:Z

.field private LW:Lcom/android/settings/wifi/AccessPoint;

.field private LX:Landroid/os/Bundle;

.field protected LY:Z

.field protected b:Landroid/net/wifi/WifiManager;

.field protected c:Landroid/net/wifi/WifiManager$Channel;

.field private jB:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mw:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    const-string v0, "nearby_wifi"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LH:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->LR:I

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/android/settings/wifi/D;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/D;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/android/settings/wifi/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/M;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/D;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    .line 202
    return-void
.end method

.method private a(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 586
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    .line 592
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->LW:Lcom/android/settings/wifi/AccessPoint;

    .line 593
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->LV:Z

    .line 595
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 596
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private aW(I)V
    .locals 1
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->jB:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->jB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 672
    return-void
.end method

.method private aX(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 823
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LQ:Landroid/net/wifi/WifiInfo;

    .line 824
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LP:Landroid/net/NetworkInfo$DetailedState;

    .line 825
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->pause()V

    .line 826
    :goto_1
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    goto :goto_1

    .line 815
    :pswitch_1
    const v0, 0x7f0b01bc

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aW(I)V

    goto :goto_0

    .line 819
    :pswitch_2
    const v0, 0x7f0b01d1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aW(I)V

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->pause()V

    .line 804
    :cond_0
    return-void

    .line 784
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->pause()V

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LQ:Landroid/net/wifi/WifiInfo;

    .line 791
    if-eqz p1, :cond_2

    .line 792
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->LP:Landroid/net/NetworkInfo$DetailedState;

    .line 795
    :cond_2
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 796
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_0

    .line 798
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 799
    instance-of v3, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    .line 800
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 801
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LQ:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->LP:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 796
    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 787
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 740
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 741
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aX(I)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    goto :goto_0

    .line 748
    :cond_3
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 757
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 760
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 761
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 763
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->X(Z)V

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    .line 766
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    .line 767
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->LU:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 771
    :cond_5
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private e(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter

    .prologue
    .line 623
    invoke-static {p1}, Lcom/android/settings/wifi/X;->e(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 625
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->LR:I

    .line 626
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 627
    const/4 v0, 0x1

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected E()I
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-eqz v0, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b065a

    goto :goto_0
.end method

.method protected X(Z)V
    .locals 1
    .parameter

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 872
    :cond_0
    return-void
.end method

.method a(Lcom/android/settings/wifi/X;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 884
    invoke-virtual {p1}, Lcom/android/settings/wifi/X;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 886
    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->e(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 905
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    .line 909
    return-void

    .line 893
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 894
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 898
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/X;->lM()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->e(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 901
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected lp()V
    .locals 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 642
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 660
    :pswitch_0
    const v0, 0x7f0b01bd

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aW(I)V

    goto :goto_0

    .line 645
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lq()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 647
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 648
    const v1, 0x7f0b01d2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->aW(I)V

    .line 650
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 656
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 664
    :pswitch_3
    const v0, 0x7f0b01d1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->aW(I)V

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected lq()Ljava/util/List;
    .locals 7

    .prologue
    .line 677
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    new-instance v4, Lcom/android/settings/wifi/l;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_0

    .line 684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 685
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LQ:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->LP:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 687
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->nG:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_3

    .line 694
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 696
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    const/4 v1, 0x0

    .line 702
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/l;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 703
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 706
    :cond_2
    if-nez v2, :cond_1

    .line 707
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 708
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->nG:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/l;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 715
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 716
    return-object v3

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method lr()V
    .locals 4

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 914
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LL:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    .line 923
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->X(Z)V

    goto :goto_0
.end method

.method ls()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    .line 938
    :cond_0
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 939
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 940
    return-void
.end method

.method lt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 947
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    .line 948
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 949
    return-void
.end method

.method lu()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->resume()V

    .line 978
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LM:Z

    .line 263
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    .line 266
    new-instance v0, Lcom/android/settings/wifi/A;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/A;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    .line 276
    new-instance v0, Lcom/android/settings/wifi/z;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/z;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LK:Landroid/net/wifi/WifiManager$ActionListener;

    .line 286
    new-instance v0, Lcom/android/settings/wifi/y;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/y;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LL:Landroid/net/wifi/WifiManager$ActionListener;

    .line 296
    if-eqz p1, :cond_0

    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LV:Z

    .line 299
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 306
    const-string v0, "wifi_auto_finish_on_connect"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LU:Z

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LU:Z

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 316
    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 383
    :goto_0
    return-void

    .line 325
    :cond_2
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LT:Z

    .line 327
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LT:Z

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->X(Z)V

    .line 339
    :cond_3
    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x1e4

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 351
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-nez v0, :cond_7

    .line 352
    new-instance v2, Lmiui/widget/SlidingButton;

    invoke-direct {v2, v1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 354
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 355
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 356
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_6

    .line 357
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 359
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 363
    iput v0, v3, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 364
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 366
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 370
    :cond_6
    new-instance v0, Lcom/android/settings/wifi/L;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/L;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LN:Lcom/android/settings/wifi/L;

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->jB:Landroid/widget/TextView;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->jB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 376
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-nez v0, :cond_8

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 379
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 382
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 875
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lr()V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    invoke-virtual {v0}, Lcom/android/settings/wifi/u;->fl()Lcom/android/settings/wifi/X;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/X;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 535
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 536
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 564
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 540
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 541
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->e(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->nI:I

    if-nez v1, :cond_3

    .line 547
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dz()V

    .line 548
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->LL:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 514
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 518
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 519
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->nG:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 521
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dy()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x7

    const v1, 0x7f0b01ce

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_1

    .line 526
    const/16 v0, 0x8

    const v1, 0x7f0b01cf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 527
    const/16 v0, 0x9

    const v1, 0x7f0b01d0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 531
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    .line 619
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 602
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LW:Lcom/android/settings/wifi/AccessPoint;

    .line 603
    if-nez v0, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 605
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 607
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LW:Lcom/android/settings/wifi/AccessPoint;

    .line 611
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    .line 612
    new-instance v1, Lcom/android/settings/wifi/u;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->LV:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/wifi/u;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    goto :goto_0

    .line 615
    :pswitch_1
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 617
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0200a8

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 415
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-eqz v1, :cond_0

    .line 417
    const v1, 0x7f0b01c9

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 421
    const v1, 0x7f0b01c7

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 449
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 450
    return-void

    .line 425
    :cond_0
    const v1, 0x7f0b01c9

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 429
    const v1, 0x7f0b01c7

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020065

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 433
    const/4 v1, 0x6

    const v2, 0x7f0b01cc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 437
    const v1, 0x7f0b01ca

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 440
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->LM:Z

    if-eqz v1, :cond_1

    .line 441
    const/4 v1, 0x3

    const v2, 0x7f0b01cb

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 445
    :cond_1
    const/4 v0, 0x5

    const v1, 0x7f0b01cd

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->LY:Z

    if-eqz v0, :cond_1

    .line 216
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 217
    const v0, 0x7f08013e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    new-instance v2, Lcom/android/settings/wifi/C;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/C;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f08013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 227
    if-eqz v0, :cond_0

    .line 228
    new-instance v2, Lcom/android/settings/wifi/B;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    move-object v0, v1

    .line 251
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 469
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 509
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 471
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 472
    goto :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0227

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 483
    goto :goto_0

    .line 481
    :cond_0
    const-class v0, Lcom/android/settings/wifi/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 485
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 486
    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->jN()V

    :cond_1
    move v0, v7

    .line 491
    goto :goto_0

    .line 493
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lt()V

    :cond_2
    move v0, v7

    .line 496
    goto :goto_0

    .line 498
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0212

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 507
    goto :goto_0

    .line 505
    :cond_3
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LN:Lcom/android/settings/wifi/L;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LN:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->pause()V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LI:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->pause()V

    .line 410
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 569
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 570
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->nI:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dz()V

    .line 575
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->dw()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 582
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LO:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 580
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 387
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LN:Lcom/android/settings/wifi/L;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LN:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->resume()V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->Ih:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->LR:I

    if-eq v0, v4, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager$Channel;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->LR:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->LJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 397
    :cond_1
    iput v4, p0, Lcom/android/settings/wifi/WifiSettings;->LR:I

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->lp()V

    .line 400
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LS:Lcom/android/settings/wifi/u;

    invoke-virtual {v0}, Lcom/android/settings/wifi/u;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->LV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LW:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->LW:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/os/Bundle;)V

    .line 462
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->LX:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 465
    :cond_0
    return-void
.end method
