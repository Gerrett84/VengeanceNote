.class public Lcom/android/settings/widget/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private vK:Ljava/util/ArrayList;

.field private vL:I

.field private vM:Landroid/graphics/Paint;

.field private vN:Landroid/graphics/Path;

.field private vO:Landroid/graphics/Path;

.field private vP:Landroid/graphics/Path;

.field private vQ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->vN:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->vO:Landroid/graphics/Path;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->vP:Landroid/graphics/Path;

    .line 88
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    const/high16 v0, 0x41a0

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/PieChartView;->vQ:I

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PieChartView;->setWillNotDraw(Z)V

    .line 96
    return-void
.end method

.method private static a(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 101
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    return-object v0
.end method

.method static synthetic b(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/settings/widget/PieChartView;->a(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/widget/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/widget/k;-><init>(Lcom/android/settings/widget/PieChartView;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public ai(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput p1, p0, Lcom/android/settings/widget/PieChartView;->vL:I

    .line 115
    return-void
.end method

.method public fU()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method public fV()V
    .locals 17

    .prologue
    .line 140
    const-wide/16 v1, 0x0

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/k;

    .line 142
    iget-object v5, v1, Lcom/android/settings/widget/k;->Cy:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v5, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-object v5, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 145
    iget-wide v5, v1, Lcom/android/settings/widget/k;->value:J

    add-long v1, v2, v5

    move-wide v2, v1

    goto :goto_0

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vN:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vO:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vP:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 153
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    .line 217
    :goto_1
    return-void

    .line 158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v1

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v4

    .line 161
    new-instance v9, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v1, v1

    int-to-float v4, v4

    invoke-direct {v9, v5, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 163
    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 164
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/widget/PieChartView;->vQ:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vN:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vO:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/PieChartView;->vP:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v9, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 170
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/widget/PieChartView;->vL:I

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v1

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/k;

    .line 172
    iget-wide v5, v1, Lcom/android/settings/widget/k;->value:J

    const-wide/16 v7, 0x168

    mul-long/2addr v5, v7

    div-long/2addr v5, v2

    long-to-int v12, v5

    .line 173
    add-int v13, v4, v12

    .line 175
    rem-int/lit16 v5, v4, 0x168

    int-to-float v5, v5

    .line 176
    rem-int/lit16 v6, v13, 0x168

    int-to-float v6, v6

    .line 177
    const/high16 v7, 0x42b4

    cmpl-float v7, v5, v7

    if-lez v7, :cond_6

    const/high16 v7, 0x4387

    cmpg-float v5, v5, v7

    if-gez v5, :cond_6

    const/4 v5, 0x1

    move v8, v5

    .line 178
    :goto_3
    const/high16 v5, 0x42b4

    cmpl-float v5, v6, v5

    if-lez v5, :cond_7

    const/high16 v5, 0x4387

    cmpg-float v5, v6, v5

    if-gez v5, :cond_7

    const/4 v5, 0x1

    .line 181
    :goto_4
    iget-object v6, v1, Lcom/android/settings/widget/k;->Cy:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v6, v7, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    iget-object v6, v1, Lcom/android/settings/widget/k;->Cy:Landroid/graphics/Path;

    int-to-float v7, v4

    int-to-float v14, v12

    invoke-virtual {v6, v9, v7, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 183
    iget-object v6, v1, Lcom/android/settings/widget/k;->Cy:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v6, v7, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    if-nez v8, :cond_2

    if-eqz v5, :cond_3

    .line 188
    :cond_2
    if-eqz v8, :cond_8

    int-to-float v6, v4

    move v7, v6

    .line 189
    :goto_5
    if-eqz v5, :cond_9

    int-to-float v6, v13

    .line 190
    :goto_6
    sub-float v13, v6, v7

    .line 193
    iget-object v14, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    iget-object v14, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v7, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 195
    iget-object v14, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/widget/PieChartView;->vQ:I

    neg-int v15, v15

    int-to-float v15, v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 196
    iget-object v14, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    invoke-virtual {v14, v10, v7, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 197
    iget-object v7, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/widget/PieChartView;->vQ:I

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 198
    iget-object v7, v1, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    neg-float v13, v13

    invoke-virtual {v7, v9, v6, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 202
    :cond_3
    iget-object v6, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    iget-object v6, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    int-to-float v7, v4

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v7, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 204
    if-eqz v8, :cond_4

    .line 205
    iget-object v6, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/widget/PieChartView;->vQ:I

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 207
    :cond_4
    iget-object v6, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    iget-object v6, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    add-int v7, v4, v12

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v9, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 209
    if-eqz v5, :cond_5

    .line 210
    iget-object v1, v1, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/widget/PieChartView;->vQ:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 213
    :cond_5
    add-int v1, v4, v12

    move v4, v1

    .line 214
    goto/16 :goto_2

    .line 177
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_3

    .line 178
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 188
    :cond_8
    const/high16 v6, 0x43e1

    move v7, v6

    goto/16 :goto_5

    .line 189
    :cond_9
    const/high16 v6, 0x4387

    goto/16 :goto_6

    .line 216
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/k;

    .line 225
    iget-object v2, v0, Lcom/android/settings/widget/k;->Cz:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/android/settings/widget/k;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vO:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/k;

    .line 230
    iget-object v2, v0, Lcom/android/settings/widget/k;->Cy:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/k;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 231
    iget-object v0, v0, Lcom/android/settings/widget/k;->CA:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->vP:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/PieChartView;->vM:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 130
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 131
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const v3, 0x3f2a3d71

    const v4, 0x3f733333

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 132
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3de0

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->fV()V

    .line 135
    return-void
.end method
