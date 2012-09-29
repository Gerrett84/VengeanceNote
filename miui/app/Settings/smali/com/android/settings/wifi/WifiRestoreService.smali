.class public Lcom/android/settings/wifi/WifiRestoreService;
.super Landroid/app/Service;
.source "WifiRestoreService.java"


# instance fields
.field private b:Landroid/net/wifi/WifiManager;

.field private c:Landroid/net/wifi/WifiManager$Channel;

.field private d:Ljava/util/HashMap;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 246
    new-instance v0, Lcom/android/settings/wifi/w;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/w;-><init>(Lcom/android/settings/wifi/WifiRestoreService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 233
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 239
    if-nez p2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->b:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->c:Landroid/net/wifi/WifiManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 144
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    const-string v2, "bssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_3
    const-string v2, "psk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_4
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_0

    .line 157
    :cond_5
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 159
    :cond_6
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 161
    :cond_7
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 163
    :cond_8
    const-string v2, "wep_tx_keyidx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    .line 165
    :cond_9
    const-string v2, "priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_0

    .line 167
    :cond_a
    const-string v2, "scan_ssid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 168
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_0

    .line 169
    :cond_b
    const-string v2, "key_mgmt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 170
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_1
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 173
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 174
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 172
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_d
    const-string v2, "proto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 178
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    :goto_2
    sget-object v2, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 180
    sget-object v2, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 181
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 179
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 184
    :cond_f
    const-string v2, "auth_alg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 185
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_3
    sget-object v2, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 187
    sget-object v2, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 188
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 186
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 191
    :cond_11
    const-string v2, "pairwise"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 192
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_4
    sget-object v2, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 194
    sget-object v2, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 195
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 193
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 198
    :cond_13
    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 199
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_5
    sget-object v2, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 201
    sget-object v2, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 202
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 200
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 205
    :cond_15
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_16
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 208
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_17
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 210
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_18
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 212
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_19
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 214
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_1a
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 216
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_1b
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 218
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_1c
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "wpa_supplicant.conf"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v3, "wpa_supplicant.conf"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 84
    :cond_1
    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wpa_supplicant.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 100
    if-nez v2, :cond_3

    .line 112
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    .line 103
    :cond_3
    const-string v3, "network={"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    if-eqz v0, :cond_4

    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_4
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 109
    :cond_5
    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-nez v2, :cond_2

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 125
    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 141
    :cond_3
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    .line 259
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "wpa_supplicant.conf"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 264
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 270
    if-nez v1, :cond_2

    .line 287
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 289
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 292
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 273
    :cond_2
    const-string v5, "network={"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v5, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 277
    if-eqz v0, :cond_3

    .line 278
    const-string v5, "network={\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    if-eqz v0, :cond_4

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_4
    if-nez v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->b:Landroid/net/wifi/WifiManager;

    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->c:Landroid/net/wifi/WifiManager$Channel;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiRestoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v3, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->d:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->b()V

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->c()V

    .line 64
    return v1
.end method
