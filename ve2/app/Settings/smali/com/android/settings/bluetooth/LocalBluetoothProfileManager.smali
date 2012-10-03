.class final Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field private final N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private uQ:Lcom/android/settings/bluetooth/A2dpProfile;

.field private uR:Lcom/android/settings/bluetooth/HeadsetProfile;

.field private final uS:Lcom/android/settings/bluetooth/HidProfile;

.field private uT:Lcom/android/settings/bluetooth/OppProfile;

.field private final uU:Lcom/android/settings/bluetooth/PanProfile;

.field private final uV:Ljava/util/Map;

.field private final uW:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uV:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uW:Ljava/util/Collection;

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 94
    iput-object p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 95
    iput-object p4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 100
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;)V

    .line 108
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uS:Lcom/android/settings/bluetooth/HidProfile;

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uS:Lcom/android/settings/bluetooth/HidProfile;

    const-string v1, "HID"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/android/settings/bluetooth/PanProfile;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uU:Lcom/android/settings/bluetooth/PanProfile;

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uU:Lcom/android/settings/bluetooth/PanProfile;

    const-string v1, "PAN"

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "LocalBluetoothProfileManager construction complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uV:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method private b(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uV:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method J(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uW:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method a([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter

    .prologue
    .line 128
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/settings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 143
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/android/settings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 156
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/settings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uV:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->f()V

    .line 167
    return-void

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 162
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 304
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 305
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-nez p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 312
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->mJ:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 327
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 329
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uT:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 333
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uS:Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 335
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uS:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uS:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 339
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uU:Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uU:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uU:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uW:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method fJ()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->qf:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->g()Z

    .line 196
    return-void
.end method

.method fK()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uW:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 256
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method fL()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uW:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 263
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public declared-synchronized fM()Z
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 279
    :goto_0
    monitor-exit p0

    return v0

    .line 275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 276
    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->i()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fN()Lcom/android/settings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uQ:Lcom/android/settings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method fO()Lcom/android/settings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->uR:Lcom/android/settings/bluetooth/HeadsetProfile;

    return-object v0
.end method
