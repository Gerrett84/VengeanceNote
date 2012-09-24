.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private IX:Lcom/android/settings/widget/b;

.field private IY:Lcom/android/settings/widget/b;

.field private Oh:Landroid/graphics/Paint;

.field private Oi:Landroid/graphics/Paint;

.field private Oj:Landroid/graphics/Paint;

.field private Ok:Landroid/graphics/Paint;

.field private Ol:Landroid/net/NetworkStatsHistory;

.field private Om:Landroid/graphics/Path;

.field private On:Landroid/graphics/Path;

.field private Oo:Landroid/graphics/Path;

.field private Op:J

.field private Oq:J

.field private Or:J

.field private Os:J

.field private Ot:Z

.field private Ou:Z

.field private Ov:J

.field private fD:J

.field private mEndTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
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

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 72
    iput-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ot:Z

    .line 73
    iput-boolean v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ou:Z

    .line 89
    sget-object v0, Lcom/android/settings/aT;->pL:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 94
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 97
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(III)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    .line 103
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    .line 104
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oo:Landroid/graphics/Path;

    .line 105
    return-void
.end method

.method private fV()V
    .locals 23

    .prologue
    .line 171
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->fD:J

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oo:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 175
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ot:Z

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v13

    .line 186
    const/4 v9, 0x0

    .line 187
    int-to-float v8, v13

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    invoke-interface {v2, v9}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v6

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    const-wide/16 v4, 0x0

    .line 199
    const/4 v3, 0x0

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Op:J

    invoke-virtual {v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v2

    .line 202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oq:J

    invoke-virtual {v10, v11, v12}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v14

    move v11, v2

    move-object/from16 v22, v3

    move-wide v2, v4

    move-wide v4, v6

    move-object/from16 v6, v22

    .line 203
    :goto_1
    if-gt v11, v14, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v7, v11, v6}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 206
    iget-wide v15, v12, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 207
    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v6, v15

    .line 209
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    move-wide v0, v15

    invoke-interface {v10, v0, v1}, Lcom/android/settings/widget/b;->a(J)F

    move-result v17

    .line 210
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    invoke-interface {v10, v6, v7}, Lcom/android/settings/widget/b;->a(J)F

    move-result v10

    .line 213
    const/16 v18, 0x0

    cmpg-float v18, v10, v18

    if-gez v18, :cond_2

    move v6, v8

    move v7, v9

    .line 203
    :goto_2
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v9, v7

    move v8, v6

    move-object v6, v12

    goto :goto_1

    .line 216
    :cond_2
    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    iget-wide v0, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 219
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IY:Lcom/android/settings/widget/b;

    invoke-interface {v9, v2, v3}, Lcom/android/settings/widget/b;->a(J)F

    move-result v9

    .line 221
    cmp-long v4, v4, v15

    if-eqz v4, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v4, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    move/from16 v0, v17

    invoke-virtual {v4, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide v4, v6

    move v6, v9

    move v7, v10

    .line 233
    goto :goto_2

    .line 237
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v4, v5, v6}, Lcom/android/settings/widget/b;->a(J)F

    move-result v9

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    invoke-virtual {v4, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    invoke-virtual {v4, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    int-to-float v5, v13

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->fD:J

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->lM()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 141
    return-void
.end method

.method a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    .line 109
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IY:Lcom/android/settings/widget/b;

    .line 110
    return-void
.end method

.method public ae(Z)V
    .locals 1
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ou:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 300
    return-void
.end method

.method public e(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oi:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oi:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oi:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oi:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 135
    return-void

    .line 134
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
    .line 144
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Op:J

    .line 145
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oq:J

    .line 146
    return-void
.end method

.method public f(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Or:J

    .line 154
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Os:J

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 156
    return-void
.end method

.method public lM()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ot:Z

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->fD:J

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 162
    return-void
.end method

.method public lN()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ov:J

    return-wide v0
.end method

.method public lO()J
    .locals 6

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ou:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ov:J

    .line 308
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ol:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Op:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oq:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 311
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v0, v1, v3

    .line 313
    :cond_0
    return-wide v0

    .line 307
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->fD:J

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ot:Z

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->fV()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Or:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/b;->a(J)F

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->IX:Lcom/android/settings/widget/b;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Os:J

    invoke-interface {v1, v2, v3}, Lcom/android/settings/widget/b;->a(J)F

    move-result v1

    .line 328
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ou:Z

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 331
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oo:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Ok:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 332
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v5, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 337
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 342
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oj:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 343
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v5, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 347
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->On:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oi:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Om:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->Oh:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 349
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 351
    return-void
.end method

.method public y(J)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 295
    return-void
.end method
