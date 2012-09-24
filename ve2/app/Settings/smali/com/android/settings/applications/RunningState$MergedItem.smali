.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field KL:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final KM:Ljava/util/ArrayList;

.field final KN:Ljava/util/ArrayList;

.field private KO:I

.field private KP:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KM:Ljava/util/ArrayList;

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KN:Ljava/util/ArrayList;

    .line 462
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KO:I

    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KP:I

    .line 466
    return-void
.end method


# virtual methods
.method M(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move v1, v2

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 507
    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v5, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 506
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 510
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EF:Ljava/lang/String;

    .line 519
    :cond_1
    return v2
.end method

.method d(Landroid/content/Context;Z)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->EA:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EA:Landroid/content/pm/PackageItemInfo;

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->EB:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EB:Ljava/lang/CharSequence;

    .line 471
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->EC:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EC:Ljava/lang/String;

    .line 472
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EI:Z

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->EI:Z

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KM:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 477
    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KO:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KP:I

    if-eq v0, v4, :cond_2

    .line 478
    :cond_0
    iput v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KO:I

    .line 479
    iput v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KP:I

    .line 480
    const v0, 0x7f0b03dd

    .line 481
    if-eq v3, v1, :cond_6

    .line 482
    if-eq v4, v1, :cond_5

    const v0, 0x7f0b03e0

    .line 488
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v5, v0, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->ED:Ljava/lang/String;

    .line 493
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    move v1, v2

    .line 494
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->KN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 496
    iget-wide v3, v0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    iget-wide v5, v0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 497
    iget-wide v3, v0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->cG:J

    .line 494
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 475
    goto :goto_0

    .line 482
    :cond_5
    const v0, 0x7f0b03df

    goto :goto_1

    .line 485
    :cond_6
    if-eq v4, v1, :cond_1

    .line 486
    const v0, 0x7f0b03de

    goto :goto_1

    .line 501
    :cond_7
    return v2
.end method
