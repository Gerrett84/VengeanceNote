.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final at:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private au:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 145
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->at:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 387
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    return-object v0
.end method

.method private a(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->d(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->c(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->e(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 166
    new-instance v1, Lcom/android/settings/dw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/dw;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/ed;)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    new-instance v2, Lcom/android/settings/ed;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/ed;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/dw;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/as;)V

    return-void
.end method

.method private a(Lcom/android/settings/as;)V
    .locals 5
    .parameter

    .prologue
    .line 343
    invoke-static {p1}, Lcom/android/settings/as;->j(Lcom/android/settings/as;)Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    const v2, 0x60c0199

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 347
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/ec;

    invoke-direct {v3, p0}, Lcom/android/settings/ec;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x60b000c

    invoke-static {v1, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 356
    const v3, 0x7f04007a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    invoke-static {p1}, Lcom/android/settings/as;->f(Lcom/android/settings/as;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/as;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 361
    new-instance v0, Lcom/android/settings/eb;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings/eb;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 385
    return-void
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->at:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    .line 152
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 153
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fg:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 155
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->fh:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->au:Landroid/widget/TabHost;

    return-object v0
.end method
