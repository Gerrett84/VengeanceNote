.class final Lcom/android/settings/widget/a;
.super Lcom/android/settings/widget/e;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/e;-><init>(Lcom/android/settings/widget/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/settings/widget/a;-><init>()V

    return-void
.end method

.method private static c(I)I
    .locals 1
    .parameter

    .prologue
    .line 467
    packed-switch p0, :pswitch_data_0

    .line 477
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 469
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 475
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public F()I
    .locals 1

    .prologue
    .line 415
    const v0, 0x7f080182

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 416
    const v0, 0x7f080183

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 455
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 459
    invoke-static {v0}, Lcom/android/settings/widget/a;->c(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dV()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/android/settings/widget/q;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/q;-><init>(Lcom/android/settings/widget/a;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 418
    if-eqz p1, :cond_0

    const v0, 0x7f02003d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02003c

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 424
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dV()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 425
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 426
    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x4

    .line 431
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dH()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 431
    :cond_1
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dV()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/a;->c(I)I

    move-result v0

    goto :goto_0
.end method
