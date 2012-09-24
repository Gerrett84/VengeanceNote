.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final kJ:Landroid/net/IConnectivityManager;

.field private final kK:Landroid/security/KeyStore;

.field private kL:Z

.field private kM:Ljava/util/HashMap;

.field private kN:Lcom/android/settings/vpn2/b;

.field private kO:Landroid/os/Handler;

.field private kP:Lcom/android/internal/net/LegacyVpnInfo;

.field private kQ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kJ:Landroid/net/IConnectivityManager;

    .line 60
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kL:Z

    .line 472
    return-void
.end method

.method private b(Lcom/android/settings/vpn2/c;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 353
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->ck()[Ljava/lang/String;

    move-result-object v0

    .line 354
    aget-object v5, v0, v9

    .line 355
    aget-object v6, v0, v8

    .line 358
    const-string v1, ""

    .line 359
    const-string v0, ""

    .line 360
    const-string v2, ""

    .line 361
    const-string v3, ""

    .line 362
    iget-object v4, p1, Lcom/android/settings/vpn2/c;->BG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->BG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Lcom/android/settings/vpn2/c;->BG:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .line 369
    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 371
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/android/settings/vpn2/c;->BH:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Lcom/android/settings/vpn2/c;->BH:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .line 373
    if-nez v4, :cond_4

    const/4 v2, 0x0

    .line 375
    :cond_1
    :goto_1
    iget-object v4, p1, Lcom/android/settings/vpn2/c;->BI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 376
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Lcom/android/settings/vpn2/c;->BI:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .line 377
    if-nez v4, :cond_5

    const/4 v3, 0x0

    :goto_2
    move-object v4, v3

    .line 379
    :goto_3
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_6

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0637

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load credentials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_3
    new-instance v0, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 373
    :cond_4
    new-instance v2, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 377
    :cond_5
    new-instance v3, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 385
    :cond_6
    const/4 v3, 0x0

    .line 386
    iget v7, p1, Lcom/android/settings/vpn2/c;->type:I

    packed-switch v7, :pswitch_data_0

    move-object v0, v3

    .line 420
    :goto_4
    const/4 v1, 0x0

    .line 421
    iget v2, p1, Lcom/android/settings/vpn2/c;->type:I

    packed-switch v2, :pswitch_data_1

    .line 442
    :goto_5
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 443
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 444
    iput-object v5, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 445
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 446
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 447
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->BA:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 448
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->BA:Ljava/lang/String;

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 450
    :cond_7
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->BB:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 451
    iget-object v3, p1, Lcom/android/settings/vpn2/c;->BB:Ljava/lang/String;

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 454
    :cond_8
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->kJ:Landroid/net/IConnectivityManager;

    invoke-interface {v3, v2, v0, v1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    return-void

    .line 388
    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v9

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, "udppsk"

    aput-object v1, v0, v10

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->BE:Ljava/lang/String;

    aput-object v1, v0, v11

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->BF:Ljava/lang/String;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    const-string v2, "1701"

    aput-object v2, v0, v1

    goto :goto_4

    .line 394
    :pswitch_1
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v9

    iget-object v6, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v6, v3, v8

    const-string v6, "udprsa"

    aput-object v6, v3, v10

    aput-object v1, v3, v11

    aput-object v0, v3, v12

    const/4 v0, 0x5

    aput-object v2, v3, v0

    const/4 v0, 0x6

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v1, "1701"

    aput-object v1, v3, v0

    move-object v0, v3

    .line 398
    goto/16 :goto_4

    .line 400
    :pswitch_2
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v9

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, "xauthpsk"

    aput-object v1, v0, v10

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->BE:Ljava/lang/String;

    aput-object v1, v0, v11

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->BF:Ljava/lang/String;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v6, v0, v1

    goto/16 :goto_4

    .line 406
    :pswitch_3
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v9

    iget-object v7, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v7, v3, v8

    const-string v7, "xauthrsa"

    aput-object v7, v3, v10

    aput-object v1, v3, v11

    aput-object v0, v3, v12

    const/4 v0, 0x5

    aput-object v2, v3, v0

    const/4 v0, 0x6

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x8

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, ""

    aput-object v1, v3, v0

    const/16 v0, 0xa

    aput-object v6, v3, v0

    move-object v0, v3

    .line 410
    goto/16 :goto_4

    .line 412
    :pswitch_4
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v9

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, "hybridrsa"

    aput-object v1, v0, v10

    aput-object v2, v0, v11

    aput-object v4, v0, v12

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v6, v0, v1

    goto/16 :goto_4

    .line 423
    :pswitch_5
    const/16 v1, 0x14

    new-array v2, v1, [Ljava/lang/String;

    aput-object v5, v2, v9

    const-string v1, "pptp"

    aput-object v1, v2, v8

    iget-object v1, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v1, v2, v10

    const-string v1, "1723"

    aput-object v1, v2, v11

    const-string v1, "name"

    aput-object v1, v2, v12

    const/4 v1, 0x5

    iget-object v3, p1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "password"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, p1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "linkname"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "vpn"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "refuse-eap"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "nodefaultroute"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "usepeerdns"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "idle"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "1800"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-string v3, "mtu"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "1400"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "mru"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "1400"

    aput-object v3, v2, v1

    const/16 v3, 0x13

    iget-boolean v1, p1, Lcom/android/settings/vpn2/c;->BC:Z

    if-eqz v1, :cond_9

    const-string v1, "+mppe"

    :goto_6
    aput-object v1, v2, v3

    move-object v1, v2

    .line 430
    goto/16 :goto_5

    .line 423
    :cond_9
    const-string v1, "nomppe"

    goto :goto_6

    .line 433
    :pswitch_6
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    aput-object v5, v1, v9

    const-string v2, "l2tp"

    aput-object v2, v1, v8

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    aput-object v2, v1, v10

    const-string v2, "1701"

    aput-object v2, v1, v11

    iget-object v2, p1, Lcom/android/settings/vpn2/c;->BD:Ljava/lang/String;

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "password"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "linkname"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "vpn"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "refuse-eap"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "nodefaultroute"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "usepeerdns"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "idle"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "1800"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "mtu"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "1400"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mru"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "1400"

    aput-object v3, v1, v2

    goto/16 :goto_5

    :cond_a
    move-object v4, v3

    goto/16 :goto_3

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 421
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private ck()[Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0b0636

    const/4 v5, 0x1

    .line 326
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kJ:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 327
    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 332
    if-nez v2, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the default interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 339
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    if-nez v0, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the default gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object v0, v1, v5

    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private u(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kJ:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected A()I
    .locals 1

    .prologue
    .line 469
    const v0, 0x7f0b065e

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kO:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kJ:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/a;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/a;->update(I)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    .line 310
    :cond_1
    if-eqz v1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/a;

    .line 312
    if-eqz v0, :cond_2

    .line 313
    iget v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v0, v2}, Lcom/android/settings/vpn2/a;->update(I)V

    .line 314
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kO:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->ad()Lcom/android/settings/vpn2/c;

    move-result-object v1

    .line 190
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/vpn2/c;->hX()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 193
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/a;

    .line 194
    if-eqz v0, :cond_1

    .line 195
    iget-object v2, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->u(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/a;->a(Lcom/android/settings/vpn2/c;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->fw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->b(Lcom/android/settings/vpn2/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_1
    return-void

    .line 198
    :cond_1
    new-instance v0, Lcom/android/settings/vpn2/a;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/vpn2/a;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/c;)V

    .line 199
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "VpnSettings"

    const-string v2, "connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "VpnSettings"

    const-string v2, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 260
    :goto_0
    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->kQ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/a;

    .line 242
    if-nez v0, :cond_1

    .line 243
    const-string v0, "VpnSettings"

    const-string v2, "onContextItemSelected() is called but no preference is found"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 260
    goto :goto_0

    .line 249
    :pswitch_0
    new-instance v1, Lcom/android/settings/vpn2/b;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/vpn2/a;->ad()Lcom/android/settings/vpn2/c;

    move-result-object v0

    invoke-direct {v1, v3, p0, v0, v2}, Lcom/android/settings/vpn2/b;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/c;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    .line 250
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->show()V

    move v0, v2

    .line 252
    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kQ:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->u(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->kQ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v0, v2

    .line 258
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0634
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "VpnKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/c;->a(Ljava/lang/String;[B)Lcom/android/settings/vpn2/c;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/android/settings/vpn2/b;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/b;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/c;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b0635

    const v3, 0x7f0b0634

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "VpnSettings"

    const-string v1, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 224
    instance-of v1, v0, Lcom/android/settings/vpn2/a;

    if-eqz v1, :cond_0

    .line 225
    check-cast v0, Lcom/android/settings/vpn2/a;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/a;->ad()Lcom/android/settings/vpn2/c;

    move-result-object v0

    .line 226
    iget-object v1, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kQ:Ljava/lang/String;

    .line 227
    iget-object v0, v0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 228
    invoke-interface {p1, v2, v3, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 229
    invoke-interface {p1, v2, v4, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->dismiss()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "VpnSettings"

    const-string v1, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return v5

    .line 270
    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/a;

    if-eqz v0, :cond_2

    .line 271
    check-cast p1, Lcom/android/settings/vpn2/a;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/a;->ad()Lcom/android/settings/vpn2/c;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    iget v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kP:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 281
    :cond_1
    new-instance v1, Lcom/android/settings/vpn2/b;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/b;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/c;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->show()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    :goto_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 288
    :cond_3
    new-instance v2, Lcom/android/settings/vpn2/b;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/vpn2/c;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/settings/vpn2/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/settings/vpn2/b;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/c;Z)V

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_2

    .line 106
    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kL:Z

    if-nez v1, :cond_1

    .line 108
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 113
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kL:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kL:Z

    .line 161
    :goto_1
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->lZ()V

    goto :goto_0

    .line 118
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kL:Z

    .line 123
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 127
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    const-string v3, "VPN_"

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 128
    if-eqz v3, :cond_4

    array-length v1, v3

    if-lez v1, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 131
    array-length v5, v3

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v3, v1

    .line 132
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/vpn2/c;->a(Ljava/lang/String;[B)Lcom/android/settings/vpn2/c;

    move-result-object v7

    .line 134
    if-nez v7, :cond_3

    .line 135
    const-string v7, "VpnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad profile: key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings;->kK:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 131
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    :cond_3
    new-instance v8, Lcom/android/settings/vpn2/a;

    invoke-direct {v8, p0, v4, v7}, Lcom/android/settings/vpn2/a;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/c;)V

    .line 139
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings;->kM:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 144
    :cond_4
    const-string v1, "add_network"

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/b;->show()V

    .line 154
    :cond_6
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kO:Landroid/os/Handler;

    if-nez v1, :cond_7

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kO:Landroid/os/Handler;

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kO:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/b;->ad()Lcom/android/settings/vpn2/c;

    move-result-object v0

    .line 93
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/settings/vpn2/c;->hX()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 95
    const-string v0, "VpnEditing"

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->kN:Lcom/android/settings/vpn2/b;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/b;->fw()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    :cond_0
    return-void
.end method
