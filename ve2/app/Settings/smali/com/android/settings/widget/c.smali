.class public Lcom/android/settings/widget/c;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/b;


# instance fields
.field private eW:J

.field private eX:J

.field private eY:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 461
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 463
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/settings/widget/c;->a(JJ)Z

    .line 464
    return-void
.end method


# virtual methods
.method public X()[F
    .locals 9

    .prologue
    const-wide/32 v7, 0x240c8400

    .line 512
    iget-wide v0, p0, Lcom/android/settings/widget/c;->eX:J

    iget-wide v2, p0, Lcom/android/settings/widget/c;->eW:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v7

    long-to-int v1, v0

    .line 513
    new-array v2, v1, [F

    .line 514
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 515
    iget-wide v3, p0, Lcom/android/settings/widget/c;->eX:J

    add-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/widget/c;->a(J)F

    move-result v3

    aput v3, v2, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-object v2
.end method

.method public a(J)F
    .locals 5
    .parameter

    .prologue
    .line 494
    iget v0, p0, Lcom/android/settings/widget/c;->eY:F

    iget-wide v1, p0, Lcom/android/settings/widget/c;->eW:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/settings/widget/c;->eX:J

    iget-wide v3, p0, Lcom/android/settings/widget/c;->eW:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 506
    return-wide p3
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 484
    iget v0, p0, Lcom/android/settings/widget/c;->eY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 485
    iput p1, p0, Lcom/android/settings/widget/c;->eY:F

    .line 486
    const/4 v0, 0x1

    .line 488
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
    .line 473
    iget-wide v0, p0, Lcom/android/settings/widget/c;->eW:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/c;->eX:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/c;->eW:J

    .line 475
    iput-wide p3, p0, Lcom/android/settings/widget/c;->eX:J

    .line 476
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)I
    .locals 1
    .parameter

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public b(F)J
    .locals 5
    .parameter

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/android/settings/widget/c;->eW:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/c;->eX:J

    iget-wide v3, p0, Lcom/android/settings/widget/c;->eW:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/c;->eY:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 468
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/c;->eW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/c;->eX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/c;->eY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
