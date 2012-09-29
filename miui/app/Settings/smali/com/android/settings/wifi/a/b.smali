.class public Lcom/android/settings/wifi/a/b;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field private final aM:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private vA:Landroid/preference/PreferenceGroup;

.field private vB:Landroid/preference/Preference;

.field private vC:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private vD:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private vE:Ljava/lang/String;

.field private vq:Landroid/net/wifi/p2p/WifiP2pManager;

.field private vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private vs:Landroid/content/DialogInterface$OnClickListener;

.field private vt:Landroid/content/DialogInterface$OnClickListener;

.field private vu:Landroid/content/DialogInterface$OnClickListener;

.field private vv:Lcom/android/settings/wifi/a/j;

.field private vw:Landroid/widget/EditText;

.field private vx:Z

.field private vy:Z

.field private vz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    .line 96
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vD:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 100
    new-instance v0, Lcom/android/settings/wifi/a/e;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/a/e;-><init>(Lcom/android/settings/wifi/a/b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private J(Z)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/android/settings/wifi/a/b;->vy:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 447
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/a/b;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/a/b;->fV()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/settings/wifi/a/b;->vx:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/a/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/a/b;->J(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/a/b;->fW()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/a/b;->fX()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/a/b;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    return-object v0
.end method

.method private fV()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/a/b;->J(Z)V

    .line 428
    iget-boolean v0, p0, Lcom/android/settings/wifi/a/b;->vx:Z

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 432
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 441
    :cond_0
    return-void
.end method

.method private fW()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/a/b;->vy:Z

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/a/g;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/a/g;-><init>(Lcom/android/settings/wifi/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 459
    :cond_0
    return-void
.end method

.method private fX()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 473
    :cond_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/b;->addPreferencesFromResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 152
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-object v4, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 164
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "PEER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "PEER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 166
    new-instance v1, Lcom/android/settings/wifi/a/j;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/a/j;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v1, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    .line 168
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vE:Ljava/lang/String;

    .line 172
    :cond_2
    new-instance v0, Lcom/android/settings/wifi/a/f;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/a/f;-><init>(Lcom/android/settings/wifi/a/b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vs:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    new-instance v0, Lcom/android/settings/wifi/a/c;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/a/c;-><init>(Lcom/android/settings/wifi/a/b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vt:Landroid/content/DialogInterface$OnClickListener;

    .line 214
    new-instance v0, Lcom/android/settings/wifi/a/d;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/a/d;-><init>(Lcom/android/settings/wifi/a/b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vu:Landroid/content/DialogInterface$OnClickListener;

    .line 233
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/a/b;->setHasOptionsMenu(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 238
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 239
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vB:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0b022d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    return-void

    .line 161
    :cond_3
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b03dc

    const v7, 0x7f0b03db

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 351
    if-ne p1, v5, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 356
    :goto_0
    iget v2, p0, Lcom/android/settings/wifi/a/b;->vz:I

    if-le v2, v5, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0232

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget v0, p0, Lcom/android/settings/wifi/a/b;->vz:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0230

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/a/b;->vt:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 400
    :goto_2
    return-object v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0231

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 369
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 370
    const v2, 0x7f0b0234

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 375
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0233

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/a/b;->vu:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 382
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 383
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vE:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 391
    :cond_5
    :goto_4
    iput-object v1, p0, Lcom/android/settings/wifi/a/b;->vE:Ljava/lang/String;

    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b022c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/a/b;->vs:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vC:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 400
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/android/settings/wifi/a/b;->vy:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b022b

    .line 265
    :goto_0
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/a/b;->vx:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 268
    const/4 v0, 0x2

    const v1, 0x7f0b022c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/a/b;->vx:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 271
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 272
    return-void

    .line 263
    :cond_0
    const v0, 0x7f0b022a

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 297
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/a/b;->fW()V

    goto :goto_0

    .line 300
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/a/b;->showDialog(I)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 416
    iput-object p1, p0, Lcom/android/settings/wifi/a/b;->vD:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/a/b;->vz:I

    .line 418
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 420
    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vA:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings/wifi/a/j;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/a/j;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/a/b;->vz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/a/b;->vz:I

    goto :goto_0

    .line 424
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 308
    instance-of v0, p2, Lcom/android/settings/wifi/a/j;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 309
    check-cast v0, Lcom/android/settings/wifi/a/j;

    iput-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/a/b;->showDialog(I)V

    .line 346
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v0, v0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v2, :cond_2

    .line 313
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/a/b;->showDialog(I)V

    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v1, v1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 318
    const-string v1, "wifidirect.wps"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 320
    if-eq v1, v3, :cond_3

    .line 321
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 332
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vq:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->vr:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/a/h;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/a/h;-><init>(Lcom/android/settings/wifi/a/b;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v1, v1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v1, v1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 328
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 276
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 277
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 278
    iget-boolean v2, p0, Lcom/android/settings/wifi/a/b;->vx:Z

    if-eqz v2, :cond_0

    .line 279
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 280
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 286
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/a/b;->vy:Z

    if-eqz v1, :cond_1

    .line 287
    const v1, 0x7f0b022b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 291
    :goto_1
    return-void

    .line 282
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 289
    :cond_1
    const v1, 0x7f0b022a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/a/b;->aM:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vv:Lcom/android/settings/wifi/a/j;

    iget-object v1, v1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings/wifi/a/b;->vw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_1
    return-void
.end method
