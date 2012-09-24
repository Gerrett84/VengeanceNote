.class Lcom/android/settings/dN;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# instance fields
.field final synthetic cT:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/C;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/dN;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const-string v0, "availableArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    const-string v1, "activeArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 275
    const-string v2, "erroredArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 283
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Z)Z

    .line 285
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 286
    :cond_3
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    const-string v1, "connected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->b(Lcom/android/settings/TetherSettings;Z)Z

    .line 288
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 289
    :cond_4
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->b(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 307
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 294
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->c(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->c(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 300
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/dN;->cT:Lcom/android/settings/TetherSettings;

    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->c(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
