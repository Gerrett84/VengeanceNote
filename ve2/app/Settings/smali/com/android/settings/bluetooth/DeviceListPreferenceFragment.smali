.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# instance fields
.field N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private df:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field dg:Landroid/bluetooth/BluetoothDevice;

.field dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private di:Landroid/preference/PreferenceGroup;

.field final dj:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    .line 62
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->sJ:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->df:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 63
    return-void
.end method

.method private h(Z)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->N(Z)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method abstract P()V
.end method

.method Q()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->dS()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 121
    return-void
.end method

.method R()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->et()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->dB()Ljava/util/Collection;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->b(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method a(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    .line 91
    return-void
.end method

.method final a(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->df:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 67
    return-void
.end method

.method a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kF()V

    .line 152
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public b(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->df:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->c(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method c(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public d(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    return-void
.end method

.method final g(I)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ad(I)Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->df:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 71
    return-void
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(Z)V

    .line 193
    return-void
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 202
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->eq()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->P()V

    .line 86
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->di:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Q()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->u(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->eu()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 134
    const-string v1, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->C(Z)V

    .line 147
    :goto_0
    return v0

    .line 139
    :cond_0
    instance-of v1, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_1

    .line 140
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 141
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kE()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dg:Landroid/bluetooth/BluetoothDevice;

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->u(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dh:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->eu()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->a(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(Z)V

    goto :goto_0
.end method
