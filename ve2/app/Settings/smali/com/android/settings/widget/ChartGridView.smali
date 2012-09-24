.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private Fu:Lcom/android/settings/widget/b;

.field private Fv:Lcom/android/settings/widget/b;

.field private Ii:Landroid/graphics/drawable/Drawable;

.field private Ij:Landroid/graphics/drawable/Drawable;

.field private Ik:Landroid/graphics/drawable/Drawable;

.field private Il:Landroid/text/Layout;

.field private Im:Landroid/text/Layout;

.field private iK:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 67
    sget-object v0, Lcom/android/settings/aE;->nZ:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ii:Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ij:Landroid/graphics/drawable/Drawable;

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ik:Landroid/graphics/drawable/Drawable;

    .line 73
    const/high16 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartGridView;->iK:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private e(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 141
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 142
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 143
    iget v1, p0, Lcom/android/settings/widget/ChartGridView;->iK:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    const/4 v1, 0x2

    const/high16 v3, 0x4120

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Fu:Lcom/android/settings/widget/b;

    .line 80
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Fv:Lcom/android/settings/widget/b;

    .line 81
    return-void
.end method

.method e(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p1

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartGridView;->e(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Il:Landroid/text/Layout;

    move-wide v1, p3

    move-wide v3, p3

    .line 86
    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartGridView;->e(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Im:Landroid/text/Layout;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 88
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v3

    .line 95
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->Ij:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ij:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 98
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Fv:Lcom/android/settings/widget/b;

    invoke-interface {v1}, Lcom/android/settings/widget/b;->X()[F

    move-result-object v6

    .line 99
    array-length v7, v6

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aget v8, v6, v1

    .line 100
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 101
    float-to-int v8, v8

    invoke-virtual {v4, v0, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->Ii:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ii:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 107
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ii:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 109
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Fu:Lcom/android/settings/widget/b;

    invoke-interface {v1}, Lcom/android/settings/widget/b;->X()[F

    move-result-object v6

    .line 110
    array-length v7, v6

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_1

    aget v8, v6, v1

    .line 111
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 112
    float-to-int v8, v8

    invoke-virtual {v4, v8, v0, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ik:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Ik:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Il:Landroid/text/Layout;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Il:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Il:Landroid/text/Layout;

    .line 122
    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    const/4 v4, 0x0

    add-int v5, v3, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Im:Landroid/text/Layout;

    .line 130
    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    :cond_4
    return-void
.end method
