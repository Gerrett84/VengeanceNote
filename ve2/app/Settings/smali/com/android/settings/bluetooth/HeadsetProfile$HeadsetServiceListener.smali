.class final Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic CF:Lcom/android/settings/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HeadsetProfile;Lcom/android/settings/bluetooth/HeadsetProfile$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 69
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->b(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    const-string v1, "HeadsetProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetProfile found new device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->b(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetProfile;->c(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->eF()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetProfile;->a(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;->CF:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetProfile;->d(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->eG()V

    .line 85
    return-void
.end method
