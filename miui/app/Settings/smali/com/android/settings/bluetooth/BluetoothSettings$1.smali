.class Lcom/android/settings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# instance fields
.field final synthetic DE:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->DE:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private iA()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->DE:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->DE:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->jC:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->DE:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->jC:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$1;->DE:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Q:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;->iA()V

    .line 96
    :cond_0
    return-void
.end method
