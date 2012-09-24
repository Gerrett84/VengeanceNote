.class public Lcom/android/settings/widget/f;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/b;


# static fields
.field private static final ps:Ljava/lang/Object;

.field private static final pt:Ljava/lang/Object;


# instance fields
.field private eW:J

.field private eX:J

.field private eY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/f;->ps:Ljava/lang/Object;

    .line 576
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/f;->pt:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X()[F
    .locals 7

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/android/settings/widget/f;->eX:J

    iget-wide v2, p0, Lcom/android/settings/widget/f;->eW:J

    sub-long v2, v0, v2

    .line 616
    const-wide v0, 0x180000000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 617
    const-wide/32 v0, 0x10000000

    .line 624
    :goto_0
    div-long/2addr v2, v0

    long-to-int v2, v2

    .line 625
    new-array v5, v2, [F

    .line 626
    iget-wide v3, p0, Lcom/android/settings/widget/f;->eW:J

    .line 627
    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 628
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/widget/f;->a(J)F

    move-result v6

    aput v6, v5, v2

    .line 629
    add-long/2addr v3, v0

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    :cond_0
    const-wide v0, 0x300000000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 619
    const-wide/32 v0, 0x20000000

    goto :goto_0

    .line 621
    :cond_1
    const-wide/32 v0, 0x40000000

    goto :goto_0

    .line 632
    :cond_2
    return-object v5
.end method

.method public a(J)F
    .locals 6
    .parameter

    .prologue
    .line 561
    long-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/widget/f;->eW:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/widget/f;->eX:J

    iget-wide v4, p0, Lcom/android/settings/widget/f;->eW:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 562
    const-wide/high16 v2, 0x4024

    const-wide v4, 0x3fd79b217a704c38L

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide v4, -0x4059d6f1420f71c4L

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 564
    iget v2, p0, Lcom/android/settings/widget/f;->eY:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 585
    const v0, 0x60c017c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 586
    const-wide/32 v0, 0x100000

    move-object v3, v2

    move-wide v9, v0

    move-wide v1, v9

    .line 592
    :goto_0
    long-to-double v4, p3

    long-to-double v6, v1

    div-double/2addr v4, v6

    .line 596
    const-wide/high16 v6, 0x4024

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 597
    const-string v0, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 598
    const-wide/high16 v6, 0x4024

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    mul-long/2addr v1, v4

    const-wide/16 v4, 0xa

    div-long/2addr v1, v4

    long-to-double v1, v1

    .line 604
    :goto_1
    sget-object v4, Lcom/android/settings/widget/f;->ps:Ljava/lang/Object;

    const-string v5, "^1"

    invoke-static {p2, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v4

    .line 605
    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p2, v5, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 606
    sget-object v0, Lcom/android/settings/widget/f;->pt:Ljava/lang/Object;

    const-string v4, "^2"

    invoke-static {p2, v0, v4}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 607
    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {p2, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    double-to-long v0, v1

    return-wide v0

    .line 588
    :cond_0
    const v0, 0x60c019b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 589
    const-wide/32 v0, 0x40000000

    move-object v3, v2

    move-wide v9, v0

    move-wide v1, v9

    goto :goto_0

    .line 600
    :cond_1
    const-string v0, "%.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    mul-long/2addr v1, v4

    long-to-double v1, v1

    goto :goto_1
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 550
    iget v0, p0, Lcom/android/settings/widget/f;->eY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 551
    iput p1, p0, Lcom/android/settings/widget/f;->eY:F

    .line 552
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/android/settings/widget/f;->eW:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/f;->eX:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/f;->eW:J

    .line 541
    iput-wide p3, p0, Lcom/android/settings/widget/f;->eX:J

    .line 542
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)I
    .locals 7
    .parameter

    .prologue
    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/f;->a(J)F

    move-result v0

    .line 638
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/f;->eY:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 639
    const/4 v0, -0x1

    .line 643
    :goto_0
    return v0

    .line 640
    :cond_0
    float-to-double v0, v0

    iget v2, p0, Lcom/android/settings/widget/f;->eY:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 641
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)J
    .locals 8
    .parameter

    .prologue
    .line 569
    iget v0, p0, Lcom/android/settings/widget/f;->eY:F

    div-float v0, p1, v0

    float-to-double v0, v0

    .line 570
    const-wide v2, 0x3ff4f6ac3b8f3c62L

    const-wide v4, 0x4005b07dd022ee16L

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 572
    iget-wide v2, p0, Lcom/android/settings/widget/f;->eW:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/settings/widget/f;->eX:J

    iget-wide v6, p0, Lcom/android/settings/widget/f;->eW:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 534
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/f;->eW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/f;->eX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/f;->eY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
