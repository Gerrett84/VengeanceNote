.class public Lcom/android/internal/widget/MiuiTabLayout;
.super Landroid/widget/LinearLayout;
.source "MiuiTabLayout.java"


# instance fields
.field private mTabBackgroundId:I

.field private mTabBackgroundIdLeft:I

.field private mTabBackgroundIdRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100d4

    aput v2, v1, v3

    const v2, 0x10102f3

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    const v2, 0x60201c0

    invoke-static {p1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 30
    const v1, 0x60201c1

    iput v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    .line 31
    const v1, 0x60201c2

    iput v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    .line 32
    const v1, 0x60201c3

    iput v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    .line 33
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/MiuiTabLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiTabLayout;->getChildCount()I

    move-result v0

    .line 45
    .local v0, count:I
    if-le v0, v3, :cond_0

    .line 46
    if-nez p2, :cond_3

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-le v0, v4, :cond_2

    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    goto :goto_1

    .line 50
    :cond_3
    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_0

    .line 51
    :cond_4
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-le v0, v4, :cond_5

    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    goto :goto_2
.end method

.method public removeViewAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiTabLayout;->getChildCount()I

    move-result v0

    .line 62
    .local v0, count:I
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 67
    :cond_2
    if-nez p1, :cond_3

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 70
    :cond_3
    if-ne p1, v0, :cond_0

    .line 71
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
