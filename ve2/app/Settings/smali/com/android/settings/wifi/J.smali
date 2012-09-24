.class public Lcom/android/settings/wifi/J;
.super Lcom/android/settings/wifi/N;
.source "MiuiWifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private HA:Landroid/widget/TextView;

.field private HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private final Hf:Lcom/android/settings/wifi/r;

.field private Hg:Z

.field private Hh:Z

.field private Hi:Landroid/widget/TextView;

.field private Hj:Landroid/widget/Spinner;

.field private Hk:Landroid/widget/Spinner;

.field private Hl:Landroid/widget/Spinner;

.field private Hm:Landroid/widget/Spinner;

.field private Hn:Landroid/widget/Spinner;

.field private Ho:Landroid/widget/TextView;

.field private Hp:Landroid/widget/TextView;

.field private Hq:Landroid/widget/Spinner;

.field private Hr:Landroid/widget/Spinner;

.field private Hs:Landroid/widget/TextView;

.field private Ht:Landroid/widget/TextView;

.field private Hu:Landroid/widget/TextView;

.field private Hv:Landroid/widget/TextView;

.field private Hw:Landroid/widget/TextView;

.field private Hx:Landroid/widget/Spinner;

.field private Hy:Landroid/widget/TextView;

.field private Hz:Landroid/widget/TextView;

.field private final mActivity:Landroid/app/Activity;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mView:Landroid/view/View;

