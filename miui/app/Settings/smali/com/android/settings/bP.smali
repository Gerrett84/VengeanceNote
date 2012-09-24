.class public Lcom/android/settings/bP;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# static fields
.field private static yZ:Ljava/util/HashMap;

.field private static za:Ljava/util/HashMap;

.field private static zb:Ljava/util/ArrayList;

.field private static zc:Ljava/util/ArrayList;

.field private static zd:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->yZ:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    .line 31
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f050008

    const v2, 0x7f080217

    const v3, 0x7f0b00ec

    const v4, 0x7f0b066a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 32
    const-string v0, "mobile_network_settings"

    const v1, 0x7f05002e

    const v2, 0x7f080222

    const v3, 0x7f0b0357

    const v4, 0x7f0b066b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 33
    const-string v0, "wifi_settings"

    const v1, 0x7f050061

    const v2, 0x7f080227

    const v3, 0x7f0b01b9

    const v4, 0x7f0b066c

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 34
    const-string v0, "bluetooth_settings"

    const v1, 0x7f050011

    const v2, 0x7f08021a

    const v3, 0x7f0b0165

    const v4, 0x7f0b066d

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 35
    const-string v0, "android_beam_settings"

    const v1, 0x7f050009

    const v2, 0x7f080218

    const v3, 0x7f0b01ad

    const v4, 0x7f0b066e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 36
    const-string v0, "vpn_settings"

    const v1, 0x7f050059

    const v2, 0x7f08023e

    const v3, 0x7f0b0522

    const v4, 0x7f0b066f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 37
    const-string v0, "tether_settings"

    const v1, 0x7f050050

    const v2, 0x7f08023c

    const v3, 0x7f0b0346

    const v4, 0x7f0b0670

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 38
    const-string v0, "brightness"

    const v1, 0x7f050013

    const v2, 0x7f08021b

    const v3, 0x7f0b028a

    const v4, 0x7f0b0671

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 39
    const-string v0, "wallpaper"

    const v1, 0x7f05005b

    const v2, 0x7f08023f

    const v3, 0x7f0b028e

    const v4, 0x7f0b0672

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 40
    const-string v0, "launcher_settings"

    const v1, 0x7f050028

    const v2, 0x7f080220

    const v3, 0x7f0b06a7

    const v4, 0x7f0b0673

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "accelerometer"

    const v1, 0x7f050001

    const v2, 0x7f080215

    const v3, 0x7f0b0287

    const v4, 0x7f0b0674

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 42
    const-string v0, "screen_timeout"

    const v1, 0x7f050035

    const v2, 0x7f080226

    const v3, 0x7f0b06a8

    const v4, 0x7f0b0675

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 43
    const-string v0, "ring_volume"

    const v1, 0x7f050033

    const v2, 0x7f080224

    const v3, 0x7f0b025d

    const v4, 0x7f0b0676

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 44
    const-string v0, "ringtone"

    const v1, 0x7f050034

    const v2, 0x7f080225

    const v3, 0x7f0b0259

    const v4, 0x7f0b0677

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 45
    const-string v0, "sms_received_sound"

    const v1, 0x7f050047

    const v2, 0x7f08023a

    const v3, 0x7f0b0694

    const v4, 0x7f0b0678

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 46
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f050055

    const v2, 0x7f08023d

    const v3, 0x7f0b012e

    const v4, 0x7f0b067a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "access_control_settings"

    const v1, 0x7f050003

    const v2, 0x7f080216

    const v3, 0x7f0b0699

    const v4, 0x7f0b067b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 48
    const-string v0, "location_gps"

    const v1, 0x7f050022

    const v2, 0x7f08021d

    const v3, 0x7f0b035c

    const v4, 0x7f0b067c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 49
    const-string v0, "status_bar_settings"

    const v1, 0x7f05004b

    const v2, 0x7f08022d

    const v3, 0x7f0b06cb

    const v4, 0x7f0b067d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 50
    const-string v0, "sync_settings"

    const v1, 0x7f05004c

    const v2, 0x7f08023b

    const v3, 0x7f0b0693

    const v4, 0x7f0b067e

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 51
    const-string v0, "battery_indicator_style"

    const v1, 0x7f05000e

    const v2, 0x7f080219

    const v3, 0x7f0b06d0

    const v4, 0x7f0b067f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 52
    const-string v0, "key_settings"

    const v1, 0x7f050024

    const v2, 0x7f08021e

    const v3, 0x7f0b06ab

    const v4, 0x7f0b0680

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "led_settings"

    const v1, 0x7f050029

    const v2, 0x7f080221

    const v3, 0x7f0b06e8

    const v4, 0x7f0b0681

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "date_time_settings"

    const v1, 0x7f050015

    const v2, 0x7f08021c

    const v3, 0x7f0b00f9

    const v4, 0x7f0b0682

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 55
    const-string v0, "language_settings"

    const v1, 0x7f050026

    const v2, 0x7f08021f

    const v3, 0x7f0b0421

    const v4, 0x7f0b0683

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 56
    const-string v0, "about_settings"

    const/high16 v1, 0x7f05

    const v2, 0x7f080214

    const v3, 0x7f0b0363

    const v4, 0x7f0b0284

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIII)V

    .line 57
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "power_mode"

    const v1, 0x7f05002f

    const v2, 0x7f080223

    const v3, 0x7f0b0774

    const v4, 0x7f0b0685

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static O(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/bP;->yZ:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 100
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
    .line 63
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bP;->a(Ljava/lang/String;IIIIZ)V

    .line 64
    return-void
.end method

.method private static a(Ljava/lang/String;IIIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 68
    sget-object v0, Lcom/android/settings/bP;->yZ:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v8, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/cK;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/cK;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {p4}, Lcom/android/settings/bP;->am(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method private static am(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    const v1, 0x7f0b066e

    if-ne v1, p0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/settings/bP;->hu()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public static an(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    sget-object v1, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    iget-object v0, v0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    .line 108
    :cond_0
    return-object v0
.end method

.method public static ao(I)I
    .locals 2
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
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
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 131
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/android/settings/bP;->zd:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    :cond_0
    return v0
.end method

.method public static aq(I)I
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/settings/bP;->ap(I)I

    move-result v0

    .line 139
    sget-object v1, Lcom/android/settings/bP;->za:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 140
    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.hardware.nfc"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hv()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

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

    .line 119
    iget-boolean v3, v0, Lcom/android/settings/cK;->GD:Z

    if-eqz v3, :cond_0

    .line 120
    iget-object v0, v0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    return-object v1
.end method

.method public static hw()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/settings/bP;->zc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static hx()[I
    .locals 4

    .prologue
    .line 144
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    new-array v3, v2, [I

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    sget-object v0, Lcom/android/settings/bP;->zb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cK;

    iget v0, v0, Lcom/android/settings/cK;->Gz:I

    aput v0, v3, v1

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_0
    return-object v3
.end method
