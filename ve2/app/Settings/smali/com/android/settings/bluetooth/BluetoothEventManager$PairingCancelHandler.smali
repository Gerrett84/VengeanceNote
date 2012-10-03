.class Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;
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
    .line 341
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    if-nez p3, :cond_0

    .line 344
    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    const v0, 0x7f0b0174

    .line 348
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/settings/bluetooth/Utils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
