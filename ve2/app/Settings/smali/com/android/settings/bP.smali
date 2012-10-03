.class public Lcom/android/settings/bP;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# static fields
.field private static za:Ljava/util/HashMap;

.field private static zb:Ljava/util/HashMap;

.field private static zc:Ljava/util/ArrayList;

.field private static zd:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zb:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    .line 28
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f050008

    const v2, 0x7f080217

    const v3, 0x7f0b00ec

    const v4, 0x7f0b066a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 29
    const-string v0, "mobile_network_settings"

    const v1, 0x7f05002e

    const v2, 0x7f080222

    const v3, 0x7f0b0357

    const v4, 0x7f0b066b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 30
    const-string v0, "wifi_settings"

    const v1, 0x7f05005f

    const v2, 0x7f080226

    const v3, 0x7f0b01b9

    const v4, 0x7f0b066c

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 31
    const-string v0, "bluetooth_settings"

    const v1, 0x7f050011

    const v2, 0x7f08021a

    const v3, 0x7f0b0165

    const v4, 0x7f0b066d

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 32
    const-string v0, "android_beam_settings"

    const v1, 0x7f050009

    const v2, 0x7f080218

    const v3, 0x7f0b01ad

    const v4, 0x7f0b066e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 33
    const-string v0, "vpn_settings"

    const v1, 0x7f050058

    const v2, 0x7f08023d

    const v3, 0x7f0b0522

    const v4, 0x7f0b066f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 34
    const-string v0, "tether_settings"

    const v1, 0x7f05004f

    const v2, 0x7f08023b

    const v3, 0x7f0b0346

    const v4, 0x7f0b0670

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 35
    const-string v0, "brightness"

    const v1, 0x7f050013

    const v2, 0x7f08021b

    const v3, 0x7f0b028a

    const v4, 0x7f0b0671

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 36
    const-string v0, "wallpaper"

    const v1, 0x7f05005a

    const v2, 0x7f08023e

    const v3, 0x7f0b028e

    const v4, 0x7f0b0672

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 37
    const-string v0, "launcher_settings"

    const v1, 0x7f050028

    const v2, 0x7f080220

    const v3, 0x7f0b06a6

    const v4, 0x7f0b0673

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 38
    const-string v0, "accelerometer"

    const v1, 0x7f050001

    const v2, 0x7f080215

    const v3, 0x7f0b0287

    const v4, 0x7f0b0674

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 39
    const-string v0, "screen_timeout"

    const v1, 0x7f050034

    const v2, 0x7f080225

    const v3, 0x7f0b06a7

    const v4, 0x7f0b0675

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 40
    const-string v0, "ring_volume"

    const v1, 0x7f050032

    const v2, 0x7f080223

    const v3, 0x7f0b025d

    const v4, 0x7f0b0676

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "ringtone"

    const v1, 0x7f050033

    const v2, 0x7f080224

    const v3, 0x7f0b0259

    const v4, 0x7f0b0677

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 42
    const-string v0, "sms_received_sound"

    const v1, 0x7f050046

    const v2, 0x7f080239

    const v3, 0x7f0b0693

    const v4, 0x7f0b0678

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 43
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f050054

    const v2, 0x7f08023c

    const v3, 0x7f0b012e

    const v4, 0x7f0b067a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 44
    const-string v0, "access_control_settings"

    const v1, 0x7f050003

    const v2, 0x7f080216

    const v3, 0x7f0b0698

    const v4, 0x7f0b067b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 45
    const-string v0, "location_gps"

    const v1, 0x7f050022

    const v2, 0x7f08021d

    const v3, 0x7f0b035c

    const v4, 0x7f0b067c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 46
    const-string v0, "status_bar_settings"

    const v1, 0x7f05004a

    const v2, 0x7f08022c

    const v3, 0x7f0b06ca

    const v4, 0x7f0b067d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "sync_settings"

    const v1, 0x7f05004b

    const v2, 0x7f08023a

    const v3, 0x7f0b0692

    const v4, 0x7f0b067e

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 48
    const-string v0, "battery_indicator_style"

    const v1, 0x7f05000e

    const v2, 0x7f080219

    const v3, 0x7f0b06cf

    const v4, 0x7f0b067f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 49
    const-string v0, "key_settings"

    const v1, 0x7f050024

    const v2, 0x7f08021e

    const v3, 0x7f0b06aa

    const v4, 0x7f0b0680

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 50
    const-string v0, "led_settings"

    const v1, 0x7f050029

    const v2, 0x7f080221

    const v3, 0x7f0b06e7

    const v4, 0x7f0b0681

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 51
    const-string v0, "date_time_settings"

    const v1, 0x7f050015

    const v2, 0x7f08021c

    const v3, 0x7f0b00f9

    const v4, 0x7f0b0682

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 52
    const-string v0, "language_settings"

    const v1, 0x7f050026

    const v2, 0x7f08021f

    const v3, 0x7f0b0421

    const v4, 0x7f0b0683

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "about_settings"

    const/high16 v1, 0x7f05

    const v2, 0x7f080214

    const v3, 0x7f0b0363

    const v4, 0x7f0b0284

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method public static O(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 93
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/String;IIIIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    sget-object v1, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/android/settings/bP;->zb:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v7, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/cK;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/cK;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p4}, Lcom/android/settings/bP;->am(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method private static am(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    const v1, 0x7f0b066e

    if-ne v1, p0, :cond_0

    .line 73
    invoke-static {}, Lcom/android/settings/bP;->hu()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public static an(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    sget-object v1, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 99
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    iget-object v0, v0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    .line 101
    :cond_0
    return-object v0
.end method

.method public static ao(I)I
    .locals 2
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static ap(I)I
    .locals 1
    .parameter

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 125
    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    iget v0, v0, Lcom/android/settings/cK;->GB:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static hu()Z
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.hardware.nfc"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hv()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    .line 112
    iget-boolean v3, v0, Lcom/android/settings/cK;->GD:Z

    if-eqz v3, :cond_0

    .line 113
    iget-object v0, v0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    return-object v1
.end method

.method public static hw()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static hx()[I
    .locals 4

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    new-array v3, v2, [I

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    iget v0, v0, Lcom/android/settings/cK;->Gz:I

    aput v0, v3, v1

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    return-object v3
.end method
