.class public Lcom/android/settings/widget/f;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/b;


# static fields
.field private static final rx:Ljava/lang/Object;

.field private static final ry:Ljava/lang/Object;


# instance fields
.field private fC:J

.field private fD:J

.field private fE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 601
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/f;->rx:Ljava/lang/Object;

    .line 602
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/f;->ry:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)F
    .locals 5
    .parameter

    .prologue
    .line 585
    iget v0, p0, Lcom/android/settings/widget/f;->fE:F

    iget-wide v1, p0, Lcom/android/settings/widget/f;->fC:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/settings/widget/f;->fD:J

    iget-wide v3, p0, Lcom/android/settings/widget/f;->fC:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 611
    const v0, 0x60c017c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 612
    const-wide/32 v0, 0x100000

    move-object v3, v2

    move-wide v9, v0

    move-wide v1, v9

    .line 618
    :goto_0
    long-to-double v4, p3

    long-to-double v6, v1

    div-double/2addr v4, v6

    .line 622
    const-wide/high16 v6, 0x4024

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 623
    const-string v0, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    const-wide/high16 v6, 0x4024

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    mul-long/2addr v1, v4

    const-wide/16 v4, 0xa

    div-long/2addr v1, v4

    long-to-double v1, v1

    .line 630
    :goto_1
    sget-object v4, Lcom/android/settings/widget/f;->rx:Ljava/lang/Object;

    const-string v5, "^1"

    invoke-static {p2, v4, v0, v5}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/android/settings/widget/f;->ry:Ljava/lang/Object;

    const-string v4, "^2"

    invoke-static {p2, v0, v3, v4}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 633
    double-to-long v0, v1

    return-wide v0

    .line 614
    :cond_0
    const v0, 0x60c019b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 615
    const-wide/32 v0, 0x40000000

    move-object v3, v2

    move-wide v9, v0

    move-wide v1, v9

    goto :goto_0

    .line 626
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

    .line 627
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
    .line 568
    iget v0, p0, Lcom/android/settings/widget/f;->fE:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 569
    iput p1, p0, Lcom/android/settings/widget/f;->fE:F

    .line 570
    const/4 v0, 0x1

    .line 572
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
    .line 557
    iget-wide v0, p0, Lcom/android/settings/widget/f;->fC:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/f;->fD:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/f;->fC:J

    .line 559
    iput-wide p3, p0, Lcom/android/settings/widget/f;->fD:J

    .line 560
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aa()[F
    .locals 7

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/android/settings/widget/f;->fD:J

    iget-wide v2, p0, Lcom/android/settings/widget/f;->fC:J

    sub-long/2addr v0, v2

    .line 641
    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->s(J)J

    move-result-wide v3

    .line 642
    div-long/2addr v0, v3

    long-to-int v0, v0

    .line 643
    new-array v5, v0, [F

    .line 644
    iget-wide v1, p0, Lcom/android/settings/widget/f;->fC:J

    .line 645
    const/4 v0, 0x0

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 646
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/f;->a(J)F

    move-result v6

    aput v6, v5, v0

    .line 647
    add-long/2addr v1, v3

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_0
    return-object v5
.end method

.method public b(J)I
    .locals 7
    .parameter

    .prologue
    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/f;->a(J)F

    move-result v0

    .line 656
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/f;->fE:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 657
    const/4 v0, -0x1

    .line 661
    :goto_0
    return v0

    .line 658
    :cond_0
    float-to-double v0, v0

    iget v2, p0, Lcom/android/settings/widget/f;->fE:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 659
    const/4 v0, 0x1

    goto :goto_0

    .line 661
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)J
    .locals 5
    .parameter

    .prologue
    .line 597
    iget-wide v0, p0, Lcom/android/settings/widget/f;->fC:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/f;->fD:J

    iget-wide v3, p0, Lcom/android/settings/widget/f;->fC:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/f;->fE:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 552
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/f;->fC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/f;->fD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/f;->fE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
