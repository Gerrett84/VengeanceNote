.class abstract Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;->a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result v0

    return v0
.end method

.method abstract a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
.end method
