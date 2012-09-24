.class public Lcom/android/settings/cq;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private Ca:Z

.field private Cb:Z

.field private final Cc:Lcom/android/settings/cA;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1343
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1337
    iput-boolean v1, p0, Lcom/android/settings/cq;->Ca:Z

    .line 1338
    iput-boolean v1, p0, Lcom/android/settings/cq;->Cb:Z

    .line 1344
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/cq;->setDropDownViewResource(I)V

    .line 1345
    new-instance v0, Lcom/android/settings/cA;

    invoke-direct {v0, p1}, Lcom/android/settings/cA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cq;->Cc:Lcom/android/settings/cA;

    .line 1346
    return-void
.end method

.method private ho()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/settings/cq;->Cc:Lcom/android/settings/cA;

    invoke-virtual {p0, v0}, Lcom/android/settings/cq;->remove(Ljava/lang/Object;)V

    .line 1360
    iget-boolean v0, p0, Lcom/android/settings/cq;->Ca:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/cq;->Cb:Z

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/settings/cq;->Cc:Lcom/android/settings/cA;

    invoke-virtual {p0, v0}, Lcom/android/settings/cq;->add(Ljava/lang/Object;)V

    .line 1363
    :cond_0
    return-void
.end method


# virtual methods
.method public X(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1349
    iput-boolean p1, p0, Lcom/android/settings/cq;->Ca:Z

    .line 1350
    invoke-direct {p0}, Lcom/android/settings/cq;->ho()V

    .line 1351
    return-void
.end method

.method public Y(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/android/settings/cq;->Cb:Z

    .line 1355
    invoke-direct {p0}, Lcom/android/settings/cq;->ho()V

    .line 1356
    return-void
.end method

.method public b(Lcom/android/settings/aD;)I
    .locals 3
    .parameter

    .prologue
    .line 1370
    if-eqz p1, :cond_2

    .line 1371
    invoke-virtual {p0}, Lcom/android/settings/cq;->getCount()I

    move-result v0

    .line 1372
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1373
    invoke-virtual {p0, v1}, Lcom/android/settings/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aD;

    .line 1374
    instance-of v2, v0, Lcom/android/settings/cA;

    if-eqz v2, :cond_1

    .line 1372
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/aD;->a(Lcom/android/settings/aD;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 1381
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
