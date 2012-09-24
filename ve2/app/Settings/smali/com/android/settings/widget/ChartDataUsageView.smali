.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/o;
.source "ChartDataUsageView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private tA:Lcom/android/settings/widget/h;

.field private tB:Lcom/android/settings/widget/h;

.field private tq:Lcom/android/settings/widget/ChartGridView;

.field private tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private tt:Landroid/net/NetworkStatsHistory;

.field private tu:Lcom/android/settings/widget/ChartSweepView;

.field private tv:Lcom/android/settings/widget/ChartSweepView;

.field private tw:Lcom/android/settings/widget/ChartSweepView;

.field private tx:Lcom/android/settings/widget/ChartSweepView;

.field private ty:J

.field private tz:Lcom/android/settings/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    new-instance v0, Lcom/android/settings/widget/t;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/t;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tA:Lcom/android/settings/widget/h;

    .line 325
    new-instance v0, Lcom/android/settings/widget/r;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/r;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tB:Lcom/android/settings/widget/h;

    .line 90
    new-instance v0, Lcom/android/settings/widget/c;

    invoke-direct {v0}, Lcom/android/settings/widget/c;-><init>()V

    new-instance v1, Lcom/android/settings/widget/n;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-direct {v2}, Lcom/android/settings/widget/f;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/n;-><init>(Lcom/android/settings/widget/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 92
    new-instance v0, Lcom/android/settings/widget/s;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/s;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eO()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 651
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 652
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 653
    invoke-static {p0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 654
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 655
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 657
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eV()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->g(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method private b(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    .line 315
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tz:Lcom/android/settings/widget/d;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method private eO()V
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 279
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jm()J

    move-result-wide v4

    .line 283
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 289
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 293
    :goto_1
    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->ai(Z)V

    .line 295
    return-void

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 293
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

.method private eT()J
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private eU()J
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private eV()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 442
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 443
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 446
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->f(JJ)V

    goto :goto_0
.end method

.method private f(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v2, 0x0

    .line 219
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ty:J

    .line 222
    if-eqz p1, :cond_6

    .line 223
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->ca()I

    move-result v4

    .line 224
    if-lez v4, :cond_5

    .line 226
    const-wide/16 v4, 0xb

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    .line 236
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 237
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jn()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jn()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 238
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    .line 239
    const-wide v6, 0x80000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 240
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 243
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->ty:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 244
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ty:J

    .line 246
    iget-object v4, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/android/settings/widget/b;->a(JJ)Z

    move-result v4

    .line 247
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 248
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 250
    if-eqz v4, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jl()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jl()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tq:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 258
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->bZ()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_4

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 272
    :cond_4
    return-void

    .line 227
    :cond_5
    if-gez v4, :cond_0

    .line 229
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
    .line 322
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 323
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 163
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eO()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eV()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 168
    return-void
.end method

.method public a(Lcom/android/settings/widget/d;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tz:Lcom/android/settings/widget/d;

    .line 159
    return-void
.end method

.method public b(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tt:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->t(J)V

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eO()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eV()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 180
    return-void

    .line 172
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

    .line 183
    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 212
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 201
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 209
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    goto :goto_1

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    goto :goto_2
.end method

.method public d(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/b;->a(JJ)Z

    move-result v2

    .line 401
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tq:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->e(JJ)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eT()J

    move-result-wide v0

    .line 406
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eU()J

    move-result-wide v3

    .line 408
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    .line 410
    :goto_0
    const-wide/high16 v0, -0x8000

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    move-wide v0, p3

    .line 418
    :goto_1
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 419
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartSweepView;->b(JJ)V

    .line 423
    add-long v3, p3, p1

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 425
    const-wide/32 v3, 0x240c8400

    sub-long v3, v0, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 427
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 428
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 431
    if-eqz v2, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jl()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jl()V

    .line 436
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->f(Lcom/android/settings/widget/ChartSweepView;)V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eO()V

    .line 438
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->eV()V

    .line 439
    return-void

    .line 408
    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    goto :goto_0

    .line 410
    :cond_2
    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public eP()J
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public eQ()J
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public eR()J
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->bX()J

    move-result-wide v0

    return-wide v0
.end method

.method public eS()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->bX()J

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

    .line 107
    invoke-super {p0}, Lcom/android/settings/widget/o;->onFinishInflate()V

    .line 109
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tq:Lcom/android/settings/widget/ChartGridView;

    .line 110
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 111
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 114
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    .line 115
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    .line 116
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    .line 117
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tA:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tA:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tB:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->tB:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->e(J)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->e(J)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tq:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tr:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->ts:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    iget-object v2, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tu:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tv:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tw:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->tx:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/b;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 358
    goto :goto_0

    .line 361
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 362
    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
