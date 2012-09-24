.class Lcom/android/settings/dP;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field Md:Landroid/view/View;

.field final synthetic Me:Lcom/android/settings/dw;

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/settings/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dw;Lcom/android/settings/ed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/dP;-><init>(Lcom/android/settings/dw;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    iget-object v2, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 253
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dP;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v0}, Lcom/android/settings/dw;->c(Lcom/android/settings/dw;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v1, v1, Lcom/android/settings/dw;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    .line 233
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v8

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v0, v0, Lcom/android/settings/dw;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 236
    new-instance v0, Lcom/android/settings/as;

    iget-object v1, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v1, v1, Lcom/android/settings/dw;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v3, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v3}, Lcom/android/settings/dw;->c(Lcom/android/settings/dw;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/as;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings/dw;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/ed;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    add-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {p0, v1}, Lcom/android/settings/dP;->publishProgress([Ljava/lang/Object;)V

    move v7, v0

    .line 242
    goto :goto_0

    .line 243
    :cond_0
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 244
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dP;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v0}, Lcom/android/settings/dw;->a(Lcom/android/settings/dw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v0}, Lcom/android/settings/dw;->a(Lcom/android/settings/dw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-virtual {v0}, Lcom/android/settings/dw;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v0, v0, Lcom/android/settings/dw;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    .line 259
    iget-object v0, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/dP;->Md:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 262
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    iget-object v0, v0, Lcom/android/settings/dw;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v0}, Lcom/android/settings/dw;->c(Lcom/android/settings/dw;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->g(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    .line 225
    iget-object v0, p0, Lcom/android/settings/dP;->Me:Lcom/android/settings/dw;

    invoke-static {v0}, Lcom/android/settings/dw;->c(Lcom/android/settings/dw;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->e(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dP;->Md:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/settings/dP;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/dP;->Md:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/dP;->a([Ljava/lang/Integer;)V

    return-void
.end method
