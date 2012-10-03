.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# instance fields
.field final synthetic Aa:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Aa:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Aa:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 79
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Aa:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->Aa:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0
.end method
