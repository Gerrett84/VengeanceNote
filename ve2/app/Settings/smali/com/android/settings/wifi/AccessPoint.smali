.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field private static final ma:[I

.field private static final mb:[I


# instance fields
.field mc:Ljava/lang/String;

.field md:Ljava/lang/String;

.field me:I

.field mf:Z

.field mg:Lcom/android/settings/wifi/AccessPoint$PskType;

.field protected mh:Landroid/net/wifi/WifiConfiguration;

.field mi:Landroid/net/wifi/ScanResult;

.field private mj:I

.field private mk:Landroid/net/wifi/WifiInfo;

.field private ml:Landroid/net/NetworkInfo$DetailedState;

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

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->ma:[I

    .line 47
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->mb:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    .line 68
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fp:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 155
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 156
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    .line 68
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fp:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 148
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 149
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 151
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    .line 68
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fp:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 163
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 165
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 169
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 173
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    .line 174
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 182
    return-void
.end method

.method private static a(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x3

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 84
    goto :goto_0

    .line 86
    :cond_3
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
    .line 132
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 134
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fs:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 142
    :goto_0
    return-object v0

    .line 136
    :cond_0
    if-eqz v1, :cond_1

    .line 137
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fr:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 138
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fq:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 141
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

    .line 142
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->Fp:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private c(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->md:Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    .line 206
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    .line 207
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 209
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 210
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    .line 211
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    .line 212
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->md:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    .line 197
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 198
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    .line 199
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    .line 200
    return-void

    .line 194
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    const v0, 0x60201a6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/L;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    const v0, 0x60201a5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(I)V

    .line 377
    :goto_0
    return-void

    .line 338
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 339
    const v0, 0x7f0b01e6

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v0, v5, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    const v0, 0x7f0b01e1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :pswitch_1
    const v0, 0x7f0b01e5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :pswitch_2
    const v0, 0x7f0b01e2

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 355
    const v0, 0x7f0b01e0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 361
    const v0, 0x7f0b01e9

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->A(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    if-eqz v0, :cond_5

    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 370
    const v0, 0x7f0b01e7

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 363
    :cond_6
    const v0, 0x7f0b01ea

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 372
    :cond_7
    const v0, 0x7f0b01e8

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 317
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 319
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 321
    :cond_0
    return-object p0
.end method

.method static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 325
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
.method public A(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    packed-switch v1, :pswitch_data_0

    .line 127
    if-eqz p1, :cond_6

    const-string v0, ""

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_1
    sget-object v1, Lcom/android/settings/wifi/w;->vy:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 119
    if-eqz p1, :cond_4

    const v1, 0x7f0b01ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b01ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_4
    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_6
    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    .line 278
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    .line 281
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    .line 282
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    .line 283
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    .line 284
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 291
    :goto_1
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 294
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 280
    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    .line 287
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    .line 288
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    .line 289
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 230
    instance-of v2, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_1

    move v0, v1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .line 235
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    iget-object v3, p1, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    if-eq v2, v3, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 239
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    iget v3, p1, Lcom/android/settings/wifi/AccessPoint;->mj:I

    xor-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 240
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 243
    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v3, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v2, v3

    if-gez v2, :cond_4

    .line 244
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 247
    :cond_4
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->mj:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 248
    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

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
    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 258
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 260
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 266
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 267
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mg:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 270
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mi:Landroid/net/wifi/ScanResult;

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dd()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method de()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mk:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method df()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ml:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected dg()V
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mh:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 298
    const/4 v0, -0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 217
    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 218
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mj:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 222
    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->me:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->ma:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->mb:[I

    goto :goto_1
.end method
