.class Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic fg:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const-string v0, "android.bluetooth.device.extra.RSSI"

    const/16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .line 191
    const-string v0, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 192
    const-string v1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 196
    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->e(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 198
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v4, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 203
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(S)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->b(Landroid/bluetooth/BluetoothClass;)V

    .line 205
    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 207
    return-void
.end method
