.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/o;
.source "ChartDataUsageView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private wg:Lcom/android/settings/widget/ChartGridView;

.field private wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private wj:Landroid/net/NetworkStatsHistory;

.field private wk:Lcom/android/settings/widget/ChartSweepView;

.field private wl:Lcom/android/settings/widget/ChartSweepView;

.field private wm:Lcom/android/settings/widget/ChartSweepView;

.field private wn:Lcom/android/settings/widget/ChartSweepView;

.field private wo:J

.field private wp:Lcom/android/settings/widget/d;

.field private wq:Lcom/android/settings/widget/h;

.field private wr:Lcom/android/settings/widget/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 299
    new-instance v0, Lcom/android/settings/widget/t;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/t;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wq:Lcom/android/settings/widget/h;

    .line 327
    new-instance v0, Lcom/android/settings/widget/r;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/r;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wr:Lcom/android/settings/widget/h;

    .line 92
    new-instance v0, Lcom/android/settings/widget/c;

    invoke-direct {v0}, Lcom/android/settings/widget/c;-><init>()V

    new-instance v1, Lcom/android/settings/widget/n;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-direct {v2}, Lcom/android/settings/widget/f;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/n;-><init>(Lcom/android/settings/widget/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 94
    new-instance v0, Lcom/android/settings/widget/s;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/s;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 669
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 670
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 671
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 672
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 673
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 675
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 676
    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gu()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gB()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->g(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method private b(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    .line 317
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wp:Lcom/android/settings/widget/d;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method private f(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v2, 0x0

    .line 221
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wo:J

    .line 224
    if-eqz p1, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->ci()I

    move-result v4

    .line 226
    if-lez v4, :cond_5

    .line 228
    const-wide/16 v4, 0xb

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    .line 238
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 239
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lS()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lS()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 240
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    .line 241
    const-wide/32 v6, 0x3200000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 242
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 245
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->wo:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 246
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wo:J

    .line 248
    iget-object v4, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/android/settings/widget/b;->a(JJ)Z

    move-result v4

    .line 249
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 250
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 252
    if-eqz v4, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lQ()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lQ()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wg:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 260
    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->ch()V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_3

    .line 268
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_4

    .line 271
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 274
    :cond_4
    return-void

    .line 229
    :cond_5
    if-gez v4, :cond_0

    .line 231
    const-wide/16 v4, 0x9

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_0
.end method

.method private g(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 325
    return-void
.end method

.method private gA()J
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private gB()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 445
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 448
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    goto :goto_0
.end method

.method private gu()V
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 281
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lR()J

    move-result-wide v4

    .line 285
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 291
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 295
    :goto_1
    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 296
    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->ae(Z)V

    .line 297
    return-void

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_0
.end method

.method private gz()J
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static r(J)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 681
    sub-long v0, p0, v4

    .line 684
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 685
    const/4 v2, 0x2

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 686
    const/4 v2, 0x4

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 687
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 688
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 689
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 691
    add-long/2addr v0, v4

    .line 693
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static synthetic s(J)J
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->r(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 165
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gu()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gB()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 170
    return-void
.end method

.method public a(Lcom/android/settings/widget/d;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wp:Lcom/android/settings/widget/d;

    .line 161
    return-void
.end method

.method public b(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wj:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->y(J)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gu()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gB()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 182
    return-void

    .line 174
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Landroid/net/NetworkPolicy;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 203
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 211
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    goto :goto_2
.end method

.method public d(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/b;->a(JJ)Z

    move-result v2

    .line 403
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wg:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->e(JJ)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 407
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gz()J

    move-result-wide v0

    .line 408
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gA()J

    move-result-wide v3

    .line 410
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    .line 412
    :goto_0
    const-wide/high16 v0, -0x8000

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    move-wide v0, p3

    .line 420
    :goto_1
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 421
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 425
    add-long v3, p3, p1

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 427
    const-wide/32 v3, 0x240c8400

    sub-long v3, v0, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 429
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 430
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 433
    if-eqz v2, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lQ()V

    .line 435
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lQ()V

    .line 438
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gu()V

    .line 440
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->gB()V

    .line 441
    return-void

    .line 410
    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    goto :goto_0

    .line 412
    :cond_2
    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public gv()J
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public gw()J
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public gx()J
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->cf()J

    move-result-wide v0

    return-wide v0
.end method

.method public gy()J
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->cf()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/settings/widget/o;->onFinishInflate()V

    .line 111
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wg:Lcom/android/settings/widget/ChartGridView;

    .line 112
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 113
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 116
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    .line 117
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    .line 118
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    .line 119
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wq:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wq:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wr:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->wr:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->e(J)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->e(J)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wg:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wh:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wi:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wk:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wl:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Ja:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wm:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->wn:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Jb:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    :goto_0
    return v0

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 360
    goto :goto_0

    .line 363
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 364
    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
