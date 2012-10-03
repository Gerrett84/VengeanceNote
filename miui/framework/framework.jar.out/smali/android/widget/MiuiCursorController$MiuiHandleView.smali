.class abstract Landroid/widget/MiuiCursorController$MiuiHandleView;
.super Landroid/view/View;
.source "MiuiCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MiuiHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "MiuiHandleView"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerX:I

.field private mContainerY:I

.field private mCursorController:Landroid/widget/MiuiCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/Editor;

.field private mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mTextView:Landroid/widget/TextView;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mType:I

.field final synthetic this$0:Landroid/widget/MiuiCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/MiuiCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "editor"
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 799
    iput-object p1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->this$0:Landroid/widget/MiuiCursorController;

    .line 800
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 791
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffset:I

    .line 793
    iput-boolean v6, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionHasChanged:Z

    .line 832
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetsTimes:[J

    .line 833
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsets:[I

    .line 834
    iput v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    .line 835
    iput v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mNumberPreviousOffsets:I

    .line 801
    iput-object p2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    .line 802
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    .line 803
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->getSelectHandleWindowStyle()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 804
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 805
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 806
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 807
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 809
    iput-object p3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 810
    iput-object p4, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 812
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->updateDrawable()V

    .line 814
    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 815
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchOffsetY:F

    .line 816
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIdealVerticalOffset:F

    .line 817
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 843
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    .line 844
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 845
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 846
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mNumberPreviousOffsets:I

    .line 847
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 851
    .local v3, now:J
    const/4 v0, 0x0

    .line 852
    .local v0, i:I
    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    .line 853
    .local v2, index:I
    iget v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 854
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 855
    add-int/lit8 v0, v0, 0x1

    .line 856
    iget v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 859
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 861
    iget-object v5, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 863
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 838
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mNumberPreviousOffsets:I

    .line 839
    invoke-direct {p0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->addPositionToTouchUpFilter(I)V

    .line 840
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    .line 897
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 898
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onDetached()V

    .line 899
    return-void
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 871
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 872
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerY:I

    aput v1, p1, v0

    .line 873
    return-void
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->dismiss()V

    .line 909
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p0}, Landroid/widget/Editor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 910
    return-void
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 904
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 922
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x1

    .line 930
    :goto_0
    return v0

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1085
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 1021
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1022
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1023
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1082
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 867
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->setMeasuredDimension(II)V

    .line 868
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1073
    :goto_0
    iget-object v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mCursorController:Landroid/widget/MiuiCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/MiuiCursorController;->onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z

    .line 1074
    return v11

    .line 1029
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/MiuiCursorController$MiuiHandleView;->startTouchUpFilter(I)V

    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetX:F

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    .line 1033
    iget-object v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getPositionListenerPostion()J

    move-result-wide v4

    .line 1034
    .local v4, pos:J
    #calls: Landroid/widget/MiuiCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/MiuiCursorController;->access$300(J)I

    move-result v9

    iput v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentX:I

    .line 1035
    #calls: Landroid/widget/MiuiCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/MiuiCursorController;->access$400(J)I

    move-result v9

    iput v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    .line 1036
    iput-boolean v11, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    goto :goto_0

    .line 1041
    .end local v4           #pos:J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 1042
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 1045
    .local v8, rawY:F
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 1046
    .local v6, previousVerticalOffset:F
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 1048
    .local v0, currentVerticalOffset:F
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_0

    .line 1049
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1050
    .local v3, newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1055
    :goto_1
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    .line 1057
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v7, v9

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 1058
    .local v1, newPosX:F
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 1060
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 1052
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_0
    iget v9, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1053
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 1065
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v6           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->filterOnTouchUp()V

    .line 1066
    iput-boolean v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1070
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 1
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    .line 941
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffset:I

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    .line 948
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->updateSelection(I)V

    .line 949
    invoke-direct {p0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->addPositionToTouchUpFilter(I)V

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->updatePositionXY(IZ)V

    .line 951
    iput p1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffset:I

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionHasChanged:Z

    goto :goto_0
.end method

.method public setCursorController(Landroid/widget/MiuiCursorController;)V
    .locals 0
    .parameter "cc"

    .prologue
    .line 880
    iput-object p1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mCursorController:Landroid/widget/MiuiCursorController;

    .line 881
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 876
    iput p1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mType:I

    .line 877
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 884
    const-string v0, "MiuiHandleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleView ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is shown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 891
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPreviousOffset:I

    .line 892
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 821
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 822
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 823
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mHotspotX:I

    .line 824
    return-void

    .line 822
    :cond_0
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 977
    const-string v0, "MiuiHandleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleView ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] handle updatePosition called from PositionListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 980
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_5

    .line 981
    :cond_0
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 983
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 984
    :cond_1
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetX:F

    .line 985
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTouchToWindowOffsetY:F

    .line 986
    iput p1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentX:I

    .line 987
    iput p2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mLastParentY:I

    .line 988
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/MagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->onParentChanged()V

    .line 992
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onHandleMoved()V

    .line 996
    :cond_3
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 997
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerX:I

    .line 998
    iget v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerY:I

    .line 999
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1001
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1013
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionHasChanged:Z

    .line 1016
    :cond_5
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mCursorController:Landroid/widget/MiuiCursorController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController;->updatePosition()V

    .line 1017
    return-void

    .line 1003
    :cond_6
    iget-object v0, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1008
    :cond_7
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1009
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->dismiss()V

    goto :goto_0
.end method

.method protected updatePositionXY(IZ)V
    .locals 4
    .parameter "offset"
    .parameter "container"

    .prologue
    .line 958
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 959
    .local v0, line:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    .line 960
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    .line 963
    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    .line 964
    iget v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    .line 966
    if-eqz p2, :cond_0

    .line 967
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 968
    .local v1, location:[I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 969
    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionX:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerX:I

    .line 970
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mPositionY:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MiuiCursorController$MiuiHandleView;->mContainerY:I

    .line 972
    .end local v1           #location:[I
    :cond_0
    return-void
.end method

.method protected abstract updateSelection(I)V
.end method
