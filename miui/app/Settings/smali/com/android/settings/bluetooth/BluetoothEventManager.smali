.class final Lcom/android/settings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# instance fields
.field private final Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final R:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private S:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private final T:Landroid/content/IntentFilter;

.field private final U:Landroid/content/IntentFilter;

.field private final V:Ljava/util/Map;

.field private final W:Ljava/util/Collection;

.field private final X:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    .line 139
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->X:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 76
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->R:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->T:Landroid/content/IntentFilter;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->U:Landroid/content/IntentFilter;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->V:Ljava/util/Map;

    .line 80
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 86
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 87
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 88
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 101
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->X:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->T:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->V:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method private a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 213
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothCallback;->b(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    return-void
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->R:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->S:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->S:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 71
    return-void
.end method

.method a(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->V:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->T:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->W:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->V:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->U:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method j()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->X:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->U:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method k()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 371
    if-nez v1, :cond_0

    .line 385
    :goto_0
    return v0

    .line 376
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 377
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->R:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 378
    if-nez v3, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->R:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager;->S:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 381
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 383
    goto :goto_1

    :cond_1
    move v0, v1

    .line 385
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