.field private final pS:Lcom/android/settings/wifi/AccessPoint;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/r;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/N;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 93
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 94
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 95
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    .line 116
    iput-object p5, p0, Lcom/android/settings/wifi/J;->Hf:Lcom/android/settings/wifi/r;

    .line 118
    iput-object p2, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    .line 119
    iput-object p3, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    .line 120
    if-nez p3, :cond_1

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    .line 122
    iput-boolean p4, p0, Lcom/android/settings/wifi/J;->Hg:Z

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hj:Landroid/widget/Spinner;

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hj:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    :goto_1
    return-void

    .line 120
    :cond_1
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->me:I

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v3, 0x7f0801a7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v3, 0x7f0801a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v3, 0x7f0801b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v3, 0x7f08018d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    iget-object v3, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->df()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_3

    .line 143
    const v4, 0x7f0b01d1

    invoke-static {p1, v3}, Lcom/android/settings/wifi/L;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 146
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    .line 147
    if-eq v3, v5, :cond_4

    .line 148
    const v4, 0x7f070019

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 149
    const v4, 0x7f0b01d0

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->de()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 154
    const v3, 0x7f0b01d2

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

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 157
    :cond_5
    const v1, 0x7f0b01cf

    iget-object v3, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/AccessPoint;->A(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_9

    .line 161
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v4, :cond_6

    .line 162
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 163
    iput-boolean v6, p0, Lcom/android/settings/wifi/J;->Hh:Z

    .line 167
    :goto_2
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v1, v4, :cond_7

    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 169
    iput-boolean v6, p0, Lcom/android/settings/wifi/J;->Hh:Z

    .line 173
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_9

    .line 175
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 176
    const v5, 0x7f0b01d3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 165
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 179
    :cond_8
    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v6, :cond_9

    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v1, v6, :cond_9

    .line 181
    const v1, 0x7f0b01e3

    const v3, 0x7f0b01e4

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/wifi/J;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    if-eqz v0, :cond_a

    .line 189
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iG()V

    .line 192
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/wifi/J;->Hg:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iI()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iH()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 207
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 630
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v3

    .line 638
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 640
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 641
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 642
    return-void

    .line 632
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 633
    aput-object v1, v0, v3

    .line 634
    array-length v1, v2

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/J;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method private b(Landroid/net/LinkProperties;)I
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f0b0208

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hs:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    :try_start_0
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 385
    const/4 v1, -0x1

    .line 387
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hu:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    .line 391
    :goto_0
    if-ltz v1, :cond_0

    const/16 v3, 0x20

    if-le v1, v3, :cond_1

    .line 392
    :cond_0
    const v0, 0x7f0b0209

    .line 422
    :goto_1
    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const v0, 0x7f0b0206

    goto :goto_1

    .line 394
    :cond_1
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Ht:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 403
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 412
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 420
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 422
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 400
    :catch_1
    move-exception v0

    .line 401
    const v0, 0x7f0b0207

    goto :goto_1

    .line 409
    :catch_2
    move-exception v1

    goto :goto_1

    .line 417
    :catch_3
    move-exception v1

    goto :goto_1

    .line 388
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 652
    if-eqz p2, :cond_0

    .line 654
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 655
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 656
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 662
    :cond_0
    return-void

    .line 655
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private iC()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 214
    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_5

    move v0, v2

    .line 220
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/J;->iE()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/N;->Ja:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    :cond_1
    move v0, v1

    .line 226
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/J;->Hg:Z

    if-eqz v1, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iD()Z

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/wifi/J;->iE()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hf:Lcom/android/settings/wifi/r;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hf:Lcom/android/settings/wifi/r;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/r;->e(Z)V

    .line 235
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 217
    goto :goto_0
.end method

.method private iD()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/J;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_6

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/J;->b(Landroid/net/LinkProperties;)I

    move-result v0

    .line 339
    if-eqz v0, :cond_2

    .line 373
    :cond_0
    :goto_1
    return v2

    .line 333
    :cond_1
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 345
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v1, :cond_4

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_3
    iput-object v3, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 349
    iget-object v3, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v3, v4, :cond_5

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 357
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 361
    :goto_4
    if-nez v0, :cond_3

    .line 362
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    move v2, v1

    .line 370
    :cond_3
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/J;->Hh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 371
    goto :goto_1

    .line 345
    :cond_4
    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_3

    .line 358
    :catch_0
    move-exception v0

    move v0, v2

    .line 359
    :goto_6
    const v3, 0x7f0b00aa

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_4

    .line 358
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

.method private iG()V
    .locals 4

    .prologue
    const v3, 0x7f080195

    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 524
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 527
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private iH()V
    .locals 5

    .prologue
    const v4, 0x7f0801a8

    const/4 v3, 0x0

    .line 535
    const/4 v0, 0x0

    .line 537
    iget-object v1, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 542
    :cond_0
    if-nez v0, :cond_8

    .line 543
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v1, v0

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hs:Landroid/widget/TextView;

    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Ht:Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hu:Landroid/widget/TextView;

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hv:Landroid/widget/TextView;

    .line 553
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hw:Landroid/widget/TextView;

    .line 555
    if-eqz v1, :cond_6

    .line 556
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 557
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 560
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 566
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Ht:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 573
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hv:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 577
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hw:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Ht:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hw:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 589
    :cond_6
    :goto_1
    return-void

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private iI()V
    .locals 7

    .prologue
    const v6, 0x7f0801a2

    const v5, 0x7f0801a1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 592
    const/4 v0, 0x0

    .line 594
    iget-object v1, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f08019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hy:Landroid/widget/TextView;

    .line 604
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hz:Landroid/widget/TextView;

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v2, 0x7f0801a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->HA:Landroid/widget/TextView;

    .line 607
    if-eqz v1, :cond_0

    .line 608
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/wifi/J;->HA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 623
    :goto_1
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iC()V

    .line 667
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    return-void
.end method

.method dd()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const v6, 0x7f09000e

    const/4 v3, 0x1

    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 250
    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 258
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/J;->Hg:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/J;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    packed-switch v0, :pswitch_data_0

    .line 319
    invoke-super {p0}, Lcom/android/settings/wifi/N;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 327
    :goto_2
    return-object v1

    .line 243
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 261
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 323
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 325
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_2

    .line 265
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 266
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 267
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_5

    :cond_4
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_3

    .line 276
    :cond_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_3

    .line 282
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 286
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 288
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 294
    :pswitch_3
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 295
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 296
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hk:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 300
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hl:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 303
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_6
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 306
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_7
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 309
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Ho:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_8
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 311
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_9
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v2, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 298
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/J;->Hm:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 300
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://CACERT_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hl:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 303
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://USRCERT_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 306
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://USRPKEY_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 309
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Ho:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 311
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method iE()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method iF()Landroid/net/wifi/WpsInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-object v1

    .line 436
    :cond_0
    new-instance v2, Landroid/net/wifi/WpsInfo;

    invoke-direct {v2}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 448
    const/4 v0, 0x4

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 449
    const-string v0, "WifiConfigController"

    const-string v1, "WPS not selected type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 450
    goto :goto_0

    .line 439
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 452
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v3, 0x7f080196

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->md:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/J;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 457
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/settings/wifi/J;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v1, v2

    .line 458
    goto :goto_0

    .line 442
    :pswitch_1
    const/4 v0, 0x2

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 445
    :pswitch_2
    const/4 v0, 0x1

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 453
    goto :goto_2

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected in()V
    .locals 6

    .prologue
    const v1, 0x7f080197

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 462
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 478
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-le v0, v4, :cond_3

    .line 479
    invoke-super {p0}, Lcom/android/settings/wifi/N;->in()V

    .line 482
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-eq v0, v4, :cond_4

    .line 483
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hk:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hk:Landroid/widget/Spinner;

    .line 490
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hm:Landroid/widget/Spinner;

    .line 491
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hl:Landroid/widget/Spinner;

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    .line 493
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Ho:Landroid/widget/TextView;

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/J;->Hp:Landroid/widget/TextView;

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hl:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/J;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/J;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/J;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hk:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/J;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hm:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/J;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hl:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/J;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hn:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/J;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Ho:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hp:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0801c5

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080191

    if-ne v0, v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/settings/wifi/J;->Hi:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 693
    :cond_0
    :goto_1
    return-void

    .line 682
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801c4

    if-ne v0, v1, :cond_0

    .line 687
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/J;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hj:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 698
    iput p3, p0, Lcom/android/settings/wifi/N;->Ja:I

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/wifi/J;->in()V

    .line 707
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iC()V

    .line 708
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hq:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iG()V

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/J;->Hx:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iI()V

    goto :goto_0

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/J;->iH()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 677
    return-void
.end method
