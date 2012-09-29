.class public Lcom/android/settings/widget/c;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/b;


# static fields
.field private static final fE:I


# instance fields
.field private fF:J

.field private fG:J

.field private fH:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/widget/c;->fE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 463
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 465
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/settings/widget/c;->a(JJ)Z

    .line 466
    return-void
.end method


# virtual methods
.method public a(J)F
    .locals 5
    .parameter

    .prologue
    .line 496
    iget v0, p0, Lcom/android/settings/widget/c;->fH:F

    iget-wide v1, p0, Lcom/android/settings/widget/c;->fF:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/settings/widget/c;->fG:J

    iget-wide v3, p0, Lcom/android/settings/widget/c;->fF:J

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
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 508
    return-wide p3
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 486
    iget v0, p0, Lcom/android/settings/widget/c;->fH:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 487
    iput p1, p0, Lcom/android/settings/widget/c;->fH:F

    .line 488
    const/4 v0, 0x1

    .line 490
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
    .line 475
    iget-wide v0, p0, Lcom/android/settings/widget/c;->fF:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/c;->fG:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/c;->fF:J

    .line 477
    iput-wide p3, p0, Lcom/android/settings/widget/c;->fG:J

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 513
    const/16 v0, 0x20

    new-array v4, v0, [F

    .line 517
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 518
    iget-wide v0, p0, Lcom/android/settings/widget/c;->fG:J

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 519
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, v5, Landroid/text/format/Time;->weekDay:I

    sget v3, Lcom/android/settings/widget/c;->fE:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 520
    iput v2, v5, Landroid/text/format/Time;->second:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v2, v5, Landroid/text/format/Time;->hour:I

    .line 522
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 523
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 524
    :goto_0
    iget-wide v6, p0, Lcom/android/settings/widget/c;->fF:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 525
    iget-wide v6, p0, Lcom/android/settings/widget/c;->fG:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 526
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/c;->a(J)F

    move-result v0

    aput v0, v4, v2

    move v2, v3

    .line 528
    :cond_0
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 529
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 530
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public b(J)I
    .locals 1
    .parameter

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public b(F)J
    .locals 5
    .parameter

    .prologue
    .line 501
    iget-wide v0, p0, Lcom/android/settings/widget/c;->fF:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/c;->fG:J

    iget-wide v3, p0, Lcom/android/settings/widget/c;->fF:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/c;->fH:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 470
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/c;->fF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/c;->fG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/c;->fH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
