.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aj:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic ak:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field final synthetic al:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->al:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->aj:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->ak:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->aj:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->ak:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->ak:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->aj:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 288
    return-void
.end method
