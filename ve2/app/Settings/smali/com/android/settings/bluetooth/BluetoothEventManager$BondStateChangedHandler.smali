.class Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# instance fields
.field final synthetic fg:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    packed-switch p3, :pswitch_data_0

    .line 320
    :pswitch_0
    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 305
    :pswitch_1
    const v0, 0x7f0b0175

    .line 323
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 308
    :pswitch_2
    const v0, 0x7f0b0177

    .line 309
    goto :goto_1

    .line 311
    :pswitch_3
    const v0, 0x7f0b0176

    .line 312
    goto :goto_1

    .line 317
    :pswitch_4
    const v0, 0x7f0b0174

    .line 318
    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, -0x8000

    .line 246
    if-nez p3, :cond_1

    .line 247
    const-string v0, "BluetoothEventManager"

    const-string v1, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 253
    if-nez v0, :cond_3

    .line 254
    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CachedBluetoothDevice for device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found, calling readPairedDevices()."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got bonding state changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but we have no record of that device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->d(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 262
    if-nez v0, :cond_3

    .line 263
    const-string v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got bonding state changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but device not added in cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    .line 269
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->fg:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->c(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 271
    invoke-interface {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothCallback;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->aj(I)V

    .line 276
    const/16 v0, 0xa

    if-ne v2, v0, :cond_0

    .line 277
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 284
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 287
    :cond_5
    const-string v0, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 290
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
