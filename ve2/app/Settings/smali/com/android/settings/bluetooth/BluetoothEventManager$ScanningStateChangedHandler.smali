.class Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private final mStarted:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 174
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 179
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/BluetoothCallback;->g(Z)V

    goto :goto_0

    .line 181
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

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->g(Z)V

    .line 183
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->o(Landroid/content/Context;)V

    .line 184
    return-void
.end method
