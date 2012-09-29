.class final Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final os:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static e(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-object v0
.end method

.method public declared-synchronized dF()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Z)V
    .locals 3
    .parameter

    .prologue
    .line 113
    monitor-enter p0

    if-nez p1, :cond_1

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gh()V

    .line 56
    :cond_0
    return-void
.end method

.method m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->os:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 70
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized o(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
