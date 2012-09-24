.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field private static final nB:[I

.field private static final nC:[I


# instance fields
.field nD:Ljava/lang/String;

.field nE:Ljava/lang/String;

.field nF:I

.field nG:Z

.field nH:Lcom/android/settings/wifi/AccessPoint$PskType;

.field protected nI:Landroid/net/wifi/WifiConfiguration;

.field nJ:Landroid/net/wifi/ScanResult;

.field private nK:I

.field private nL:Landroid/net/wifi/WifiInfo;

.field private nM:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->nB:[I

    .line 47
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->nC:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->nG:Z

    .line 74
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IS:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 183
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 184
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->nG:Z

    .line 74
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IS:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 176
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 177
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 179
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->nG:Z

    .line 74
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IS:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 191
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 193
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 197
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 201
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    .line 202
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 210
    return-void
.end method

.method private static a(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x3

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x4

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const/4 v0, 0x5

    goto :goto_0

    .line 117
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 94
    goto :goto_0

    .line 96
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    const/4 v0, 0x5

    goto :goto_0

    .line 100
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 161
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 162
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IV:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_0
    if-eqz v1, :cond_1

    .line 165
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IU:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 166
    :cond_1
    if-eqz v0, :cond_2

    .line 167
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IT:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received abnormal flag string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IS:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private c(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nE:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    .line 234
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->nG:Z

    .line 235
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 237
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 238
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    .line 239
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    .line 240
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nE:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    .line 225
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 226
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    .line 227
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    .line 228
    return-void

    .line 222
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    const v0, 0x60201a6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/U;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    const v0, 0x60201a5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(I)V

    .line 405
    :goto_0
    return-void

    .line 366
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 367
    const v0, 0x7f0b01f9

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v0, v5, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 378
    :pswitch_0
    const v0, 0x7f0b01f6

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :pswitch_1
    const v0, 0x7f0b01f8

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 375
    :pswitch_2
    const v0, 0x7f0b01f7

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 383
    const v0, 0x7f0b01f5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 389
    const v0, 0x7f0b01fc

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->z(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->nG:Z

    if-eqz v0, :cond_5

    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 398
    const v0, 0x7f0b01fa

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 391
    :cond_6
    const v0, 0x7f0b01fd

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_7
    const v0, 0x7f0b01fb

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 345
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 347
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 349
    :cond_0
    return-object p0
.end method

.method static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    .line 306
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 308
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    .line 309
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    .line 310
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    .line 311
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    .line 312
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 319
    :goto_1
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 322
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 308
    goto :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    .line 315
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    .line 316
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    .line 317
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 258
    instance-of v2, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_1

    move v0, v1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .line 263
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    iget-object v3, p1, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    if-eq v2, v3, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 267
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    iget v3, p1, Lcom/android/settings/wifi/AccessPoint;->nK:I

    xor-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 268
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 271
    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v3, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v2, v3

    if-gez v2, :cond_4

    .line 272
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 275
    :cond_4
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->nK:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 276
    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method d(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 286
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 288
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 294
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 295
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 298
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->nJ:Landroid/net/wifi/ScanResult;

    .line 299
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ds()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method dt()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nL:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method du()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nM:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected dv()V
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->nI:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 326
    const/4 v0, -0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 245
    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 246
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->nK:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 250
    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->nB:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->nC:[I

    goto :goto_1
.end method

.method public z(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->nF:I

    packed-switch v1, :pswitch_data_0

    .line 155
    if-eqz p1, :cond_8

    const-string v0, ""

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_1
    sget-object v1, Lcom/android/settings/wifi/D;->yt:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->nH:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 139
    if-eqz p1, :cond_4

    const v1, 0x7f0b0202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b0201

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    const v1, 0x7f0b0209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_6
    if-eqz p1, :cond_6

    const v1, 0x7f0b0705

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0b0707

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :pswitch_7
    if-eqz p1, :cond_7

    const v1, 0x7f0b0706

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0b0708

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :cond_8
    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
