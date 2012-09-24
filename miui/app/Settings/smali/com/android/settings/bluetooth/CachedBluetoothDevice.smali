.class final Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private final T:Ljava/util/Collection;

.field private final kt:Landroid/bluetooth/BluetoothDevice;

.field private final mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mVisible:Z

.field private vS:S

.field private vT:Landroid/bluetooth/BluetoothClass;

.field private vU:Ljava/util/HashMap;

.field private final vV:Ljava/util/List;

.field private final vW:Ljava/util/List;

.field private vX:Z

.field private vY:I

.field private vZ:Z

.field private wa:J

.field private wb:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vW:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    .line 147
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 149
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 150
    iput-object p4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    .line 152
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gc()V

    .line 153
    return-void
.end method

.method private L(Z)V
    .locals 4
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vZ:Z

    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 200
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->f(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    :cond_2
    move v0, v1

    move v1, v0

    goto :goto_1

    .line 200
    :cond_3
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 209
    :cond_4
    if-nez v1, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fY()V

    goto :goto_0
.end method

.method private c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fZ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fY()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fZ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    return-void

    .line 219
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vZ:Z

    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 222
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 224
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->f(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private fZ()Z
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ga()Z

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private gc()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ge()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gf()V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gg()Z

    .line 325
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gp()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 328
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 329
    return-void
.end method

.method private ge()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 364
    :cond_0
    return-void
.end method

.method private gf()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vT:Landroid/bluetooth/BluetoothClass;

    .line 430
    return-void
.end method

.method private gg()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 434
    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vW:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 451
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private gn()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 550
    invoke-interface {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->bE()V

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    return-void
.end method

.method private gp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vY:I

    .line 623
    return-void
.end method


# virtual methods
.method K(Z)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fZ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wa:J

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->L(Z)V

    goto :goto_0
.end method

.method a(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 538
    monitor-exit v1

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/PanProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vX:Z

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vX:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 136
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vX:Z

    goto :goto_0
.end method

.method a(S)V
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vS:S

    if-eq v0, p1, :cond_0

    .line 387
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vS:S

    .line 388
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 390
    :cond_0
    return-void
.end method

.method aj(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 487
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wb:Z

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ak(I)V

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 495
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fX()V

    .line 501
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wb:Z

    .line 503
    :cond_2
    return-void

    .line 498
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wb:Z

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->K(Z)V

    goto :goto_0
.end method

.method ak(I)V
    .locals 3
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 609
    if-nez p1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    iput p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vY:I

    .line 616
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method b(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vT:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 507
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vT:Landroid/bluetooth/BluetoothClass;

    .line 508
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 510
    :cond_0
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->T:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->f(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method disconnect()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method e(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wa:J

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vZ:Z

    .line 238
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->f(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 239
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 562
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    sub-int/2addr v0, v3

    .line 579
    if-eqz v0, :cond_3

    .line 595
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 578
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 582
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_4
    sub-int/2addr v0, v3

    .line 584
    if-nez v0, :cond_0

    .line 587
    iget-boolean v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v3, :cond_7

    :goto_6
    sub-int/2addr v0, v1

    .line 588
    if-nez v0, :cond_0

    .line 591
    iget-short v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vS:S

    iget-short v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vS:S

    sub-int/2addr v0, v1

    .line 592
    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 582
    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v0, v2

    .line 587
    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method fX()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->K(Z)V

    .line 182
    return-void
.end method

.method g(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method ga()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->dR()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    .line 273
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wb:Z

    goto :goto_0
.end method

.method gb()V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 290
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 294
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    .line 298
    if-eqz v0, :cond_1

    .line 300
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    return-void
.end method

.method gd()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ge()V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 355
    return-void
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method gh()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gf()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 461
    return-void
.end method

.method gi()V
    .locals 4

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gg()Z

    .line 478
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->wa:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->L(Z)V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 484
    return-void
.end method

.method gj()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vT:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method gk()Ljava/util/List;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method gl()Ljava/util/List;
    .locals 4

    .prologue
    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 524
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_1
    return-object v1
.end method

.method gm()Ljava/util/List;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vW:Ljava/util/List;

    return-object v0
.end method

.method go()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 415
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->g(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 417
    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 422
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method isConnected()Z
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->vV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->g(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 400
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 368
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 350
    :cond_0
    return-void

    .line 345
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setVisible(Z)V
    .locals 1
    .parameter

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 376
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 377
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()V

    .line 379
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
