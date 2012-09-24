.class public Lcom/android/settings/widget/o;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field Fu:Lcom/android/settings/widget/b;

.field Fv:Lcom/android/settings/widget/b;

.field private Fw:I

.field private Fx:F

.field private Fy:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v1, p0, Lcom/android/settings/widget/o;->Fw:I

    .line 48
    iput v4, p0, Lcom/android/settings/widget/o;->Fx:F

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    .line 63
    sget-object v0, Lcom/android/settings/aE;->oc:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/o;->a(IF)V

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/o;->setClipToPadding(Z)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/o;->setClipChildren(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/widget/o;->Fw:I

    .line 80
    iput p2, p0, Lcom/android/settings/widget/o;->Fx:F

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/widget/o;->requestLayout()V

    .line 82
    return-void
.end method

.method protected a(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x33

    .line 138
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->bR()Landroid/graphics/Rect;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->bQ()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->bY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 143
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 144
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 145
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v4, v0, v1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->bY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 151
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 152
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 153
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v4, v0, v1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method a(Lcom/android/settings/widget/b;Lcom/android/settings/widget/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    .line 75
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/e;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    .line 76
    return-void
.end method

.method protected h(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 4
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/o;->a(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 134
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/settings/widget/ChartSweepView;->layout(IIII)V

    .line 135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getPaddingTop()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 101
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fu:Lcom/android/settings/widget/b;

    int-to-float v1, v3

    invoke-interface {v0, v1}, Lcom/android/settings/widget/b;->a(F)Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/o;->Fv:Lcom/android/settings/widget/b;

    int-to-float v1, v4

    invoke-interface {v0, v1}, Lcom/android/settings/widget/b;->a(F)Z

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 108
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 110
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/o;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    iget-object v7, p0, Lcom/android/settings/widget/o;->Fy:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    instance-of v7, v1, Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-nez v7, :cond_0

    instance-of v7, v1, Lcom/android/settings/widget/ChartGridView;

    if-eqz v7, :cond_2

    .line 119
    :cond_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0, v3, v4, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 120
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 110
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 122
    :cond_2
    instance-of v0, v1, Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 123
    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/settings/widget/o;->a(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 127
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/widget/o;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/o;->Fw:I

    sub-int/2addr v0, v1

    .line 89
    iget v1, p0, Lcom/android/settings/widget/o;->Fw:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 90
    iget v1, p0, Lcom/android/settings/widget/o;->Fw:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/o;->Fx:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 91
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    :cond_0
    return-void
.end method
