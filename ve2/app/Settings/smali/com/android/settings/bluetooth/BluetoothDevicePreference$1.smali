.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic kG:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->kG:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->kG:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 198
    return-void
.end method
