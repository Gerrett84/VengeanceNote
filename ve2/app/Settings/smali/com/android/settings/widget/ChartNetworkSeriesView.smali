.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private Fu:Lcom/android/settings/widget/b;

.field private Fv:Lcom/android/settings/widget/b;

.field private JG:Landroid/graphics/Paint;

.field private JH:Landroid/graphics/Paint;

.field private JI:Landroid/graphics/Paint;

.field private JJ:Landroid/graphics/Paint;

.field private JK:Landroid/net/NetworkStatsHistory;

.field private JL:Landroid/graphics/Path;

.field private JM:Landroid/graphics/Path;

.field private JN:Landroid/graphics/Path;

.field private JO:J

.field private JP:J

.field private JQ:J

.field private JR:J

.field private JS:J

.field private JT:Z

.field private JU:Z

.field private JV:J

.field private eX:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, -0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JS:J

    .line 70
    iput-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JT:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JU:Z

    .line 87
    sget-object v0, Lcom/android/settings/aE;->oa:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 92
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 95
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->d(III)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    .line 102
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JN:Landroid/graphics/Path;

    .line 103
    return-void
.end method

.method private eM()V
    .locals 25

    .prologue
    .line 169
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->eX:J

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JN:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 173
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JT:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v20

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v16

    .line 184
    const/4 v8, 0x0

    .line 185
    move/from16 v0, v16

    int-to-float v5, v0

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    invoke-interface {v3, v8}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v6

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    const-wide/16 v11, 0x0

    .line 197
    const/4 v10, 0x0

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JO:J

    invoke-virtual {v3, v13, v14}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JP:J

    invoke-virtual {v4, v13, v14}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v17

    move v14, v3

    move v3, v8

    .line 201
    :goto_1
    move/from16 v0, v17

    if-gt v14, v0, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v14, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v15

    .line 204
    iget-wide v0, v15, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v18, v0

    .line 205
    iget-wide v8, v15, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v8, v8, v18

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    move-wide/from16 v0, v18

    invoke-interface {v4, v0, v1}, Lcom/android/settings/widget/b;->a(J)F

    move-result v21

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    invoke-interface {v4, v8, v9}, Lcom/android/settings/widget/b;->a(J)F

    move-result v13

    .line 211
    const/4 v4, 0x0

    cmpg-float v4, v13, v4

    if-gez v4, :cond_2

    move v8, v3

    move-wide v3, v11

    .line 201
    :goto_2
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move-object v10, v15

    move-wide v11, v3

    move v3, v8

    goto :goto_1

    .line 214
    :cond_2
    iget-wide v3, v15, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v15, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    add-long v3, v3, v22

    add-long/2addr v3, v11

    .line 217
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fv:Lcom/android/settings/widget/b;

    invoke-interface {v10, v3, v4}, Lcom/android/settings/widget/b;->a(J)F

    move-result v10

    .line 219
    cmp-long v6, v6, v18

    if-eqz v6, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    move/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    move/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    invoke-virtual {v5, v13, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    invoke-virtual {v5, v13, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide v6, v8

    move v5, v10

    move v8, v13

    .line 231
    goto :goto_2

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JS:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JS:J

    invoke-interface {v3, v8, v9}, Lcom/android/settings/widget/b;->a(J)F

    move-result v3

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    move v13, v3

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v8, v0

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->eX:J

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JN:Landroid/graphics/Path;

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v21

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    const-wide/32 v4, 0x48190800

    sub-long v4, v6, v4

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 263
    move-object/from16 v0, v17

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v14, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v14

    mul-long v3, v3, v21

    move-object/from16 v0, v17

    iget-wide v14, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    div-long v23, v3, v14

    .line 266
    const-wide/16 v3, 0x0

    move-wide/from16 v18, v11

    .line 267
    :goto_3
    move/from16 v0, v20

    int-to-float v5, v0

    cmpg-float v5, v13, v5

    if-gez v5, :cond_6

    .line 268
    add-long v3, v3, v21

    .line 271
    const-wide/32 v10, 0x240c8400

    sub-long v10, v6, v10

    const-wide/32 v12, 0x240c8400

    rem-long v12, v3, v12

    add-long v13, v10, v12

    .line 272
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    const-wide/32 v11, 0x5265c00

    sub-long v11, v13, v11

    move-wide v15, v8

    invoke-virtual/range {v10 .. v17}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 273
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    mul-long v10, v10, v21

    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    div-long/2addr v10, v12

    .line 276
    const-wide/16 v12, 0x7

    mul-long v12, v12, v23

    const-wide/16 v14, 0x3

    mul-long/2addr v10, v14

    add-long/2addr v10, v12

    const-wide/16 v12, 0xa

    div-long/2addr v10, v12

    add-long v11, v18, v10

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    add-long v13, v6, v3

    invoke-interface {v5, v13, v14}, Lcom/android/settings/widget/b;->a(J)F

    move-result v13

    .line 279
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fv:Lcom/android/settings/widget/b;

    invoke-interface {v5, v11, v12}, Lcom/android/settings/widget/b;->a(J)F

    move-result v5

    .line 281
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JN:Landroid/graphics/Path;

    invoke-virtual {v10, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v18, v11

    .line 282
    goto :goto_3

    .line 284
    :cond_6
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->JV:J

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->jl()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 139
    return-void
.end method

.method a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    .line 107
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fv:Lcom/android/settings/widget/b;

    .line 108
    return-void
.end method

.method public ai(Z)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JU:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 296
    return-void
.end method

.method public d(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JH:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JH:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JH:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JH:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 133
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public e(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JO:J

    .line 143
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JP:J

    .line 144
    return-void
.end method

.method public f(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JQ:J

    .line 152
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JR:J

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 154
    return-void
.end method

.method public jl()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JT:Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->eX:J

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 160
    return-void
.end method

.method public jm()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JV:J

    return-wide v0
.end method

.method public jn()J
    .locals 6

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JU:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JV:J

    .line 304
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JK:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JO:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JP:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 307
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v0, v1, v3

    .line 309
    :cond_0
    return-wide v0

    .line 303
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->eX:J

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JT:Z

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->eM()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JQ:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/b;->a(J)F

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Fu:Lcom/android/settings/widget/b;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JR:J

    invoke-interface {v1, v2, v3}, Lcom/android/settings/widget/b;->a(J)F

    move-result v1

    .line 324
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JU:Z

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 327
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JN:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JJ:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v5, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 333
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 338
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JI:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 339
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v5, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 343
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JM:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JH:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JL:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JG:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 345
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 347
    return-void
.end method

.method public t(J)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->JS:J

    .line 291
    return-void
.end method
