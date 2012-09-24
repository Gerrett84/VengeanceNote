.class public Lcom/android/settings/bE;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# static fields
.field private static wa:Ljava/util/HashMap;

.field private static wb:Ljava/util/HashMap;

.field private static wc:Ljava/util/ArrayList;

.field private static wd:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bE;->wa:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bE;->wb:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/bE;->wd:Ljava/util/ArrayList;

    .line 28
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f050008

    const v2, 0x7f0801ee

    const v3, 0x7f0b00ea

    const v4, 0x7f0b05e6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 29
    const-string v0, "mobile_network_settings"

    const v1, 0x7f05002d

    const v2, 0x7f0801f9

    const v3, 0x7f0b0333

    const v4, 0x7f0b05e7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 30
    const-string v0, "wifi_settings"

    const v1, 0x7f05005c

    const v2, 0x7f0801fd

    const v3, 0x7f0b01b2

    const v4, 0x7f0b05e8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 31
    const-string v0, "bluetooth_settings"

    const v1, 0x7f050011

    const v2, 0x7f0801f1

    const v3, 0x7f0b0160

    const v4, 0x7f0b05e9

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 32
    const-string v0, "android_beam_settings"

    const v1, 0x7f050009

    const v2, 0x7f0801ef

    const v3, 0x7f0b01a8

    const v4, 0x7f0b05ea

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 33
    const-string v0, "vpn_settings"

    const v1, 0x7f050055

    const v2, 0x7f080212

    const v3, 0x7f0b04dc

    const v4, 0x7f0b05eb

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 34
    const-string v0, "tether_settings"

    const v1, 0x7f05004e

    const v2, 0x7f080210

    const v3, 0x7f0b0322

    const v4, 0x7f0b05ec

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 35
    const-string v0, "brightness"

    const v1, 0x7f050013

    const v2, 0x7f0801f2

    const v3, 0x7f0b026f

    const v4, 0x7f0b05ed

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 36
    const-string v0, "wallpaper"

    const v1, 0x7f050057

    const v2, 0x7f080213

    const v3, 0x7f0b0273

    const v4, 0x7f0b05ee

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 37
    const-string v0, "launcher_settings"

    const v1, 0x7f050027

    const v2, 0x7f0801f7

    const v3, 0x7f0b0642

    const v4, 0x7f0b05ef

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 38
    const-string v0, "accelerometer"

    const v1, 0x7f050001

    const v2, 0x7f0801ec

    const v3, 0x7f0b026c

    const v4, 0x7f0b05f0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 39
    const-string v0, "screen_timeout"

    const v1, 0x7f050033

    const v2, 0x7f0801fc

    const v3, 0x7f0b0648

    const v4, 0x7f0b05f1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 40
    const-string v0, "ring_volume"

    const v1, 0x7f050031

    const v2, 0x7f0801fa

    const v3, 0x7f0b0246

    const v4, 0x7f0b05f2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "ringtone"

    const v1, 0x7f050032

    const v2, 0x7f0801fb

    const v3, 0x7f0b0242

    const v4, 0x7f0b05f3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 42
    const-string v0, "sms_received_sound"

    const v1, 0x7f050046

    const v2, 0x7f08020f

    const v3, 0x7f0b060d

    const v4, 0x7f0b05f4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 43
    const-string v0, "silent_mode"

    const v1, 0x7f050044

    const v2, 0x7f08020e

    const v3, 0x7f0b0241

    const v4, 0x7f0b05f5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 44
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f050053

    const v2, 0x7f080211

    const v3, 0x7f0b0129

    const v4, 0x7f0b05f6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 45
    const-string v0, "access_control_settings"

    const v1, 0x7f050003

    const v2, 0x7f0801ed

    const v3, 0x7f0b0612

    const v4, 0x7f0b05f7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 46
    const-string v0, "location_gps"

    const v1, 0x7f050020

    const v2, 0x7f0801f4

    const v3, 0x7f0b0338

    const v4, 0x7f0b05f8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "status_bar_settings"

    const v1, 0x7f05004a

    const v2, 0x7f080202

    const v3, 0x7f0b063f

    const v4, 0x7f0b05f9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 48
    const-string v0, "sync_settings"

    const v1, 0x7f05004b

    const v2, 0x7f080205

    const v3, 0x7f0b0268

    const v4, 0x7f0b05fa

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 49
    const-string v0, "battery_indicator_style"

    const v1, 0x7f05000e

    const v2, 0x7f0801f0

    const v3, 0x7f0b0645

    const v4, 0x7f0b05fb

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 50
    const-string v0, "key_settings"

    const v1, 0x7f050023

    const v2, 0x7f0801f5

    const v3, 0x7f0b0621

    const v4, 0x7f0b05fc

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 51
    const-string v0, "led_settings"

    const v1, 0x7f050028

    const v2, 0x7f0801f8

    const v3, 0x7f0b065e

    const v4, 0x7f0b05fd

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 52
    const-string v0, "date_time_settings"

    const v1, 0x7f050014

    const v2, 0x7f0801f3

    const v3, 0x7f0b00f7

    const v4, 0x7f0b05fe

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "language_settings"

    const v1, 0x7f050025

    const v2, 0x7f0801f6

    const v3, 0x7f0b03f0

    const v4, 0x7f0b05ff

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "about_settings"

    const/high16 v1, 0x7f05

    const v2, 0x7f0801eb

    const v3, 0x7f0b033f

    const v4, 0x7f0b0269

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIII)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static N(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/android/settings/bE;->wa:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
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
    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/bE;->a(Ljava/lang/String;IIIIZ)V

    .line 59
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
    .line 62
    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    sget-object v1, Lcom/android/settings/bE;->wa:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/android/settings/bE;->wb:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v7, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/cx;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/cx;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {p4}, Lcom/android/settings/bE;->ab(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/android/settings/bE;->wd:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-void
.end method

.method private static ab(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    const v1, 0x7f0b05ea

    if-ne v1, p0, :cond_0

    .line 74
    invoke-static {}, Lcom/android/settings/bE;->fR()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method public static ac(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    sget-object v1, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 100
    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cx;

    iget-object v0, v0, Lcom/android/settings/cx;->key:Ljava/lang/String;

    .line 102
    :cond_0
    return-object v0
.end method

.method public static ad(I)I
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/bE;->wb:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static ae(I)I
    .locals 1
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/android/settings/bE;->wb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 126
    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cx;

    iget v0, v0, Lcom/android/settings/cx;->CI:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static fR()Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.hardware.nfc"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fS()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cx;

    .line 113
    iget-boolean v3, v0, Lcom/android/settings/cx;->CK:Z

    if-eqz v3, :cond_0

    .line 114
    iget-object v0, v0, Lcom/android/settings/cx;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    return-object v1
.end method

.method public static fT()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/bE;->wd:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static fU()[I
    .locals 4

    .prologue
    .line 130
    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    new-array v3, v2, [I

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings/bE;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cx;

    iget v0, v0, Lcom/android/settings/cx;->CG:I

    aput v0, v3, v1

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    return-object v3
.end method
