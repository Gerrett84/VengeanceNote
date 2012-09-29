.class public Lcom/android/settings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# instance fields
.field private jR:Landroid/graphics/drawable/Drawable;

.field private jS:Landroid/graphics/Rect;

.field private jT:Landroid/graphics/Rect;

.field private jU:Landroid/graphics/Point;

.field private jV:Landroid/graphics/Rect;

.field private jW:F

.field private jX:I

.field private jY:I

.field private jZ:F

.field private ka:I

.field private kb:I

.field private kc:Landroid/text/SpannableStringBuilder;

.field private kd:Landroid/text/DynamicLayout;

.field private ke:Lcom/android/settings/widget/b;

.field private kf:J

.field private kg:J

.field private kh:J

.field private ki:J

.field private kj:Lcom/android/settings/widget/ChartSweepView;

.field private kk:Lcom/android/settings/widget/ChartSweepView;

.field private kl:F

.field private km:Landroid/graphics/Paint;

.field private kn:J

.field private ko:Lcom/android/settings/widget/h;

.field private kp:F

.field private kq:Landroid/view/MotionEvent;

.field private kr:[Lcom/android/settings/widget/ChartSweepView;

.field private ks:Landroid/view/View$OnClickListener;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->km:Landroid/graphics/Paint;

    .line 89
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    .line 97
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kn:J

    .line 109
    new-array v0, v3, [Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kr:[Lcom/android/settings/widget/ChartSweepView;

    .line 149
    new-instance v0, Lcom/android/settings/widget/m;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/m;-><init>(Lcom/android/settings/widget/ChartSweepView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ks:Landroid/view/View$OnClickListener;

    .line 122
    sget-object v0, Lcom/android/settings/aT;->pP:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 126
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->u(I)V

    .line 127
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->c(F)V

    .line 129
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->v(I)V

    .line 130
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->w(I)V

    .line 131
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->x(I)V

    .line 134
    const v1, 0x7f020034

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->km:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->km:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->km:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ks:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 147
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 3
    .parameter

    .prologue
    .line 407
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->ca()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->ca()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2
    .parameter

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8
    .parameter

    .prologue
    .line 584
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->kh:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->ki:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 585
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->ck()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cl()J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings/widget/ChartSweepView;->jW:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v0

    .line 588
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 591
    :cond_0
    return-object v7
.end method

.method private a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x7fffffffffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 596
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    instance-of v2, v2, Lcom/android/settings/widget/n;

    if-eqz v2, :cond_6

    .line 602
    :goto_0
    cmp-long v2, p4, v3

    if-eqz v2, :cond_3

    cmp-long v2, p4, v5

    if-eqz v2, :cond_3

    move v2, v1

    .line 603
    :goto_1
    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    cmp-long v3, p2, v5

    if-eqz v3, :cond_0

    move v0, v1

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-interface {v3, p4, p5}, Lcom/android/settings/widget/b;->a(J)F

    move-result v3

    add-float/2addr v3, p6

    .line 606
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-interface {v4, p2, p3}, Lcom/android/settings/widget/b;->a(J)F

    move-result v4

    sub-float/2addr v4, p6

    .line 608
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 609
    iget v6, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-ne v6, v1, :cond_4

    .line 610
    if-eqz v0, :cond_1

    iget v0, v5, Landroid/graphics/Rect;->top:I

    float-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 611
    :cond_1
    if-eqz v2, :cond_2

    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 616
    :cond_2
    :goto_2
    return-object v5

    :cond_3
    move v2, v0

    .line 602
    goto :goto_1

    .line 613
    :cond_4
    if-eqz v0, :cond_5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    float-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 614
    :cond_5
    if-eqz v2, :cond_2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_6
    move-wide v7, p4

    move-wide p4, p2

    move-wide p2, v7

    goto :goto_0
.end method

.method public static b(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2
    .parameter

    .prologue
    .line 738
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static c(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 2
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private ca()F
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 180
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 183
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 187
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private cb()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ko:Lcom/android/settings/widget/h;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ko:Lcom/android/settings/widget/h;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/h;->e(Lcom/android/settings/widget/ChartSweepView;)V

    .line 205
    :cond_0
    return-void
.end method

.method private cc()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 255
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->ka:I

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->ka:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 258
    new-instance v2, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 261
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->kb:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 262
    const/high16 v1, 0x4080

    iget v3, v2, Landroid/text/TextPaint;->density:F

    mul-float/2addr v1, v3

    const/high16 v3, -0x100

    invoke-virtual {v2, v1, v6, v6, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 264
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    .line 265
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    .line 267
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cd()V

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 276
    return-void

    .line 270
    :cond_0
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    .line 271
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    goto :goto_0
.end method

.method private cd()V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    iget-wide v3, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/b;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kg:J

    .line 281
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kc:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->ce()V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kg:J

    goto :goto_0
.end method

.method private cj()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private ck()J
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    .line 569
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private cl()J
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    .line 574
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cb()V

    return-void
.end method

.method private u(Z)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ko:Lcom/android/settings/widget/h;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ko:Lcom/android/settings/widget/h;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/h;->a(Lcom/android/settings/widget/ChartSweepView;Z)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 226
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 233
    return-void

    :cond_2
    move v0, v1

    .line 225
    goto :goto_0

    .line 229
    :cond_3
    iput-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    .line 393
    iput-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    .line 394
    return-void
.end method

.method a(Lcom/android/settings/widget/b;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/b;

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    .line 157
    return-void
.end method

.method public a(Lcom/android/settings/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->ko:Lcom/android/settings/widget/h;

    .line 193
    return-void
.end method

.method public varargs a([Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->kr:[Lcom/android/settings/widget/ChartSweepView;

    .line 161
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 402
    invoke-direct {p2, p1}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;)F

    move-result v1

    .line 403
    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    return-void
.end method

.method public b(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->kh:J

    .line 379
    iput-wide p3, p0, Lcom/android/settings/widget/ChartSweepView;->ki:J

    .line 380
    return-void
.end method

.method public bY()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    return v0
.end method

.method public bZ()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c(F)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->jW:F

    .line 384
    return-void
.end method

.method public ce()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v0, 0x0

    .line 294
    .line 295
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_3

    .line 297
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    .line 298
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->b(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 299
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 300
    div-float v0, v1, v3

    .line 315
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->jY:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    .line 318
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->kl:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 319
    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->kl:F

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 321
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kj:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->ce()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->ce()V

    .line 324
    :cond_2
    return-void

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_4

    .line 303
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    .line 304
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->kk:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->b(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 305
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 306
    neg-float v0, v1

    div-float/2addr v0, v3

    goto :goto_0

    .line 309
    :cond_4
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    goto :goto_0
.end method

.method public cf()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kg:J

    return-wide v0
.end method

.method public cg()F
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/b;->a(J)F

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ch()V
    .locals 3

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cj()Landroid/graphics/Rect;

    move-result-object v0

    .line 537
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 539
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-interface {v1, v0}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 542
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-interface {v1, v0}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    goto :goto_0
.end method

.method public ci()I
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/b;->b(J)I

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 622
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->kn:J

    .line 173
    return-void
.end method

.method public f(J)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    .line 353
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cd()V

    .line 354
    return-void
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    return-wide v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 332
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v1

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 706
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    const/high16 v4, 0x4480

    sub-float/2addr v3, v4

    .line 707
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->kl:F

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 709
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v3, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 712
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->jZ:F

    float-to-int v0, v0

    .line 717
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 718
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 725
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 731
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->ce()V

    .line 693
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 633
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    .line 635
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 636
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 637
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->ca()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 638
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 646
    :goto_0
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 649
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 650
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 651
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 652
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 662
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v0

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 667
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-nez v2, :cond_2

    .line 668
    mul-int/lit8 v2, v0, 0x3

    .line 669
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 670
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 672
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v0, v0, 0x2

    .line 673
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 674
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 685
    :goto_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 687
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 642
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jU:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 643
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 656
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 657
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 658
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 659
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 676
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    .line 677
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x2

    .line 681
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jT:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 682
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 525
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 525
    goto :goto_0

    .line 425
    :pswitch_0
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-ne v1, v2, :cond_5

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    move v1, v2

    .line 427
    :goto_1
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v4, v2

    .line 435
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 439
    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->kr:[Lcom/android/settings/widget/ChartSweepView;

    array-length v8, v7

    move v5, v3

    :goto_3
    if-ge v5, v8, :cond_a

    aget-object v9, v7, v5

    .line 440
    invoke-virtual {p0, v6, v9}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v3

    .line 441
    goto :goto_0

    :cond_2
    move v1, v3

    .line 426
    goto :goto_1

    :cond_3
    move v4, v3

    .line 427
    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_2

    .line 430
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jS:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    move v1, v2

    .line 431
    :goto_4
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->kd:Landroid/text/DynamicLayout;

    invoke-virtual {v5}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_6
    move v1, v3

    .line 430
    goto :goto_4

    :cond_7
    move v4, v3

    .line 431
    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_2

    .line 439
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 445
    :cond_a
    if-eqz v1, :cond_c

    .line 446
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-ne v1, v2, :cond_b

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->kp:F

    .line 451
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->kq:Landroid/view/MotionEvent;

    .line 452
    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_0

    .line 449
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->kp:F

    goto :goto_5

    .line 460
    :cond_c
    if-eqz v4, :cond_d

    .line 461
    iput v10, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 464
    :cond_d
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    move v2, v3

    .line 465
    goto/16 :goto_0

    .line 469
    :pswitch_1
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-eq v0, v10, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 476
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cj()Landroid/graphics/Rect;

    move-result-object v0

    .line 477
    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 481
    iget v4, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    if-ne v4, v2, :cond_e

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 483
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->kp:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->kq:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 485
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 487
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 489
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v0

    .line 502
    :goto_6
    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->kn:J

    rem-long v4, v0, v4

    sub-long/2addr v0, v4

    .line 503
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(J)V

    .line 505
    invoke-direct {p0, v3}, Lcom/android/settings/widget/ChartSweepView;->u(Z)V

    goto/16 :goto_0

    .line 491
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->jV:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 492
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->kp:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->kq:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 494
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v5, v6, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 496
    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 498
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->ke:Lcom/android/settings/widget/b;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-interface {v4, v0}, Lcom/android/settings/widget/b;->b(F)J

    move-result-wide v0

    goto :goto_6

    .line 509
    :pswitch_2
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v10, :cond_10

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->performClick()Z

    .line 521
    :cond_f
    :goto_7
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    goto/16 :goto_0

    .line 511
    :cond_10
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    if-ne v0, v2, :cond_f

    .line 512
    iput v4, p0, Lcom/android/settings/widget/ChartSweepView;->kp:F

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->kq:Landroid/view/MotionEvent;

    .line 514
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kg:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->kf:J

    .line 515
    invoke-direct {p0, v2}, Lcom/android/settings/widget/ChartSweepView;->u(Z)V

    .line 516
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 517
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    goto :goto_7

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 212
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 340
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method public u(I)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->jX:I

    .line 237
    return-void
.end method

.method public v(I)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->jY:I

    .line 241
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cc()V

    .line 242
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->jR:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w(I)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->ka:I

    .line 246
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cc()V

    .line 247
    return-void
.end method

.method public x(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->kb:I

    .line 251
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->cc()V

    .line 252
    return-void
.end method
