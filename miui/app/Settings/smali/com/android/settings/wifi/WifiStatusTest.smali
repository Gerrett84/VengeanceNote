.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Lcom/android/settings/J;
.source "WifiStatusTest.java"


# instance fields
.field private Pc:Landroid/widget/Button;

.field private Pd:Landroid/widget/TextView;

.field private Pe:Landroid/widget/TextView;

.field private Pf:Landroid/widget/TextView;

.field private Pg:Landroid/widget/TextView;

.field private Ph:Landroid/widget/TextView;

.field private Pi:Landroid/widget/TextView;

.field private Pj:Landroid/widget/TextView;

.field private Pk:Landroid/widget/TextView;

.field private Pl:Landroid/widget/TextView;

.field private Pm:Landroid/widget/TextView;

.field private Pn:Landroid/widget/TextView;

.field private Po:Landroid/widget/TextView;

.field private Pp:Landroid/content/IntentFilter;

.field private final Pq:Landroid/content/BroadcastReceiver;

.field Pr:Landroid/view/View$OnClickListener;

.field private c:Landroid/net/wifi/WifiManager;

.field private lA:Ljava/lang/String;

.field private lB:Ljava/lang/String;

.field lU:Landroid/view/View$OnClickListener;

.field private ll:Landroid/widget/TextView;

.field private lm:Landroid/widget/TextView;

.field private ln:Landroid/widget/TextView;

.field private ls:Landroid/widget/Button;

.field private lz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settings/wifi/d;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/d;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pq:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/e;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lU:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/android/settings/wifi/h;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/h;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pr:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private C(I)V
    .locals 0
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->be(I)V

    .line 268
    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/wifi/U;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pe:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    return-void
.end method

.method private a(Landroid/net/wifi/SupplicantState;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 227
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->ma()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->C(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->cD()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->bf(I)V

    return-void
.end method

.method private be(I)V
    .locals 3
    .parameter

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 254
    const-string v0, "BAD"

    .line 255
    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pd:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void

    .line 239
    :pswitch_0
    const v0, 0x7f0b0250

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_1
    const v0, 0x7f0b0251

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_2
    const v0, 0x7f0b0252

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_3
    const v0, 0x7f0b0253

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_4
    const v0, 0x7f0b0254

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bf(I)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pg:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->c:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->be(I)V

    return-void
.end method

.method private final cA()V
    .locals 2

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    .line 389
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    goto :goto_0

    .line 390
    :catch_2
    move-exception v0

    .line 391
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    goto :goto_0
.end method

.method private cB()V
    .locals 4

    .prologue
    .line 396
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 399
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 402
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;

    .line 406
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 410
    :goto_1
    return-void

    .line 404
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;

    goto :goto_1
.end method

.method private final cD()V
    .locals 3

    .prologue
    const v2, 0x7f0b0027

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->ll:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->lm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->ln:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v1, Lcom/android/settings/wifi/i;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/i;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 326
    new-instance v2, Lcom/android/settings/wifi/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/f;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 335
    new-instance v2, Lcom/android/settings/wifi/g;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/g;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 344
    new-instance v2, Lcom/android/settings/wifi/j;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/j;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method private final cz()V
    .locals 4

    .prologue
    .line 361
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 362
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 -w 100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Ph:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pk:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pl:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pm:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ll:Landroid/widget/TextView;

    return-object v0
.end method

.method private ma()V
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 273
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    if-eqz v2, :cond_2

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 278
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_1
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Po:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method static synthetic n(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lm:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ln:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->cz()V

    return-void
.end method

.method static synthetic s(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->cA()V

    return-void
.end method

.method static synthetic t(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->cB()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->c:Landroid/net/wifi/WifiManager;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pq:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    .line 137
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pc:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pc:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pr:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pd:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pe:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pf:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pg:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Ph:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pi:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pj:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pk:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f080204

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pl:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f080205

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pm:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f080206

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pn:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Po:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ll:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->lm:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ln:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ls:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->ls:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->lU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings/J;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pq:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pq:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->Pp:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method
