.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioFilter;
.super Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>()V

    return-void
.end method


# virtual methods
.method a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    if-eqz p1, :cond_3

    .line 112
    sget-object v2, Lcom/android/settings/bluetooth/A2dpProfile;->mM:[Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    sget-object v2, Lcom/android/settings/bluetooth/HeadsetProfile;->nY:[Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_0

    .line 118
    :cond_3
    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method
