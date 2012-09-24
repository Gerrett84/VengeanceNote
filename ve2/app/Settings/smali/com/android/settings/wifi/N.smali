.class public Lcom/android/settings/wifi/N;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private HA:Landroid/widget/TextView;

.field private HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private final HW:Z

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

.field private final IY:Lcom/android/settings/wifi/p;

.field protected IZ:Landroid/widget/TextView;

.field protected Ja:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mView:Landroid/view/View;

.field private pQ:Z

.field private final pS:Lcom/android/settings/wifi/AccessPoint;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 120
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 121
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    .line 142
    iput-object p1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    .line 143
    iput-object p2, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/N;->HW:Z

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/N;->pQ:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/p;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 120
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 121
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    .line 153
    instance-of v0, p1, Lcom/android/settings/wifi/E;

    iput-boolean v0, p0, Lcom/android/settings/wifi/N;->HW:Z

    .line 155
    iput-object p2, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    .line 156
    iput-object p3, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    .line 157
    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    .line 159
    iput-boolean p4, p0, Lcom/android/settings/wifi/N;->pQ:Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01bf

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->setTitle(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hj:Landroid/widget/Spinner;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hj:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 171
    iget-boolean v0, p0, Lcom/android/settings/wifi/N;->HW:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04008a

    const v3, 0x1020014

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hj:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01fa

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01fb

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->c(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->av()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iC()V

    .line 261
    :cond_1
    return-void

    .line 157
    :cond_2
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->me:I

    goto/16 :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 194
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->df()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 195
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->de()Landroid/net/wifi/WifiInfo;

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_7

    .line 200
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 201
    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v6, :cond_5

    .line 202
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    :goto_3
    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 209
    const v7, 0x7f0b01d3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/android/settings/wifi/N;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 205
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 213
    :cond_6
    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v1, v6, :cond_b

    .line 214
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 220
    :goto_5
    iget v1, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    iget v1, v5, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7

    .line 222
    const v1, 0x7f0b01e3

    const v5, 0x7f0b01e4

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v1, v5}, Lcom/android/settings/wifi/N;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mf:Z

    if-eqz v0, :cond_8

    .line 230
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iG()V

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/wifi/N;->pQ:Z

    if-eqz v0, :cond_a

    .line 234
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/N;->in()V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iH()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iI()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/wifi/N;->pQ:Z

    if-eqz v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01fa

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 217
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 244
    :cond_c
    if-nez v3, :cond_d

    const/4 v0, -0x1

    if-eq v4, v0, :cond_d

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01f8

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    .line 249
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01f9

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 247
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 265
    const v0, 0x7f080071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 266
    const v0, 0x7f0800c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 692
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 693
    const v0, 0x7f0b01df

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 695
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 696
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 697
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 705
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 707
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 708
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 709
    return-void

    .line 699
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 700
    aput-object v2, v0, v4

    .line 701
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/N;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method private b(Landroid/net/LinkProperties;)I
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f0b0208

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hs:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    :try_start_0
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 436
    const/4 v1, -0x1

    .line 438
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/wifi/N;->Hu:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    .line 442
    :goto_0
    if-ltz v1, :cond_0

    const/16 v3, 0x20

    if-le v1, v3, :cond_1

    .line 443
    :cond_0
    const v0, 0x7f0b0209

    .line 473
    :goto_1
    return v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    const v0, 0x7f0b0206

    goto :goto_1

    .line 445
    :cond_1
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Ht:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 454
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 463
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 471
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 473
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 451
    :catch_1
    move-exception v0

    .line 452
    const v0, 0x7f0b0207

    goto :goto_1

    .line 460
    :catch_2
    move-exception v1

    goto :goto_1

    .line 468
    :catch_3
    move-exception v1

    goto :goto_1

    .line 439
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 719
    if-eqz p2, :cond_0

    .line 721
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 722
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 723
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 729
    :cond_0
    return-void

    .line 722
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static f(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 132
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 133
    if-eqz v5, :cond_2

    const-string v6, "keystore://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 134
    goto :goto_0

    .line 132
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private iC()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->av()Landroid/widget/Button;

    move-result-object v3

    .line 273
    if-nez v3, :cond_0

    .line 297
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/N;->iE()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ge v0, v4, :cond_7

    :cond_2
    move v0, v2

    .line 285
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_4
    if-eqz v0, :cond_6

    .line 296
    :cond_5
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 290
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iD()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 291
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private iD()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/N;->b(Landroid/net/LinkProperties;)I

    move-result v0

    .line 396
    if-eqz v0, :cond_1

    move v0, v1

    .line 424
    :goto_1
    return v0

    .line 390
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 413
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 417
    :goto_3
    if-nez v0, :cond_4

    .line 418
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 424
    goto :goto_1

    .line 401
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 414
    :catch_0
    move-exception v0

    move v0, v1

    .line 415
    :goto_4
    const v3, 0x7f0b00aa

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 421
    goto :goto_1

    .line 414
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private iG()V
    .locals 7

    .prologue
    const v6, 0x7f080197

    const v5, 0x7f080195

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    .line 579
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 585
    if-ne v0, v3, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :goto_1
    return-void

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private iH()V
    .locals 5

    .prologue
    const v4, 0x7f0801a8

    const/4 v3, 0x0

    .line 602
    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 607
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 610
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hr:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hs:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hs:Landroid/widget/TextView;

    .line 614
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Ht:Landroid/widget/TextView;

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Ht:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hu:Landroid/widget/TextView;

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hv:Landroid/widget/TextView;

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hw:Landroid/widget/TextView;

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hw:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 625
    :cond_0
    if-eqz v1, :cond_5

    .line 626
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 627
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 630
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
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

    .line 636
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 637
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Ht:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 643
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hv:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hw:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :cond_5
    :goto_1
    return-void

    .line 651
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
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

    .line 656
    const/4 v0, 0x0

    .line 658
    iget-object v1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f08019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hy:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hy:Landroid/widget/TextView;

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hz:Landroid/widget/TextView;

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f0801a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->HA:Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 675
    :cond_0
    if-eqz v1, :cond_1

    .line 676
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hz:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lcom/android/settings/wifi/N;->HA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_1
    :goto_1
    return-void

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iC()V

    .line 738
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    return-void
.end method

.method dd()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/N;->pQ:Z

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-object v0

    .line 304
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/android/settings/wifi/N;->IZ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 310
    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 318
    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/N;->Ja:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 320
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 381
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 383
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    .line 385
    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v6, :cond_3

    .line 312
    iget-object v2, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 324
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 325
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 326
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
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

    .line 333
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_2

    .line 335
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

    goto/16 :goto_2

    .line 341
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 345
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 347
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

    goto/16 :goto_2

    .line 353
    :pswitch_3
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 354
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 355
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hk:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 357
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 359
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hl:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 362
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 365
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 368
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Ho:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_7
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 370
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_8
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v2, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 357
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/N;->Hm:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 359
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://CACERT_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hl:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 362
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://USRCERT_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 365
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore://USRPKEY_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Ho:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 370
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 318
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
    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method iF()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 484
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 496
    const/4 v0, 0x4

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 497
    const-string v0, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 506
    :goto_0
    return-object v0

    .line 487
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 500
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v2, 0x7f080196

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->md:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/N;->HB:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 505
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/N;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    .line 506
    goto :goto_0

    .line 490
    :pswitch_1
    const/4 v0, 0x2

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 493
    :pswitch_2
    const/4 v0, 0x1

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 501
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected in()V
    .locals 8

    .prologue
    const v7, 0x7f080197

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x8

    .line 511
    iget-boolean v0, p0, Lcom/android/settings/wifi/N;->HW:Z

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/settings/wifi/N;->IY:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/N;->Ja:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_3

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 534
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/N;->Ja:I

    if-eq v0, v6, :cond_4

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hk:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hk:Landroid/widget/Spinner;

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hm:Landroid/widget/Spinner;

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hl:Landroid/widget/Spinner;

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Ho:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/N;->Hp:Landroid/widget/TextView;

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hl:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/N;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/N;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_5

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->dd()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hk:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/N;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hm:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/N;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hl:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/N;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hn:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/N;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Ho:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hp:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_5
    const-string v0, "XiaoMi"

    iget-object v1, p0, Lcom/android/settings/wifi/N;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->mc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hm:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public jf()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/settings/wifi/N;->pQ:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0801c5

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080191

    if-ne v0, v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/android/settings/wifi/N;->Hi:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 764
    :cond_0
    :goto_1
    return-void

    .line 753
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801c4

    if-ne v0, v1, :cond_0

    .line 758
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/N;->mView:Landroid/view/View;

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
    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hj:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 769
    iput p3, p0, Lcom/android/settings/wifi/N;->Ja:I

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/wifi/N;->in()V

    .line 778
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iC()V

    .line 779
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hq:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 772
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iG()V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/N;->Hx:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 774
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iI()V

    goto :goto_0

    .line 776
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/N;->iH()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    return-void
.end method
