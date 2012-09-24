.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private c:Landroid/net/wifi/WifiManager;

.field private cl:[Ljava/lang/String;

.field private we:Landroid/webkit/WebView;

.field private wf:Landroid/preference/CheckBoxPreference;

.field private wg:Lcom/android/settings/wifi/k;

.field private wh:Landroid/preference/CheckBoxPreference;

.field private wi:Landroid/preference/CheckBoxPreference;

.field private wj:Landroid/preference/PreferenceScreen;

.field private wk:Landroid/content/BroadcastReceiver;

.field private wl:[Ljava/lang/String;

.field private wm:[Ljava/lang/String;

.field private wn:Landroid/bluetooth/BluetoothPan;

.field private wo:[Ljava/lang/String;

.field private wp:Landroid/preference/Preference;

.field private wq:Lcom/android/settings/wifi/D;

.field private wr:Landroid/net/wifi/WifiConfiguration;

.field private ws:Z

.field private wt:Z

.field private wu:Z

.field private wv:I

.field private ww:[Ljava/lang/String;

.field private wx:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->wv:I

    .line 201
    new-instance v0, Lcom/android/settings/C;

    invoke-direct {v0, p0}, Lcom/android/settings/C;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wx:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 265
    return-void
.end method

.method private P(Z)V
    .locals 2
    .parameter

    .prologue
    .line 548
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 550
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 556
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 604
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 605
    array-length v5, p1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 606
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 611
    :goto_2
    return-object v0

    .line 605
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->fW()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->wt:Z

    return p1
.end method

.method private af(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 489
    iput p1, p0, Lcom/android/settings/TetherSettings;->wv:I

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->fX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ww:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ww:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->fY()V

    goto :goto_0
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 378
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->ws:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->wt:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 379
    :goto_0
    const/4 v5, 0x0

    .line 380
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 381
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 382
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    if-nez v2, :cond_0

    .line 384
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 381
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 380
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 389
    :cond_3
    const/4 v4, 0x0

    .line 390
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    .line 391
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 392
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 391
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 390
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 395
    :cond_6
    const/4 v2, 0x0

    .line 396
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    .line 397
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 398
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    .line 397
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 396
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 402
    :cond_9
    if-eqz v4, :cond_a

    .line 403
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0326

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 427
    :goto_7
    return-void

    .line 406
    :cond_a
    if-eqz v1, :cond_c

    .line 407
    if-nez v5, :cond_b

    .line 408
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0325

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 412
    :goto_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 410
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 414
    :cond_c
    if-eqz v2, :cond_d

    .line 415
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 418
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->wt:Z

    if-eqz v0, :cond_e

    .line 419
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0327

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 423
    :cond_e
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->wu:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->ws:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method private c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 431
    .line 432
    array-length v6, p2

    move v4, v3

    move v5, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, p2, v4

    .line 433
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->wm:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    move v0, v5

    :goto_1
    if-ge v2, v9, :cond_1

    aget-object v5, v8, v2

    .line 434
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 433
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 432
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v0

    goto :goto_0

    .line 438
    :cond_2
    array-length v6, p3

    move v4, v3

    move v0, v3

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v7, p3, v4

    .line 439
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->wm:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    :goto_3
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 440
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v0, v1

    .line 439
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 438
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 444
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 446
    const/16 v4, 0xd

    if-ne v2, v4, :cond_6

    .line 447
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 471
    :goto_4
    return-void

    .line 449
    :cond_6
    const/16 v4, 0xb

    if-ne v2, v4, :cond_7

    .line 450
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 452
    :cond_7
    const/16 v4, 0xc

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 453
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    if-le v5, v1, :cond_8

    .line 456
    const v0, 0x7f0b032d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 459
    :cond_8
    if-ne v5, v1, :cond_9

    .line 460
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 461
    :cond_9
    if-eqz v0, :cond_a

    .line 462
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 464
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 467
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->wu:Z

    return p1
.end method

.method private fV()V
    .locals 7

    .prologue
    const v4, 0x7f0b0221

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 182
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    .line 183
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wo:[Ljava/lang/String;

    .line 186
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wp:Landroid/preference/Preference;

    .line 188
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 189
    const v0, 0x60c0198

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wp:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wo:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/D;->e(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 195
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wp:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wo:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private fW()V
    .locals 3

    .prologue
    .line 358
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 361
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private fY()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    iget v0, p0, Lcom/android/settings/TetherSettings;->wv:I

    packed-switch v0, :pswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 523
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/k;->c(Z)V

    goto :goto_0

    .line 527
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 529
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->wu:Z

    .line 530
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 531
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 539
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->P(Z)V

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method fX()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ww:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 501
    if-nez p1, :cond_0

    .line 502
    if-ne p2, v1, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->fY()V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->wv:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->wv:I

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wq:Lcom/android/settings/wifi/D;

    invoke-virtual {v0}, Lcom/android/settings/wifi/D;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    .line 617
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 625
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/D;->e(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wp:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0221

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wo:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 127
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wx:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 133
    :cond_0
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wh:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 136
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v0, "tethering_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wj:Landroid/preference/PreferenceScreen;

    .line 140
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 143
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->cl:[Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wm:[Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->cl:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 149
    :goto_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wm:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_5

    move v4, v1

    .line 151
    :goto_2
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/ci;->hg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_2
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/settings/ci;->hg()Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    new-instance v0, Lcom/android/settings/wifi/k;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wh:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v5, v3}, Lcom/android/settings/wifi/k;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->fV()V

    .line 163
    :goto_3
    if-nez v4, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x6060005

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ww:[Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->we:Landroid/webkit/WebView;

    .line 177
    return-void

    :cond_3
    move v0, v2

    .line 147
    goto :goto_0

    :cond_4
    move v3, v2

    .line 148
    goto :goto_1

    :cond_5
    move v4, v2

    .line 149
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x5f

    const/4 v1, 0x1

    .line 213
    if-ne p1, v1, :cond_6

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 218
    const-string v4, "html/%y%z/tethering_help.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 219
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 221
    const/4 v5, 0x0

    .line 223
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 227
    if-eqz v0, :cond_8

    .line 229
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 233
    :cond_0
    :goto_0
    const-string v2, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v4, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v4, "%z"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->cl:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_4

    .line 236
    const-string v2, "%x"

    const-string v3, "usb_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->we:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->we:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 249
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->we:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0332

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->we:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 262
    :goto_3
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    const/4 v0, 0x0

    .line 227
    if-eqz v2, :cond_0

    .line 229
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 230
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 227
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 229
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 230
    :cond_2
    :goto_4
    throw v0

    .line 234
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->cl:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wl:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_5

    .line 238
    const-string v2, "%x"

    const-string v3, "wifi_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 242
    :cond_5
    const-string v2, "%x"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 256
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/android/settings/wifi/D;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wr:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/D;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->wq:Lcom/android/settings/wifi/D;

    .line 259
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wq:Lcom/android/settings/wifi/D;

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 262
    goto :goto_3

    .line 230
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 474
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->af(I)V

    .line 481
    :goto_0
    return v1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/k;->c(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 560
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 563
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 566
    if-eqz v0, :cond_1

    .line 567
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->af(I)V

    .line 600
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 569
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->P(Z)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 572
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 574
    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->af(I)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 580
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->wm:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    if-eqz v3, :cond_7

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 586
    :goto_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 587
    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 593
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wj:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_6

    .line 594
    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_1

    .line 596
    :cond_6
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wp:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 597
    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 318
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->wt:Z

    .line 319
    new-instance v1, Lcom/android/settings/dN;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/dN;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/C;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 323
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/k;->resume()V

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->fW()V

    .line 344
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->wk:Landroid/content/BroadcastReceiver;

    .line 351
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->wg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/k;->pause()V

    .line 355
    :cond_0
    return-void
.end method
