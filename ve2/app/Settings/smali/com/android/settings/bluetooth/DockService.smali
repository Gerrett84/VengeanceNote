.class public final Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field private N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private gb:Landroid/app/AlertDialog;

.field private final kA:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private final kB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final kC:Landroid/content/DialogInterface$OnDismissListener;

.field private final kD:Landroid/content/DialogInterface$OnClickListener;

.field private volatile kq:Landroid/os/Looper;

.field private volatile kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

.field private ks:Ljava/lang/Runnable;

.field private kt:Landroid/bluetooth/BluetoothDevice;

.field private ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field private kv:I

.field private kw:Landroid/bluetooth/BluetoothDevice;

.field private kx:I

.field private ky:I

.field private kz:I

.field private mCheckedItems:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->ky:I

    .line 120
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    .line 518
    new-instance v0, Lcom/android/settings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$2;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kA:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 530
    new-instance v0, Lcom/android/settings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$3;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 545
    new-instance v0, Lcom/android/settings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$4;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kC:Landroid/content/DialogInterface$OnDismissListener;

    .line 559
    new-instance v0, Lcom/android/settings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$5;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kD:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v1, 0x1bc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    return-void
.end method

.method private declared-synchronized a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 725
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 726
    if-eqz v0, :cond_0

    .line 727
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 729
    if-eqz v1, :cond_0

    .line 730
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 732
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->j(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 735
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->e(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 741
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, -0x64

    .line 635
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 636
    monitor-enter p0

    .line 638
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 639
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/DockService;->z(I)V

    .line 665
    :cond_0
    :goto_0
    monitor-exit p0

    .line 666
    return-void

    .line 640
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 646
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 647
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 652
    :try_start_1
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    if-eq v0, v2, :cond_3

    .line 653
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 654
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 655
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    .line 659
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 660
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->ky:I

    goto :goto_0

    .line 662
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/os/Message;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->i(Landroid/bluetooth/BluetoothDevice;)V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DockService;->g(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b01a9

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 583
    packed-switch p2, :pswitch_data_0

    .line 593
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :pswitch_0
    move v0, v1

    .line 596
    :goto_1
    new-array v2, v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 597
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .line 598
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 601
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 620
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 621
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fN()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v2

    aput-object v2, v1, v4

    .line 622
    if-eqz p3, :cond_1

    .line 624
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 590
    :pswitch_2
    const/4 v0, 0x2

    .line 591
    goto :goto_1

    .line 603
    :pswitch_3
    const v2, 0x7f0b01a8

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 604
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 605
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fO()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 606
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fN()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v1

    .line 607
    if-eqz p3, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v4

    .line 610
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v1

    goto :goto_0

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 613
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v2, v2, v4

    invoke-interface {v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    aput-boolean v2, v1, v4

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;)[Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 757
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 822
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 763
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-boolean v5, v3, v2

    .line 764
    if-eqz v5, :cond_3

    .line 765
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    .line 771
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 774
    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    .line 775
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    :cond_2
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    .line 780
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->kx:I

    .line 781
    const/16 v0, 0xb

    if-eq v5, v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 763
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 790
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    .line 793
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->j(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    move v2, v0

    .line 795
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 796
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v4, v4, v2

    .line 799
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_6

    move v0, v1

    .line 810
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    invoke-interface {v4, p1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 795
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 802
    :cond_6
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_5

    .line 804
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 805
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 807
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->ku:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 818
    :cond_7
    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->K(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized b(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 256
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 257
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 258
    const/4 v0, 0x0

    .line 259
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 266
    :goto_0
    const/4 v0, 0x0

    .line 268
    sparse-switch v2, :sswitch_data_0

    .line 290
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    const/16 v1, 0x14d

    if-eq v2, v1, :cond_0

    if-nez v0, :cond_0

    .line 294
    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit p0

    return-void

    .line 270
    :sswitch_0
    :try_start_1
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    goto :goto_1

    .line 278
    :sswitch_2
    invoke-direct {p0, v1, v4}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    goto :goto_1

    .line 282
    :sswitch_3
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 286
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->y(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v1, 0x1bc

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->i(Landroid/bluetooth/BluetoothDevice;)V

    .line 376
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 396
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 388
    :cond_2
    new-instance v0, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    .line 393
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Landroid/os/Message;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 422
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 423
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/16 v3, -0x4d2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 430
    if-nez v0, :cond_0

    .line 431
    const-string v0, "DockService"

    const-string v2, "device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 454
    :goto_0
    return-object v0

    .line 436
    :cond_0
    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 451
    goto :goto_0

    .line 438
    :pswitch_0
    const/16 v1, 0x14d

    .line 454
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_1
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    const/16 v1, 0x6f

    goto :goto_1

    .line 447
    :cond_1
    const/16 v1, 0xde

    .line 449
    goto :goto_1

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/high16 v7, 0x4160

    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 462
    iput-object v8, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    .line 464
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 465
    packed-switch p2, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 475
    :pswitch_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 478
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v5

    .line 480
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 482
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    const v2, 0x7f0b01a7

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 486
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->kA:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    .line 492
    const v2, 0x7f040069

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 493
    const v2, 0x7f080125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 496
    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 497
    :cond_1
    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 498
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->kB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 499
    mul-float v2, v7, v6

    float-to-int v2, v2

    .line 500
    mul-float v4, v7, v6

    float-to-int v4, v4

    move v5, v3

    .line 501
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 508
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->kD:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    iput p3, p0, Lcom/android/settings/bluetooth/DockService;->kv:I

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    .line 512
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kC:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    move v4, v3

    .line 478
    goto/16 :goto_1

    :cond_3
    move v5, v3

    .line 496
    goto :goto_2

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ci()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 176
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/bluetooth/DockService;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->kv:I

    return v0
.end method

.method private declared-synchronized d(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 829
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :goto_0
    monitor-exit p0

    return-void

    .line 831
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->j(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gl()Ljava/util/List;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 749
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->d(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 750
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->K(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :cond_1
    monitor-exit p0

    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 836
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    .line 837
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 838
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    .line 842
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    .line 844
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->j(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    monitor-exit p0

    return-void

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 3
    .parameter

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 850
    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 853
    :cond_0
    return-object v0
.end method

.method private y(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    goto :goto_0
.end method

.method private z(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, -0x64

    .line 669
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->kx:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 680
    :cond_0
    iput-object v5, p0, Lcom/android/settings/bluetooth/DockService;->kw:Landroid/bluetooth/BluetoothDevice;

    .line 681
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->kx:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 708
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->ky:I

    if-eq v0, v3, :cond_2

    .line 709
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->ky:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 710
    iput v3, p0, Lcom/android/settings/bluetooth/DockService;->ky:I

    .line 713
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 714
    :goto_1
    return-void

    .line 683
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 690
    if-eqz v1, :cond_1

    .line 691
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 693
    if-eqz v2, :cond_4

    .line 694
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 696
    if-eqz v0, :cond_1

    .line 697
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->h(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 699
    :cond_4
    const-string v1, "disable_bt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->kz:I

    .line 702
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized g(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->dB()Ljava/util/Collection;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 402
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 418
    :goto_0
    monitor-exit p0

    return v0

    .line 410
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 411
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 412
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 418
    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->eq()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 133
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->et()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ev()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_1

    .line 136
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DockService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kq:Landroid/os/Looper;

    .line 144
    new-instance v0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kq:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->gb:Landroid/app/AlertDialog;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kq:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->kq:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 162
    :cond_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 163
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->O:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 164
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 165
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kq:Landroid/os/Looper;

    .line 166
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->kr:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    .line 167
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->ks:Ljava/lang/Runnable;

    .line 860
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :cond_0
    monitor-exit p0

    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 183
    if-nez p1, :cond_1

    .line 189
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 239
    :cond_0
    :goto_0
    return v4

    .line 193
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->ci()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 206
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 207
    if-ge v2, v5, :cond_0

    .line 208
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fO()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 216
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 217
    if-ge v2, v5, :cond_0

    .line 218
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->P:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fN()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->c(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    .line 225
    if-nez v0, :cond_5

    .line 228
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xde

    if-ne v2, v3, :cond_6

    .line 233
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    :cond_6
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 237
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
