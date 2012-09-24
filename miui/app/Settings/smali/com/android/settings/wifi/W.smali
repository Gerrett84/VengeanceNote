.class public Lcom/android/settings/wifi/W;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected NA:Ljava/util/ArrayList;

.field protected NB:Ljava/lang/String;

.field protected NC:Ljava/lang/String;

.field protected ND:Ljava/lang/String;

.field protected NE:Ljava/lang/String;

.field protected NF:Landroid/widget/TextView;

.field private NG:Z

.field private NH:I

.field private final NI:Z

.field private final NJ:Landroid/os/Handler;

.field private final Nb:Lcom/android/settings/wifi/p;

.field protected Nc:Landroid/widget/TextView;

.field protected Nd:I

.field protected Ne:Landroid/widget/TextView;

.field protected Nf:Landroid/widget/Spinner;

.field protected Ng:Landroid/widget/Spinner;

.field protected Nh:Landroid/widget/Spinner;

.field protected Ni:Landroid/widget/Spinner;

.field protected Nj:Landroid/widget/Spinner;

.field protected Nk:Landroid/widget/TextView;

.field protected Nl:Landroid/widget/TextView;

.field protected Nm:Landroid/widget/Spinner;

.field protected Nn:Landroid/widget/TextView;

.field protected No:Landroid/widget/TextView;

.field protected Np:Landroid/widget/TextView;

.field protected Nq:Landroid/widget/TextView;

.field protected Nr:Landroid/widget/TextView;

.field protected Ns:Landroid/widget/Spinner;

.field protected Nt:Landroid/widget/TextView;

.field protected Nu:Landroid/widget/TextView;

.field protected Nv:Landroid/widget/TextView;

.field protected Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field protected Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field protected Ny:Landroid/widget/Spinner;

.field protected Nz:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field private final mView:Landroid/view/View;

.field private sd:Z

