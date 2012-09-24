.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private IX:Lcom/android/settings/widget/b;

.field private IY:Lcom/android/settings/widget/b;

.field private Mf:Landroid/graphics/drawable/Drawable;

.field private Mg:Landroid/graphics/drawable/Drawable;

.field private Mh:Landroid/graphics/drawable/Drawable;

.field private Mi:Landroid/text/Layout;

.field private Mj:Landroid/text/Layout;

.field private jY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 68
    sget-object v0, Lcom/android/settings/aT;->pJ:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mf:Landroid/graphics/drawable/Drawable;

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mg:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mh:Landroid/graphics/drawable/Drawable;

    .line 74
    const/high16 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartGridView;->jY:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private d(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 142
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 143
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 144
    iget v1, p0, Lcom/android/settings/widget/ChartGridView;->jY:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    const/4 v1, 0x2

    const/high16 v3, 0x4120

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 148
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
    .line 80
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->IX:Lcom/android/settings/widget/b;

    .line 81
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->IY:Lcom/android/settings/widget/b;

    .line 82
    return-void
.end method

.method e(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-static {v0, p1, p2, p1, p2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartGridView;->d(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mi:Landroid/text/Layout;

    .line 87
    invoke-static {v0, p3, p4, p3, p4}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartGridView;->d(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Mj:Landroid/text/Layout;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 89
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v3

    .line 96
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->Mg:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 99
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->IY:Lcom/android/settings/widget/b;

    invoke-interface {v1}, Lcom/android/settings/widget/b;->aa()[F

    move-result-object v6

    .line 100
    array-length v7, v6

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aget v8, v6, v1

    .line 101
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 102
    float-to-int v8, v8

    invoke-virtual {v4, v0, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->Mf:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 108
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 110
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->IX:Lcom/android/settings/widget/b;

    invoke-interface {v1}, Lcom/android/settings/widget/b;->aa()[F

    move-result-object v6

    .line 111
    array-length v7, v6

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_1

    aget v8, v6, v1

    .line 112
    int-to-float v9, v5

    add-float/2addr v9, v8

    int-to-float v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 113
    float-to-int v8, v8

    invoke-virtual {v4, v8, v0, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mi:Landroid/text/Layout;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartGridView;->Mi:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mi:Landroid/text/Layout;

    .line 123
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    const/4 v4, 0x0

    add-int v5, v3, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/ChartGridView;->Mj:Landroid/text/Layout;

    .line 131
    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    :cond_4
    return-void
.end method
