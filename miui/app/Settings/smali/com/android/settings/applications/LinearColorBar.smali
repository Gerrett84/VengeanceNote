.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field private eN:F

.field private eO:F

.field private eP:F

.field private eQ:Z

.field final eR:Landroid/graphics/Rect;

.field eS:I

.field eT:I

.field eU:I

.field final eV:Landroid/graphics/Path;

.field final eW:Landroid/graphics/Path;

.field final eX:Landroid/graphics/Paint;

.field final eY:Landroid/graphics/Paint;

.field final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setWillNotDraw(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->eU:I

    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->eU:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method private aq()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 70
    if-gez v0, :cond_1

    const/4 v0, 0x0

    move v8, v0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->eQ:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x888888

    const v6, -0x777778

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    :goto_1
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    return-void

    .line 77
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x99cc

    const v6, -0xff6634

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_1
    move v8, v0

    goto :goto_0
.end method


# virtual methods
.method public a(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->eN:F

    .line 55
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->eO:F

    .line 56
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->eP:F

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 58
    return-void
.end method

.method public k(Z)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->eQ:Z

    if-eq v0, p1, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->eQ:Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->aq()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter

    .prologue
    .line 92
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->getWidth()I

    move-result v13

    .line 96
    const/4 v12, 0x0

    .line 98
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->eN:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v11, v12, v1

    .line 99
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->eO:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v9, v11, v1

    .line 100
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->eP:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v9

    .line 103
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/LinearColorBar;->eQ:Z

    if-eqz v2, :cond_5

    move v8, v1

    move v10, v9

    .line 111
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->eS:I

    if-ne v1, v10, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->eT:I

    if-eq v1, v8, :cond_2

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 114
    if-ge v10, v8, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    int-to-float v2, v10

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    int-to-float v5, v14

    const/high16 v6, -0x4000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v14

    int-to-float v4, v8

    const/4 v5, 0x0

    int-to-float v6, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->eU:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    add-float v15, v1, v2

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    const/high16 v2, -0x4000

    add-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v10

    add-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v10

    add-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    add-int/lit8 v2, v13, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v15

    int-to-float v3, v14

    int-to-float v4, v8

    sub-float/2addr v4, v15

    const/4 v5, 0x0

    int-to-float v6, v8

    sub-float/2addr v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 137
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings/applications/LinearColorBar;->eS:I

    .line 138
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->eT:I

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eW:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->eY:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eV:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->eX:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 146
    :cond_3
    if-ge v12, v11, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v11, v1, Landroid/graphics/Rect;->right:I

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff6634

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    sub-int v1, v11, v12

    sub-int v2, v13, v1

    move v1, v11

    .line 157
    :goto_1
    if-ge v1, v9, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v4, -0xff6634

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    sub-int v1, v9, v1

    sub-int v1, v2, v1

    .line 167
    :goto_2
    add-int/2addr v1, v9

    .line 168
    if-ge v9, v1, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->eR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 174
    :cond_4
    return-void

    :cond_5
    move v8, v9

    move v10, v11

    .line 108
    goto/16 :goto_0

    :cond_6
    move v9, v1

    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v12

    move v2, v13

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->aq()V

    .line 88
    return-void
.end method