.field private final sf:Lcom/android/settings/wifi/AccessPoint;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 154
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 156
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    .line 188
    iput-boolean v2, p0, Lcom/android/settings/wifi/W;->NG:Z

    .line 189
    iput v2, p0, Lcom/android/settings/wifi/W;->NH:I

    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    .line 216
    iput-object p2, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    .line 218
    iput-boolean v2, p0, Lcom/android/settings/wifi/W;->NI:Z

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->sd:Z

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/W;->NJ:Landroid/os/Handler;

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    .line 223
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/W;->mContext:Landroid/content/Context;

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ny:Landroid/widget/Spinner;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/p;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 154
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 156
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->NG:Z

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/W;->NH:I

    .line 241
    iput-object p1, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    .line 242
    instance-of v0, p1, Lcom/android/settings/wifi/N;

    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->NI:Z

    .line 244
    iput-object p2, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    .line 245
    iput-object p3, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    .line 246
    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    .line 248
    iput-boolean p4, p0, Lcom/android/settings/wifi/W;->sd:Z

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/W;->NJ:Landroid/os/Handler;

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 252
    iput-object v2, p0, Lcom/android/settings/wifi/W;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b01c7

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->setTitle(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    .line 270
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->NI:Z

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f040097

    const v3, 0x1020014

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 288
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lF()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lG()V

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b020f

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    .line 347
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b0211

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->c(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->ar()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lj()V

    .line 353
    :cond_2
    return-void

    .line 246
    :cond_3
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->nF:I

    goto/16 :goto_0

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->du()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 300
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->dt()Landroid/net/wifi/WifiInfo;

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    .line 305
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 306
    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v6, :cond_6

    .line 307
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 313
    :goto_3
    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 314
    const v7, 0x7f0b01e8

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/android/settings/wifi/W;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 310
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 317
    :cond_7
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v1, :cond_b

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->sd:Z

    if-eqz v0, :cond_a

    .line 326
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->kB()V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lF()V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lG()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->sd:Z

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b020f

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 321
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 336
    :cond_c
    if-nez v3, :cond_d

    const/4 v0, -0x1

    if-eq v4, v0, :cond_d

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b020b

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->a(Ljava/lang/CharSequence;)V

    .line 341
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    const v1, 0x7f0b020d

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/p;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801d0

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
    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 357
    const v0, 0x7f08006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 358
    const v0, 0x7f0800c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 842
    const v0, 0x7f0b01f4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 845
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 846
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 854
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 856
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 857
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 858
    return-void

    .line 848
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 849
    aput-object v2, v0, v4

    .line 850
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/W;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 864
    :cond_0
    return-void
.end method

.method private b(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 867
    if-eqz p2, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 870
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 871
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 872
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 877
    :cond_0
    return-void

    .line 870
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private ba(I)V
    .locals 3
    .parameter

    .prologue
    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NA:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/W;->NB:Ljava/lang/String;

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/W;->ND:Ljava/lang/String;

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/as.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/W;->NC:Ljava/lang/String;

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/W;->NE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static e(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 202
    goto :goto_0

    .line 204
    :cond_2
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 205
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 206
    if-eqz v5, :cond_3

    const-string v6, "keystore://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 207
    goto :goto_0

    .line 205
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private lH()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 881
    iget-object v1, p0, Lcom/android/settings/wifi/W;->mContext:Landroid/content/Context;

    .line 883
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 884
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/W;->NA:Ljava/util/ArrayList;

    .line 886
    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->NG:Z

    .line 887
    iput v0, p0, Lcom/android/settings/wifi/W;->NH:I

    .line 890
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 917
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 897
    array-length v4, v3

    iput v4, p0, Lcom/android/settings/wifi/W;->NH:I

    .line 898
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 899
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/as.cer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/user.cer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v4, p0, Lcom/android/settings/wifi/W;->NA:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/W;->NG:Z

    .line 909
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 912
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 913
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 915
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private lk()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/W;->b(Landroid/net/LinkProperties;)I

    move-result v0

    .line 510
    if-eqz v0, :cond_1

    move v0, v1

    .line 538
    :goto_1
    return v0

    .line 504
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 527
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 531
    :goto_3
    if-nez v0, :cond_4

    .line 532
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 538
    goto :goto_1

    .line 515
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 528
    :catch_0
    move-exception v0

    move v0, v1

    .line 529
    :goto_4
    const v3, 0x7f0b00ac

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 535
    goto :goto_1

    .line 528
    :catch_1
    move-exception v3

    goto :goto_4
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NJ:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/v;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/v;-><init>(Lcom/android/settings/wifi/W;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    return-void
.end method

.method protected b(Landroid/net/LinkProperties;)I
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0b021d

    const v0, 0x7f0b021b

    const/4 v1, 0x0

    .line 543
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    if-nez v3, :cond_1

    move v0, v1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 550
    :try_start_0
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 555
    const/4 v0, -0x1

    .line 557
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/W;->Np:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 558
    if-ltz v0, :cond_2

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    .line 559
    :cond_2
    const v0, 0x7f0b021e

    goto :goto_0

    .line 561
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/W;->No:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 572
    :try_start_2
    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 574
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    .line 575
    iget-object v3, p0, Lcom/android/settings/wifi/W;->No:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 589
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/W;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0220

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 611
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    move v0, v1

    .line 613
    goto/16 :goto_0

    .line 562
    :catch_0
    move-exception v4

    .line 564
    iget-object v4, p0, Lcom/android/settings/wifi/W;->Np:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/W;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0226

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 582
    :cond_5
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 586
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 583
    :catch_1
    move-exception v0

    .line 584
    const v0, 0x7f0b021c

    goto/16 :goto_0

    .line 597
    :cond_6
    :try_start_5
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 601
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 598
    :catch_2
    move-exception v0

    move v0, v2

    .line 599
    goto/16 :goto_0

    .line 608
    :catch_3
    move-exception v0

    move v0, v2

    .line 609
    goto/16 :goto_0

    .line 551
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 577
    :catch_5
    move-exception v0

    goto :goto_2

    .line 576
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 936
    return-void
.end method

.method ds()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/16 v5, 0x22

    const/4 v2, 0x0

    .line 391
    iget-object v3, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/W;->sd:Z

    if-nez v3, :cond_0

    .line 499
    :goto_0
    return-object v0

    .line 395
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 397
    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_2

    .line 398
    iget-object v4, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 401
    iput-boolean v1, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 409
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/W;->Nd:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 495
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nx:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nw:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 497
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v3

    .line 499
    goto :goto_0

    .line 402
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v6, :cond_3

    .line 403
    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 415
    :pswitch_1
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 416
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 417
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_2

    .line 426
    :cond_5
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

    goto/16 :goto_2

    .line 432
    :pswitch_2
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 438
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

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 444
    :pswitch_3
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 452
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ny:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 450
    :cond_7
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

    .line 458
    :pswitch_4
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NC:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/W;->NB:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 465
    :pswitch_5
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 466
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 467
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 469
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_4
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 471
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_5
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 474
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_b

    .line 478
    :goto_7
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_c

    const-string v0, ""

    :goto_8
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 480
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v0, "0"

    :goto_9
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 482
    iget-object v2, v3, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_e

    const-string v0, ""

    :goto_a
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 483
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_b
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 485
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 469
    :cond_8
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

    .line 471
    :cond_9
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

    .line 474
    :cond_a
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

    :cond_b
    move v1, v2

    .line 477
    goto/16 :goto_7

    .line 478
    :cond_c
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

    .line 480
    :cond_d
    const-string v0, "1"

    goto/16 :goto_9

    .line 482
    :cond_e
    const-string v0, "keystore"

    goto/16 :goto_a

    .line 483
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 485
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 409
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

.method protected kB()V
    .locals 8

    .prologue
    const v7, 0x7f0801e2

    const v6, 0x7f0801e1

    const v3, 0x7f0801e0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 618
    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->NI:Z

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/W;->Nd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->c(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ny:Landroid/widget/Spinner;

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 652
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 659
    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->NF:Landroid/widget/TextView;

    .line 667
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 669
    invoke-direct {p0}, Lcom/android/settings/wifi/W;->lH()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 672
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    if-nez v0, :cond_8

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    .line 690
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    .line 694
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    .line 695
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/W;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/W;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/W;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 704
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_a

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 706
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/W;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 711
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nh:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/W;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nj:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/W;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nk:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nl:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    const-string v0, "XiaoMi"

    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 740
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 708
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Ni:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/W;->b(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 729
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method protected lF()V
    .locals 5

    .prologue
    const v4, 0x7f0801d2

    const/4 v3, 0x0

    .line 750
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nm:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->No:Landroid/widget/TextView;

    .line 764
    iget-object v0, p0, Lcom/android/settings/wifi/W;->No:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Np:Landroid/widget/TextView;

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Np:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nq:Landroid/widget/TextView;

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nr:Landroid/widget/TextView;

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 773
    :cond_0
    if-eqz v1, :cond_5

    .line 774
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 775
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 776
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 778
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Nn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Np:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
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

    .line 784
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 785
    iget-object v2, p0, Lcom/android/settings/wifi/W;->No:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Nq:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 795
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Nr:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :cond_5
    :goto_1
    return-void

    .line 799
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected lG()V
    .locals 7

    .prologue
    const v6, 0x7f0801cc

    const v5, 0x7f0801cb

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 805
    const/4 v0, 0x0

    .line 807
    iget-object v1, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 810
    iget-object v0, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 813
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    .line 818
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 819
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    const v2, 0x7f0801cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    .line 822
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 824
    :cond_0
    if-eqz v1, :cond_1

    .line 825
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_1

    .line 827
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v1, p0, Lcom/android/settings/wifi/W;->Nv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :cond_1
    :goto_1
    return-void

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public lI()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/settings/wifi/W;->sd:Z

    return v0
.end method

.method lj()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nb:Lcom/android/settings/wifi/p;

    invoke-interface {v0}, Lcom/android/settings/wifi/p;->ar()Landroid/widget/Button;

    move-result-object v3

    .line 365
    if-nez v3, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/W;->Nd:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v4, 0x8

    if-ge v0, v4, :cond_7

    :cond_2
    move v0, v2

    .line 376
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/W;->Nc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/W;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_4
    if-eqz v0, :cond_6

    .line 387
    :cond_5
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 381
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/W;->lk()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 382
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0801e5

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801b5

    if-ne v0, v1, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 947
    iget-object v2, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 951
    if-ltz v1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ne:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 961
    :cond_0
    :goto_1
    return-void

    .line 947
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 954
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801e4

    if-ne v0, v1, :cond_0

    .line 955
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nf:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 966
    iput p3, p0, Lcom/android/settings/wifi/W;->Nd:I

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->kB()V

    .line 981
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lj()V

    .line 983
    :cond_1
    return-void

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ng:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->kB()V

    goto :goto_0

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Ns:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lG()V

    goto :goto_0

    .line 973
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 974
    iget-object v0, p0, Lcom/android/settings/wifi/W;->Nz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 975
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/W;->NH:I

    if-ge v0, v1, :cond_0

    .line 976
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/W;->ba(I)V

    goto :goto_0

    .line 979
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/W;->lF()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 941
    return-void
.end method
