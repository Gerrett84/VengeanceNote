.class Lcom/android/settings/dQ;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field final synthetic Kc:Lcom/android/settings/TrustedCredentialsSettings;

.field private final MU:Lcom/android/settings/as;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/dQ;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    .line 391
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;Lcom/android/settings/ed;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dQ;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    invoke-static {v0}, Lcom/android/settings/as;->f(Lcom/android/settings/as;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    invoke-static {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;ZLcom/android/settings/as;)V

    .line 421
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dQ;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 397
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    invoke-static {v2}, Lcom/android/settings/as;->e(Lcom/android/settings/as;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    invoke-static {v2}, Lcom/android/settings/as;->k(Lcom/android/settings/as;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 399
    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 400
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 405
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 416
    :goto_0
    return-object v0

    .line 402
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/dQ;->MU:Lcom/android/settings/as;

    invoke-static {v2}, Lcom/android/settings/as;->l(Lcom/android/settings/as;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 405
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 409
    :catch_1
    move-exception v0

    .line 411
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 412
    :catch_2
    move-exception v0

    .line 413
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 414
    :catch_3
    move-exception v0

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 416
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dQ;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/dQ;->a(Ljava/lang/Boolean;)V

    return-void
.end method
