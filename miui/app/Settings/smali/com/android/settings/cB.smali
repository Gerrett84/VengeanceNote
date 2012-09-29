.class public Lcom/android/settings/cB;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private FW:Z

.field private FX:Z

.field private final FY:Lcom/android/settings/cN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1372
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1366
    iput-boolean v1, p0, Lcom/android/settings/cB;->FW:Z

    .line 1367
    iput-boolean v1, p0, Lcom/android/settings/cB;->FX:Z

    .line 1373
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/cB;->setDropDownViewResource(I)V

    .line 1374
    new-instance v0, Lcom/android/settings/cN;

    invoke-direct {v0, p1}, Lcom/android/settings/cN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cB;->FY:Lcom/android/settings/cN;

    .line 1375
    return-void
.end method

.method private jp()V
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/settings/cB;->FY:Lcom/android/settings/cN;

    invoke-virtual {p0, v0}, Lcom/android/settings/cB;->remove(Ljava/lang/Object;)V

    .line 1389
    iget-boolean v0, p0, Lcom/android/settings/cB;->FW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/cB;->FX:Z

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/settings/cB;->FY:Lcom/android/settings/cN;

    invoke-virtual {p0, v0}, Lcom/android/settings/cB;->add(Ljava/lang/Object;)V

    .line 1392
    :cond_0
    return-void
.end method


# virtual methods
.method public S(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1378
    iput-boolean p1, p0, Lcom/android/settings/cB;->FW:Z

    .line 1379
    invoke-direct {p0}, Lcom/android/settings/cB;->jp()V

    .line 1380
    return-void
.end method

.method public T(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/android/settings/cB;->FX:Z

    .line 1384
    invoke-direct {p0}, Lcom/android/settings/cB;->jp()V

    .line 1385
    return-void
.end method

.method public b(Lcom/android/settings/aS;)I
    .locals 3
    .parameter

    .prologue
    .line 1399
    if-eqz p1, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/android/settings/cB;->getCount()I

    move-result v0

    .line 1401
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1402
    invoke-virtual {p0, v1}, Lcom/android/settings/cB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aS;

    .line 1403
    instance-of v2, v0, Lcom/android/settings/cN;

    if-eqz v2, :cond_1

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1405
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/aS;->a(Lcom/android/settings/aS;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 1410
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
