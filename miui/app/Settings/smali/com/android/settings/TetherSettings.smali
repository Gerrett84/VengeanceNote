.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private c:Landroid/net/wifi/WifiManager;

.field private cv:[Ljava/lang/String;

.field private ze:Landroid/webkit/WebView;

.field private zf:Landroid/preference/CheckBoxPreference;

.field private zg:Lcom/android/settings/wifi/k;

.field private zh:Landroid/preference/CheckBoxPreference;

.field private zi:Landroid/preference/CheckBoxPreference;

.field private zj:Landroid/content/BroadcastReceiver;

.field private zk:[Ljava/lang/String;

.field private zl:[Ljava/lang/String;

.field private zm:Landroid/bluetooth/BluetoothPan;

.field private zn:[Ljava/lang/String;

.field private zo:Landroid/preference/Preference;

.field private zp:Lcom/android/settings/wifi/M;

.field private zq:Landroid/net/wifi/WifiConfiguration;

.field private zr:Z

.field private zs:Z

.field private zt:Z

.field private zu:I

.field private zv:[Ljava/lang/String;

.field private zw:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->zu:I

    .line 193
    new-instance v0, Lcom/android/settings/O;

    invoke-direct {v0, p0}, Lcom/android/settings/O;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zw:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 214
    return-void
.end method

.method private O(Z)V
    .locals 2
    .parameter

    .prologue
    .line 500
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 502
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 553
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 554
    array-length v5, p1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 555
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 560
    :goto_2
    return-object v0

    .line 554
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hz()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->zs:Z

    return p1
.end method

.method private ar(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 441
    iput p1, p0, Lcom/android/settings/TetherSettings;->zu:I

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->hA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zv:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zv:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hB()V

    goto :goto_0
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 327
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->zr:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->zs:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 328
    :goto_0
    const/4 v5, 0x0

    .line 329
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 330
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->zk:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 331
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    if-nez v2, :cond_0

    .line 333
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 330
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 338
    :cond_3
    const/4 v4, 0x0

    .line 339
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    .line 340
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->zk:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 341
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 340
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 339
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 344
    :cond_6
    const/4 v2, 0x0

    .line 345
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    .line 346
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->zk:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 347
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    .line 346
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 345
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 351
    :cond_9
    if-eqz v4, :cond_a

    .line 352
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    :goto_7
    return-void

    .line 355
    :cond_a
    if-eqz v1, :cond_c

    .line 356
    if-nez v5, :cond_b

    .line 357
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0349

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 361
    :goto_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 359
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 363
    :cond_c
    if-eqz v2, :cond_d

    .line 364
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 367
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->zs:Z

    if-eqz v0, :cond_e

    .line 368
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 372
    :cond_e
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->zt:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->zr:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

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

    .line 380
    .line 381
    array-length v6, p2

    move v4, v3

    move v5, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, p2, v4

    .line 382
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->zl:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    move v0, v5

    :goto_1
    if-ge v2, v9, :cond_1

    aget-object v5, v8, v2

    .line 383
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v0

    goto :goto_0

    .line 387
    :cond_2
    array-length v6, p3

    move v4, v3

    move v0, v3

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v7, p3, v4

    .line 388
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->zl:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    :goto_3
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 389
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v0, v1

    .line 388
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 387
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 393
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 395
    const/16 v4, 0xd

    if-ne v2, v4, :cond_6

    .line 396
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 420
    :goto_4
    return-void

    .line 398
    :cond_6
    const/16 v4, 0xb

    if-ne v2, v4, :cond_7

    .line 399
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 401
    :cond_7
    const/16 v4, 0xc

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 402
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 404
    if-le v5, v1, :cond_8

    .line 405
    const v0, 0x7f0b0351

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 408
    :cond_8
    if-ne v5, v1, :cond_9

    .line 409
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0350

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 410
    :cond_9
    if-eqz v0, :cond_a

    .line 411
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 413
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 416
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0352

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->zt:Z

    return p1
.end method

.method private hB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 473
    iget v0, p0, Lcom/android/settings/TetherSettings;->zu:I

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/k;->c(Z)V

    goto :goto_0

    .line 479
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 481
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->zt:Z

    .line 482
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 483
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b034f

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 491
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->O(Z)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hy()V
    .locals 7

    .prologue
    const v4, 0x7f0b0239

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 174
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    .line 175
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zn:[Ljava/lang/String;

    .line 178
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zo:Landroid/preference/Preference;

    .line 180
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 181
    const v0, 0x60c0198

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zo:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zn:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/M;->d(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 187
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zo:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zn:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private hz()V
    .locals 3

    .prologue
    .line 307
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 310
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 588
    const v0, 0x7f0b0664

    return v0
.end method

.method hA()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 434
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zv:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

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

    .line 452
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 453
    if-nez p1, :cond_0

    .line 454
    if-ne p2, v1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hB()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->zu:I

    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->zu:I

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 464
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 459
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

    .line 564
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zp:Lcom/android/settings/wifi/M;

    invoke-virtual {v0}, Lcom/android/settings/wifi/M;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    .line 566
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 574
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/M;->d(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zo:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zn:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 584
    :cond_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f050051

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 120
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zw:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 126
    :cond_0
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zh:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 129
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->zk:[Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->cv:[Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zl:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zk:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->cv:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 141
    :goto_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zl:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_5

    move v4, v1

    .line 143
    :goto_2
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_2
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 148
    new-instance v0, Lcom/android/settings/wifi/k;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zh:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v5, v3}, Lcom/android/settings/wifi/k;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hy()V

    .line 155
    :goto_3
    if-nez v4, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
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

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->zv:[Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ze:Landroid/webkit/WebView;

    .line 169
    return-void

    :cond_3
    move v0, v2

    .line 139
    goto :goto_0

    :cond_4
    move v3, v2

    .line 140
    goto :goto_1

    :cond_5
    move v4, v2

    .line 141
    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/android/settings/wifi/M;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zq:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/M;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->zp:Lcom/android/settings/wifi/M;

    .line 208
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zp:Lcom/android/settings/wifi/M;

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->ar(I)V

    .line 430
    :goto_0
    return v1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/k;->c(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 512
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 515
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 518
    if-eqz v0, :cond_1

    .line 519
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->ar(I)V

    .line 549
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 521
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->O(Z)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 524
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 526
    if-eqz v3, :cond_3

    .line 527
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->ar(I)V

    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 532
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->zl:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 538
    :goto_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zm:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 539
    if-eqz v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zi:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0352

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zo:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 546
    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->zs:Z

    .line 268
    new-instance v1, Lcom/android/settings/ei;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ei;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/O;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 272
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/k;->resume()V

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hz()V

    .line 293
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->zj:Landroid/content/BroadcastReceiver;

    .line 300
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->zg:Lcom/android/settings/wifi/k;

    invoke-virtual {v0}, Lcom/android/settings/wifi/k;->pause()V

    .line 304
    :cond_0
    return-void
.end method
