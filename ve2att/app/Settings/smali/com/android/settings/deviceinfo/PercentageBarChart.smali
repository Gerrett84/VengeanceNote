.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# instance fields
.field private final Bu:Landroid/graphics/Paint;

.field private Bv:I

.field private aN:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bu:Landroid/graphics/Paint;

    .line 39
    iput v1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bv:I

    .line 54
    sget-object v0, Lcom/android/settings/aT;->pO:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bv:I

    .line 56
    const/4 v1, 0x0

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bu:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bu:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    return-void
.end method

.method public static b(FI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;-><init>(FLandroid/graphics/Paint;)V

    return-object v1
.end method


# virtual methods
.method public b(Ljava/util/Collection;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->aN:Ljava/util/Collection;

    .line 125
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v8

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 72
    sub-int v10, v7, v0

    .line 74
    int-to-float v1, v0

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->aN:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->aN:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 79
    iget v2, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->uH:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    move v2, v6

    .line 85
    :goto_1
    add-float v3, v1, v2

    .line 86
    int-to-float v2, v7

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    .line 87
    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v5, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    :goto_2
    return-void

    .line 82
    :cond_0
    iget v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bv:I

    int-to-float v2, v2

    int-to-float v3, v10

    iget v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->uH:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    .line 91
    :cond_1
    int-to-float v2, v8

    int-to-float v4, v9

    iget-object v5, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v3

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bu:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->Bu:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-void
.end method
