.class public Lcom/android/settings/al;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private final gq:Lcom/android/settings/a/h;

.field private final gr:I

.field private gs:J

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/settings/a/h;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1474
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1471
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    .line 1475
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/h;

    iput-object v0, p0, Lcom/android/settings/al;->gq:Lcom/android/settings/a/h;

    .line 1476
    iput p2, p0, Lcom/android/settings/al;->gr:I

    .line 1477
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkStats;[I)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1483
    iget-object v1, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1485
    new-instance v6, Lcom/android/settings/P;

    const/16 v1, 0x3e8

    invoke-direct {v6, v1}, Lcom/android/settings/P;-><init>(I)V

    .line 1486
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1488
    const/4 v3, 0x0

    .line 1489
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    move v2, v1

    .line 1490
    :goto_0
    const/4 v1, 0x0

    move v14, v1

    move-object v1, v3

    move v3, v14

    :goto_1
    if-ge v3, v2, :cond_5

    .line 1491
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 1493
    iget v1, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v1}, Landroid/os/UserId;->isApp(I)Z

    move-result v8

    .line 1494
    if-eqz v8, :cond_3

    iget v1, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v1}, Landroid/os/UserId;->getAppId(I)I

    move-result v1

    move v5, v1

    .line 1495
    :goto_2
    if-nez v8, :cond_0

    const/4 v1, -0x4

    if-eq v5, v1, :cond_0

    const/4 v1, -0x5

    if-ne v5, v1, :cond_4

    .line 1496
    :cond_0
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/P;

    .line 1497
    if-nez v1, :cond_1

    .line 1498
    new-instance v1, Lcom/android/settings/P;

    invoke-direct {v1, v5}, Lcom/android/settings/P;-><init>(I)V

    .line 1499
    invoke-virtual {v7, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1500
    iget-object v5, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    :cond_1
    iget-wide v8, v1, Lcom/android/settings/P;->dB:J

    iget-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/settings/P;->dB:J

    .line 1504
    iget v5, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v5}, Lcom/android/settings/P;->i(I)V

    .line 1490
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v4

    goto :goto_1

    .line 1489
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 1494
    :cond_3
    iget v1, v4, Landroid/net/NetworkStats$Entry;->uid:I

    move v5, v1

    goto :goto_2

    .line 1506
    :cond_4
    iget-wide v8, v6, Lcom/android/settings/P;->dB:J

    iget-wide v10, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/P;->dB:J

    .line 1507
    iget v1, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v6, v1}, Lcom/android/settings/P;->i(I)V

    goto :goto_3

    .line 1511
    :cond_5
    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_7

    aget v4, p2, v2

    .line 1512
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/P;

    .line 1513
    if-nez v1, :cond_6

    .line 1514
    new-instance v1, Lcom/android/settings/P;

    invoke-direct {v1, v4}, Lcom/android/settings/P;-><init>(I)V

    .line 1515
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/settings/P;->dB:J

    .line 1516
    iget-object v4, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/settings/P;->dz:Z

    .line 1511
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1521
    :cond_7
    iget-wide v1, v6, Lcom/android/settings/P;->dB:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    .line 1522
    iget-object v1, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    :cond_8
    iget-object v1, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1526
    iget-object v1, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/P;

    iget-wide v1, v1, Lcom/android/settings/P;->dB:J

    :goto_5
    iput-wide v1, p0, Lcom/android/settings/al;->gs:J

    .line 1527
    invoke-virtual {p0}, Lcom/android/settings/al;->notifyDataSetChanged()V

    .line 1528
    return-void

    .line 1526
    :cond_9
    const-wide/16 v1, 0x0

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/P;

    iget v0, v0, Lcom/android/settings/P;->dy:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    .line 1547
    if-nez p2, :cond_0

    .line 1548
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040028

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1551
    iget v0, p0, Lcom/android/settings/al;->gr:I

    if-lez v0, :cond_0

    .line 1552
    iget v0, p0, Lcom/android/settings/al;->gr:I

    iget v1, p0, Lcom/android/settings/al;->gr:I

    invoke-virtual {p2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1556
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1558
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1559
    const v1, 0x102000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1563
    iget-object v2, p0, Lcom/android/settings/al;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/P;

    .line 1564
    iget-object v5, p0, Lcom/android/settings/al;->gq:Lcom/android/settings/a/h;

    invoke-static {v5, v2, p2}, Lcom/android/settings/aG;->a(Lcom/android/settings/a/h;Lcom/android/settings/P;Landroid/view/View;)V

    .line 1566
    iget-boolean v5, v2, Lcom/android/settings/P;->dz:Z

    if-eqz v5, :cond_1

    iget-wide v5, v2, Lcom/android/settings/P;->dB:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    .line 1567
    const v4, 0x7f0b05e8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1568
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1574
    :goto_0
    iget-wide v4, p0, Lcom/android/settings/al;->gs:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_2

    iget-wide v2, v2, Lcom/android/settings/P;->dB:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/settings/al;->gs:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 1575
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1577
    return-object p2

    .line 1570
    :cond_1
    iget-wide v5, v2, Lcom/android/settings/P;->dB:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1574
    goto :goto_1
.end method
