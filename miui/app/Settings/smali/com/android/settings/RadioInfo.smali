.class public Lcom/android/settings/RadioInfo;
.super Lcom/android/settings/J;
.source "RadioInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private kR:Landroid/widget/TextView;

.field private kS:Landroid/widget/TextView;

.field private kT:Landroid/widget/TextView;

.field private kU:Landroid/widget/TextView;

.field private kV:Landroid/widget/TextView;

.field private kW:Landroid/widget/TextView;

.field private kX:Landroid/widget/TextView;

.field private kY:Landroid/widget/TextView;

.field private kZ:Landroid/widget/TextView;

.field private lA:Ljava/lang/String;

.field private lB:Ljava/lang/String;

.field private lC:Z

.field private lD:Z

.field private lE:Landroid/telephony/PhoneStateListener;

.field private lF:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private lG:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private lH:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private lI:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private lJ:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private lK:Landroid/view/MenuItem$OnMenuItemClickListener;

.field lL:Landroid/view/View$OnClickListener;

.field private lM:Landroid/widget/Button;

.field lN:Landroid/view/View$OnClickListener;

.field private lO:Landroid/widget/Button;

.field lP:Landroid/view/View$OnClickListener;

.field private lQ:Landroid/widget/Button;

.field lR:Landroid/view/View$OnClickListener;

.field lS:Landroid/view/View$OnClickListener;

.field lT:Landroid/view/View$OnClickListener;

.field lU:Landroid/view/View$OnClickListener;

.field lV:Landroid/view/View$OnClickListener;

.field lW:Landroid/view/View$OnClickListener;

