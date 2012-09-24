.class public Lcom/android/settings/Y;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private final ft:Lcom/android/settings/a/f;

.field private final fu:I

.field private fv:J

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/settings/a/f;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1416
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1413
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    .line 1417
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/f;

    iput-object v0, p0, Lcom/android/settings/Y;->ft:Lcom/android/settings/a/f;

    .line 1418
    iput p2, p0, Lcom/android/settings/Y;->fu:I

    .line 1419
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkStats;)V
    .locals 14
    .parameter

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1427
    new-instance v4, Lcom/android/settings/bC;

    const/16 v0, 0x3e8

    invoke-direct {v4, v0}, Lcom/android/settings/bC;-><init>(I)V

    .line 1428
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1430
    const/4 v2, 0x0

    .line 1431
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    move v1, v0

    .line 1432
    :goto_0
    const/4 v0, 0x0

    move v13, v0

    move-object v0, v2

    move v2, v13

    :goto_1
    if-ge v2, v1, :cond_5

    .line 1433
    invoke-virtual {p1, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 1435
    iget v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1436
    const/16 v0, 0x2710

    if-lt v6, v0, :cond_3

    const v0, 0x1869f

    if-gt v6, v0, :cond_3

    const/4 v0, 0x1

    .line 1438
    :goto_2
    if-nez v0, :cond_0

    const/4 v0, -0x4

    if-eq v6, v0, :cond_0

    const/4 v0, -0x5

    if-ne v6, v0, :cond_4

    .line 1439
    :cond_0
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bC;

    .line 1440
    if-nez v0, :cond_1

    .line 1441
    new-instance v0, Lcom/android/settings/bC;

    invoke-direct {v0, v6}, Lcom/android/settings/bC;-><init>(I)V

    .line 1442
    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1443
    iget-object v6, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    :cond_1
    iget-wide v6, v0, Lcom/android/settings/bC;->vF:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/settings/bC;->vF:J

    .line 1432
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    .line 1431
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 1436
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1448
    :cond_4
    iget-wide v7, v4, Lcom/android/settings/bC;->vF:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/settings/bC;->vF:J

    .line 1449
    invoke-virtual {v4, v6}, Lcom/android/settings/bC;->aa(I)V

    goto :goto_3

    .line 1453
    :cond_5
    iget-wide v0, v4, Lcom/android/settings/bC;->vF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 1454
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    :cond_6
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1458
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bC;

    iget-wide v0, v0, Lcom/android/settings/bC;->vF:J

    :goto_4
    iput-wide v0, p0, Lcom/android/settings/Y;->fv:J

    .line 1459
    invoke-virtual {p0}, Lcom/android/settings/Y;->notifyDataSetChanged()V

    .line 1460
    return-void

    .line 1458
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bC;

    iget-object v0, v0, Lcom/android/settings/bC;->vE:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1479
    if-nez p2, :cond_0

    .line 1480
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1483
    iget v0, p0, Lcom/android/settings/Y;->fu:I

    if-lez v0, :cond_0

    .line 1484
    iget v0, p0, Lcom/android/settings/Y;->fu:I

    iget v1, p0, Lcom/android/settings/Y;->fu:I

    invoke-virtual {p2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1488
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1490
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1491
    const v1, 0x102000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1495
    iget-object v2, p0, Lcom/android/settings/Y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bC;

    .line 1496
    iget-object v5, p0, Lcom/android/settings/Y;->ft:Lcom/android/settings/a/f;

    invoke-static {v5, v2, p2}, Lcom/android/settings/as;->a(Lcom/android/settings/a/f;Lcom/android/settings/bC;Landroid/view/View;)V

    .line 1498
    iget-wide v5, v2, Lcom/android/settings/bC;->vF:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    iget-wide v4, p0, Lcom/android/settings/Y;->fv:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-wide v2, v2, Lcom/android/settings/bC;->vF:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/Y;->fv:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 1501
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1503
    return-object p2

    :cond_1
    move v0, v3

    .line 1500
    goto :goto_0
.end method
