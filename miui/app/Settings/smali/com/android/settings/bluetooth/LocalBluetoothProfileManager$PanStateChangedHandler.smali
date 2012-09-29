.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field final synthetic uO:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->uO:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 232
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->uS:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    .line 237
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 238
    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/PanProfile;->c(Landroid/bluetooth/BluetoothDevice;I)V

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 240
    return-void
.end method
