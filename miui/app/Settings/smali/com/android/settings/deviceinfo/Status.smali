.class public Lcom/android/settings/deviceinfo/Status;
.super Lmiui/preference/BasePreferenceActivity;
.source "Status.java"


# static fields
.field private static final Cs:[Ljava/lang/String;

.field private static Cv:Ljava/lang/String;


# instance fields
.field private Ct:Landroid/preference/Preference;

.field private Cu:Landroid/preference/Preference;

.field private Cw:Landroid/preference/Preference;

.field private Cx:Landroid/preference/Preference;

.field private J:Landroid/content/res/Resources;

.field private lE:Landroid/telephony/PhoneStateListener;

.field private ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private tY:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->Cs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 163
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->tY:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->lE:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private S(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method private a(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 368
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    const-string v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_1
    const-string v0, "operator_name"

    new-instance v1, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    const-string v0, "roaming_state"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->a(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private ax(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 485
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 486
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Cx:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Cw:Landroid/preference/Preference;

    return-object v0
.end method

.method private cu()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 346
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    packed-switch v1, :pswitch_data_0

    .line 363
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cv()V
    .locals 3

    .prologue
    .line 340
    const-string v0, "network_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->cu()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->cv()V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object p2, Lcom/android/settings/deviceinfo/Status;->Cv:Ljava/lang/String;

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    return-void
.end method

.method private ip()V
    .locals 3

    .prologue
    .line 424
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 425
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 427
    if-nez v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 429
    const-string v1, "wimax_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 433
    const-string v1, "net.wimax.mac.address"

    const v2, 0x7f0b02d3

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private iq()V
    .locals 3

    .prologue
    .line 439
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 440
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 442
    const-string v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 444
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 445
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    return-void

    .line 444
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_1
    const v0, 0x7f0b02d3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private ir()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 451
    invoke-static {p0}, Lcom/android/settings/cu;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    const v1, 0x7f0b02d3

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private is()V
    .locals 3

    .prologue
    .line 460
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 461
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 463
    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 468
    :cond_2
    const v0, 0x7f0b02d3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private w(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 493
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 494
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 495
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->ax(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->ax(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cq()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 398
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ct:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 403
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ct:Landroid/preference/Preference;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 410
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 414
    if-ne v4, v2, :cond_4

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->Ct:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method fv()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 477
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 478
    const-wide/16 v0, 0x1

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->Cu:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->w(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    new-instance v0, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 190
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 192
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 193
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Cx:Landroid/preference/Preference;

    .line 194
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Cw:Landroid/preference/Preference;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    .line 197
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->Cv:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->J:Landroid/content/res/Resources;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->Cv:Ljava/lang/String;

    .line 201
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 203
    const-string v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Ct:Landroid/preference/Preference;

    .line 204
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->Cu:Landroid/preference/Preference;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v1, Lcom/android/settings/deviceinfo/Status;->Cs:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 208
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    const-string v0, "meid_number"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "min_number"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "min_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    :cond_2
    const-string v0, "prl_version"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "imei_sv"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 224
    const-string v0, "icc_id"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 248
    const/4 v0, 0x0

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_3
    const-string v1, "number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 256
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 260
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->ip()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->iq()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->is()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->ir()V

    .line 265
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 266
    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 267
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_2
    return-void

    .line 229
    :cond_5
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 230
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_6
    const-string v0, "imei"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "imei_sv"

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "prl_version"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 242
    const-string v0, "meid_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 243
    const-string v0, "min_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    .line 244
    const-string v0, "icc_id"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    :cond_7
    const-string v0, "serial_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->S(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 297
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->lE:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->tY:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->cq()V

    .line 281
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->a(Landroid/telephony/ServiceState;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->cu()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->lE:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->tY:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method
