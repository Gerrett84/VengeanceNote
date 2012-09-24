.class Lcom/android/settings/af;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final as:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final hj:Lcom/android/settings/df;

.field private final hk:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final hl:Ljava/lang/String;

.field private final hm:Ljava/security/cert/X509Certificate;

.field private final hn:Landroid/net/http/SslCertificate;

.field private final ho:Ljava/lang/String;

.field private final hp:Ljava/lang/String;

.field private hq:Z


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings/df;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/android/settings/af;->as:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 284
    iput-object p2, p0, Lcom/android/settings/af;->hj:Lcom/android/settings/df;

    .line 285
    iput-object p3, p0, Lcom/android/settings/af;->hk:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 286
    iput-object p4, p0, Lcom/android/settings/af;->hl:Ljava/lang/String;

    .line 287
    iput-object p5, p0, Lcom/android/settings/af;->hm:Ljava/security/cert/X509Certificate;

    .line 289
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    .line 291
    iget-object v0, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    iput-object v1, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/android/settings/af;->hk:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v1, p0, Lcom/android/settings/af;->as:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iget-object v2, p0, Lcom/android/settings/af;->hl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/af;->hq:Z

    .line 315
    return-void

    .line 302
    :cond_0
    iput-object v1, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    iput-object v0, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings/df;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/dJ;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/af;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings/df;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/af;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/settings/af;->hq:Z

    return p1
.end method

.method static synthetic e(Lcom/android/settings/af;)Z
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/settings/af;->hq:Z

    return v0
.end method

.method static synthetic f(Lcom/android/settings/af;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hk:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/af;)Lcom/android/settings/df;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hj:Lcom/android/settings/df;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/af;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/af;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/af;)Landroid/net/http/SslCertificate;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hn:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/af;)Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hm:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/af;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/af;->hl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 266
    check-cast p1, Lcom/android/settings/af;

    invoke-virtual {p0, p1}, Lcom/android/settings/af;->d(Lcom/android/settings/af;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/android/settings/af;)I
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/af;->ho:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/af;->ho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 318
    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/af;->hp:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/af;->hp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 324
    instance-of v0, p1, Lcom/android/settings/af;

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    .line 327
    :cond_0
    check-cast p1, Lcom/android/settings/af;

    .line 328
    iget-object v0, p0, Lcom/android/settings/af;->hl:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/af;->hl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings/af;->hl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
