.class final Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic am:Lcom/android/settings/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HidProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;->am:Lcom/android/settings/bluetooth/HidProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HidProfile;Lcom/android/settings/bluetooth/HidProfile$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/settings/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;->am:Lcom/android/settings/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/HidProfile;->a(Lcom/android/settings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;->am:Lcom/android/settings/bluetooth/HidProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HidProfile;->a(Lcom/android/settings/bluetooth/HidProfile;Z)Z

    .line 48
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;->am:Lcom/android/settings/bluetooth/HidProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HidProfile;->a(Lcom/android/settings/bluetooth/HidProfile;Z)Z

    .line 52
    iget-object v0, p0, Lcom/android/settings/bluetooth/HidProfile$InputDeviceServiceListener;->am:Lcom/android/settings/bluetooth/HidProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HidProfile;->a(Lcom/android/settings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 53
    return-void
.end method