.field lX:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private lY:[Ljava/lang/String;

.field private la:Landroid/widget/TextView;

.field private lb:Landroid/widget/TextView;

.field private lc:Landroid/widget/TextView;

.field private ld:Landroid/widget/TextView;

.field private le:Landroid/widget/TextView;

.field private lf:Landroid/widget/TextView;

.field private lg:Landroid/widget/TextView;

.field private lh:Landroid/widget/TextView;

.field private li:Landroid/widget/TextView;

.field private lj:Landroid/widget/TextView;

.field private lk:Landroid/widget/TextView;

.field private ll:Landroid/widget/TextView;

.field private lm:Landroid/widget/TextView;

.field private ln:Landroid/widget/TextView;

.field private lo:Landroid/widget/TextView;

.field private lp:Landroid/widget/EditText;

.field private lq:Landroid/widget/Button;

.field private lr:Landroid/widget/Button;

.field private ls:Landroid/widget/Button;

.field private lt:Landroid/widget/Button;

.field private lu:Landroid/widget/Button;

.field private lv:Landroid/widget/Button;

.field private lw:Landroid/widget/Spinner;

.field private lx:Lcom/android/internal/telephony/Phone;

.field private ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private lz:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 80
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->TAG:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->lC:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->lD:Z

    .line 146
    new-instance v0, Lcom/android/settings/A;

    invoke-direct {v0, p0}, Lcom/android/settings/A;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lE:Landroid/telephony/PhoneStateListener;

    .line 178
    new-instance v0, Lcom/android/settings/B;

    invoke-direct {v0, p0}, Lcom/android/settings/B;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 806
    new-instance v0, Lcom/android/settings/y;

    invoke-direct {v0, p0}, Lcom/android/settings/y;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 821
    new-instance v0, Lcom/android/settings/z;

    invoke-direct {v0, p0}, Lcom/android/settings/z;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lG:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 836
    new-instance v0, Lcom/android/settings/ai;

    invoke-direct {v0, p0}, Lcom/android/settings/ai;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 852
    new-instance v0, Lcom/android/settings/dn;

    invoke-direct {v0, p0}, Lcom/android/settings/dn;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lI:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 859
    new-instance v0, Lcom/android/settings/do;

    invoke-direct {v0, p0}, Lcom/android/settings/do;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lJ:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 868
    new-instance v0, Lcom/android/settings/dl;

    invoke-direct {v0, p0}, Lcom/android/settings/dl;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lK:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 888
    new-instance v0, Lcom/android/settings/dm;

    invoke-direct {v0, p0}, Lcom/android/settings/dm;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lL:Landroid/view/View$OnClickListener;

    .line 897
    new-instance v0, Lcom/android/settings/dr;

    invoke-direct {v0, p0}, Lcom/android/settings/dr;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lN:Landroid/view/View$OnClickListener;

    .line 923
    new-instance v0, Lcom/android/settings/ds;

    invoke-direct {v0, p0}, Lcom/android/settings/ds;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lP:Landroid/view/View$OnClickListener;

    .line 948
    new-instance v0, Lcom/android/settings/dp;

    invoke-direct {v0, p0}, Lcom/android/settings/dp;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lR:Landroid/view/View$OnClickListener;

    .line 971
    new-instance v0, Lcom/android/settings/dq;

    invoke-direct {v0, p0}, Lcom/android/settings/dq;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lS:Landroid/view/View$OnClickListener;

    .line 978
    new-instance v0, Lcom/android/settings/db;

    invoke-direct {v0, p0}, Lcom/android/settings/db;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lT:Landroid/view/View$OnClickListener;

    .line 991
    new-instance v0, Lcom/android/settings/da;

    invoke-direct {v0, p0}, Lcom/android/settings/da;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lU:Landroid/view/View$OnClickListener;

    .line 997
    new-instance v0, Lcom/android/settings/cW;

    invoke-direct {v0, p0}, Lcom/android/settings/cW;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lV:Landroid/view/View$OnClickListener;

    .line 1005
    new-instance v0, Lcom/android/settings/cX;

    invoke-direct {v0, p0}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lW:Landroid/view/View$OnClickListener;

    .line 1011
    new-instance v0, Lcom/android/settings/cY;

    invoke-direct {v0, p0}, Lcom/android/settings/cY;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lX:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1024
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lY:[Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic B(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cF()Z

    move-result v0

    return v0
.end method

.method static synthetic C(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cG()V

    return-void
.end method

.method static synthetic D(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cH()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cI()V

    return-void
.end method

.method static synthetic F(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cJ()Z

    move-result v0

    return v0
.end method

.method static synthetic G(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cK()V

    return-void
.end method

.method static synthetic H(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cp()V

    return-void
.end method

.method static synthetic I(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cD()V

    return-void
.end method

.method static synthetic J(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic K(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cC()V

    return-void
.end method

.method private final a(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 454
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 455
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 456
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 457
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 458
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->lc:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b002d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :goto_2
    return-void

    .line 458
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 463
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 464
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 465
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 466
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 467
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 468
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 469
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 470
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->lc:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lc:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cu()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->lC:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cx()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->lD:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cE()V

    return-void
.end method

.method private final c(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    if-eqz p1, :cond_2

    .line 495
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ld:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-void

    .line 498
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 499
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 503
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final cA()V
    .locals 2

    .prologue
    .line 679
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 681
    if-nez v0, :cond_0

    .line 682
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    .line 693
    :goto_0
    return-void

    .line 684
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    goto :goto_0

    .line 688
    :catch_1
    move-exception v0

    .line 689
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    goto :goto_0

    .line 690
    :catch_2
    move-exception v0

    .line 691
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    goto :goto_0
.end method

.method private cB()V
    .locals 4

    .prologue
    .line 699
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 701
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 702
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 703
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 704
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;

    .line 708
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 712
    :goto_1
    return-void

    .line 706
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

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;

    goto :goto_1
.end method

.method private cC()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 716
    return-void
.end method

.method private final cD()V
    .locals 3

    .prologue
    const v2, 0x7f0b0027

    .line 719
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;

    .line 725
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ll:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ln:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    new-instance v1, Lcom/android/settings/C;

    invoke-direct {v1, p0}, Lcom/android/settings/C;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 736
    new-instance v2, Lcom/android/settings/D;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/D;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 743
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 745
    new-instance v2, Lcom/android/settings/w;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/w;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 752
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 754
    new-instance v2, Lcom/android/settings/x;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/x;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 761
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 762
    return-void
.end method

.method private final cE()V
    .locals 2

    .prologue
    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lh:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method private cF()Z
    .locals 2

    .prologue
    .line 910
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cG()V
    .locals 3

    .prologue
    .line 914
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cF()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cF()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lM:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 919
    return-void

    .line 915
    :cond_0
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cH()Z
    .locals 2

    .prologue
    .line 935
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cI()V
    .locals 3

    .prologue
    .line 939
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cH()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lO:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 944
    return-void

    .line 940
    :cond_0
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cJ()Z
    .locals 2

    .prologue
    .line 960
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cK()V
    .locals 3

    .prologue
    .line 964
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cJ()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lQ:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 969
    return-void

    .line 965
    :cond_0
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private co()V
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lq:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void

    .line 415
    :cond_0
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cp()V
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    return-void

    .line 422
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private final cq()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 430
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 433
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->kZ:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 440
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 444
    if-ne v4, v2, :cond_3

    .line 446
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->kZ:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private final cr()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->la:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->lC:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method private final cs()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lb:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->lD:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    return-void
.end method

.method private final ct()V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 524
    const v0, 0x7f0b0027

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    packed-switch v2, :pswitch_data_0

    .line 539
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->kW:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->kV:Landroid/widget/TextView;

    const v2, 0x7f0b001e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 547
    :goto_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->kU:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    return-void

    .line 528
    :pswitch_0
    const v0, 0x7f0b001a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :pswitch_1
    const v0, 0x7f0b001c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :pswitch_2
    const v0, 0x7f0b001d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->kV:Landroid/widget/TextView;

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final cu()V
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 575
    const v0, 0x7f0b0027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    packed-switch v1, :pswitch_data_0

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->kX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    return-void

    .line 579
    :pswitch_0
    const v0, 0x7f0b0025

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :pswitch_1
    const v0, 0x7f0b0024

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_2
    const v0, 0x7f0b0023

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :pswitch_3
    const v0, 0x7f0b0026

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final cv()V
    .locals 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 597
    const-string v1, "gsm.network.type"

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->kY:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-void
.end method

.method private final cw()V
    .locals 4

    .prologue
    const v3, 0x7f0b0027

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 608
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 609
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->kR:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 614
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->kS:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    return-void
.end method

.method private final cx()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->le:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lf:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->li:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    return-void
.end method

.method private final cy()V
    .locals 12

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 640
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 641
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 642
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 643
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 645
    const v9, 0x7f0b0028

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 646
    const v10, 0x7f0b0029

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->lj:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lk:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    return-void
.end method

.method private final cz()V
    .locals 4

    .prologue
    .line 659
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 660
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 662
    if-nez v0, :cond_0

    .line 663
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    .line 672
    :goto_0
    return-void

    .line 665
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    goto :goto_0

    .line 669
    :catch_1
    move-exception v0

    .line 670
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cv()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cy()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cr()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cs()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cq()V

    return-void
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ct()V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->co()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lw:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lm:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lB:Ljava/lang/String;

    return-object v0
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 554
    const v0, 0x7f0b0027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    sget-object v3, Lcom/android/settings/cZ;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->kT:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-void

    .line 558
    :pswitch_0
    const v0, 0x7f0b0020

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_1
    const v0, 0x7f0b0021

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 564
    :pswitch_2
    const v0, 0x7f0b0022

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic v(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ln:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cz()V

    return-void
.end method

.method static synthetic x(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cA()V

    return-void
.end method

.method static synthetic y(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cB()V

    return-void
.end method

.method static synthetic z(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    .line 247
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 248
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    .line 250
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kR:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kS:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kT:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kU:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kV:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kW:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kX:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kY:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->kZ:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->la:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lb:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lc:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ld:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->le:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lf:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lg:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lh:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->li:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lj:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lk:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lp:Landroid/widget/EditText;

    .line 272
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lo:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ll:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lm:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ln:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lw:Landroid/widget/Spinner;

    .line 279
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->lY:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 281
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lw:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lw:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lX:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lq:Landroid/widget/Button;

    .line 286
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lq:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lM:Landroid/widget/Button;

    .line 289
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lM:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lO:Landroid/widget/Button;

    .line 292
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lO:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lP:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lQ:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lQ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ls:Landroid/widget/Button;

    .line 298
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ls:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lt:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lu:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lW:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lr:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lr:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lS:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lv:Landroid/widget/Button;

    .line 307
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lv:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lT:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lv:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 316
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lx:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 325
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 326
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const v0, 0x7f0b00c1

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lJ:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 374
    const v0, 0x7f0b0016

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lF:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 376
    const/4 v0, 0x2

    const v1, 0x7f0b0017

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lG:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 378
    const/4 v0, 0x3

    const v1, 0x7f0b0018

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lH:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 380
    const/4 v0, 0x4

    const v1, 0x7f0b0019

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lI:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 382
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lK:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 384
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/settings/J;->onPause()V

    .line 363
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lE:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 367
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 390
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 391
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 394
    packed-switch v0, :pswitch_data_0

    .line 403
    :pswitch_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    return v1

    .line 397
    :pswitch_1
    const-string v0, "Disable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 398
    goto :goto_0

    .line 400
    :pswitch_2
    const-string v0, "Enable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 401
    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cq()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cr()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cs()V

    .line 336
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->ct()V

    .line 337
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cu()V

    .line 339
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cx()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cy()V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->co()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cG()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cI()V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cK()V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cw()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->cp()V

    .line 348
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ly:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lE:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 357
    return-void
.end method
