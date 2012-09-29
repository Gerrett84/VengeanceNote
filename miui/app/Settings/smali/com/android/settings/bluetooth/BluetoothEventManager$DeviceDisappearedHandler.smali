.class Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic fj:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->fj:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->fj:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 222
    if-nez v1, :cond_1

    .line 223
    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received ACTION_DISAPPEARED for an unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->e(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->fj:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->fj:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 229
    invoke-interface {v0, v1}, Lcom/android/settings/bluetooth/BluetoothCallback;->d(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
