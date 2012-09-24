.class public Lcom/android/settings/wifi/S;
.super Lcom/android/settings/wifi/W;
.source "MiuiWifiConfigController.java"


# instance fields
.field private final Lu:Lcom/android/settings/wifi/t;

.field private Lv:Z

.field private Lw:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mView:Landroid/view/View;

.field private final sf:Lcom/android/settings/wifi/AccessPoint;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/t;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/W;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/S;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p5, p0, Lcom/android/settings/wifi/S;->Lu:Lcom/android/settings/wifi/t;

    .line 43
    iput-object p2, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    .line 44
    iput-object p3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    .line 45
    if-nez p3, :cond_1

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    .line 47
    iput-boolean p4, p0, Lcom/android/settings/wifi/S;->Lv:Z

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->nF:I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v3, 0x7f0801d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v3, 0x7f0801ca

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v3, 0x7f0801d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v3, 0x7f0801b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    iget-object v3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->du()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    const v4, 0x7f0b01e6

    invoke-static {p1, v3}, Lcom/android/settings/wifi/U;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/S;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 69
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    .line 70
    if-eq v3, v6, :cond_4

    .line 71
    const v4, 0x7f070019

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    const v4, 0x7f0b01e5

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/S;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dt()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 77
    const v3, 0x7f0b01e7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Mbps"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/S;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 80
    :cond_5
    const v1, 0x7f0b01e4

    iget-object v3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/AccessPoint;->z(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/S;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_8

    .line 84
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_6

    .line 85
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 86
    iput-boolean v5, p0, Lcom/android/settings/wifi/S;->Lw:Z

    .line 90
    :goto_2
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v3, v4, :cond_7

    .line 91
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 92
    iput-boolean v5, p0, Lcom/android/settings/wifi/S;->Lw:Z

    .line 96
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_8

    .line 98
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 99
    const v4, 0x7f0b01e8

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/S;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 94
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 104
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/wifi/S;->Lv:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mView:Landroid/view/View;

    const v1, 0x7f0801cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/S;->lG()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/S;->lF()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/S;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method private lk()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_6

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/S;->b(Landroid/net/LinkProperties;)I

    move-result v0

    .line 272
    if-eqz v0, :cond_2

    .line 306
    :cond_0
    :goto_1
    return v2

    .line 266
    :cond_1
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 278
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v1, :cond_4

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_3
    iput-object v3, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 282
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v3, v4, :cond_5

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 294
    :goto_4
    if-nez v0, :cond_3

    .line 295
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    move v2, v1

    .line 303
    :cond_3
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/S;->Lw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 304
    goto :goto_1

    .line 278
    :cond_4
    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_3

    .line 291
    :catch_0
    move-exception v0

    move v0, v2

    .line 292
    :goto_6
    const v3, 0x7f0b00ac

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_4

    .line 291
    :catch_1
    move-exception v3

    goto :goto_6

    :cond_5
    move v2, v0

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method ds()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x22

    const/4 v2, 0x0

    .line 154
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 159
    iput-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 167
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/S;->Lv:Z

    if-nez v0, :cond_2

    .line 168
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    packed-switch v0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    .line 260
    :goto_1
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/S;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 256
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 258
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v3

    .line 260
    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 175
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_4

    :cond_3
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_2

    .line 185
    :cond_4
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    .line 191
    :pswitch_2
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 197
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 203
    :pswitch_3
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 211
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ny:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 209
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 217
    :pswitch_4
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NC:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NB:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 224
    :pswitch_5
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 225
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 226
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_4
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_5
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_a

    .line 237
    :goto_7
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_b

    const-string v0, ""

    :goto_8
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 239
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_c

    const-string v0, "0"

    :goto_9
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 241
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v0, ""

    :goto_a
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_b
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 230
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 233
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_a
    move v1, v2

    .line 236
    goto/16 :goto_7

    .line 237
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 239
    :cond_c
    const-string v0, "1"

    goto/16 :goto_9

    .line 241
    :cond_d
    const-string v0, "keystore"

    goto/16 :goto_a

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method lj()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    move v0, v2

    .line 138
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/W;->Nd:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    :cond_1
    move v0, v1

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/S;->Lv:Z

    if-eqz v1, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/android/settings/wifi/S;->lk()Z

    move-result v0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/S;->Lu:Lcom/android/settings/wifi/t;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/S;->Lu:Lcom/android/settings/wifi/t;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/t;->e(Z)V

    .line 150
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 135
    goto :goto_0
.end method
