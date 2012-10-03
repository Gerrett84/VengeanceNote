.class public Landroid/widget/MiuiCursorController$SelectionModifierCursorController;
.super Landroid/widget/MiuiCursorController;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 4
    .parameter "owner"
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 547
    invoke-direct {p0, p1, p2}, Landroid/widget/MiuiCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 533
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 537
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 538
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 540
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 548
    iget-object v1, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 549
    iget-object v1, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {p0, v1, v3, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 550
    const v1, 0x6030032

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 551
    new-instance v0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/MiuiCursorController$SelectionModifierCursorController;)V

    .line 558
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0015

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 559
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0016

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 560
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0017

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 561
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 562
    return-void
.end method

.method static synthetic access$200(Landroid/widget/MiuiCursorController$SelectionModifierCursorController;)Landroid/widget/MiuiCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 524
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "clipboard"
    .parameter "data"
    .parameter "selected"

    .prologue
    const/4 v3, 0x0

    .line 749
    if-nez p2, :cond_0

    .line 750
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 759
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-static {v3, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 753
    .local v2, newdata:Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 754
    .local v0, historyCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 755
    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 757
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public computePanelPosition([I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 587
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    aput v0, p1, v3

    .line 591
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 592
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 595
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 601
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 603
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 605
    :cond_0
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 606
    .local v2, maxBottom:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 608
    .local v1, handleHeight:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v0, v3, v1

    .line 609
    .local v0, endHandleBottom:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .end local v2           #maxBottom:I
    :cond_1
    return v2
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 615
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 616
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 618
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "handle"
    .parameter "ev"

    .prologue
    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 736
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 663
    const/4 v7, 0x0

    .line 666
    .local v7, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 705
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/MagnifierController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/MagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 708
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/MiuiCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    :cond_2
    return v7

    .line 668
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 669
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 671
    .local v4, y:F
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 672
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    iget-wide v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    iget v5, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    iget v6, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Editor;->startTextSelectionModeIfDouleTap(JFFFF)V

    .line 673
    iput v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 674
    iput v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    .line 681
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 684
    .local v10, pointerCount:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 685
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    .line 686
    .local v9, offset:I
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v9, v0, :cond_3

    .line 687
    iput v9, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 688
    :cond_3
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v9, v0, :cond_4

    .line 689
    iput v9, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 684
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 695
    .end local v8           #index:I
    .end local v9           #offset:I
    .end local v10           #pointerCount:I
    :pswitch_3
    iget-object v0, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onTapUpEvent()V

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 725
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 762
    iput p1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput p1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 763
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 565
    const-string v3, "MiuiCursorController"

    const-string v4, "SelectionModifierCursorController is shown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v3, "MiuiCursorController"

    const-string v4, "SelectionModifierCursorController is shown and hide InsertionPointCursorController"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 572
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 573
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 574
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 576
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 577
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hideInsertionPointCursorControllerWrap()V

    .line 578
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 579
    .local v0, buttons:[I
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 580
    .local v1, separators:[I
    iget-object v3, p0, Landroid/widget/MiuiCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v3, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 581
    .local v2, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    goto :goto_0

    .line 578
    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0xbt 0x6t
        0x16t 0x0t 0xbt 0x6t
        0x17t 0x0t 0xbt 0x6t
    .end array-data

    .line 579
    :array_1
    .array-data 0x4
        0x1ct 0x0t 0xbt 0x6t
        0x1dt 0x0t 0xbt 0x6t
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 625
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v2, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 630
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 632
    .local v0, selectionEnd:I
    if-ltz v1, :cond_2

    if-gez v0, :cond_3

    .line 634
    :cond_2
    const-string v2, "MiuiCursorController"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 640
    :cond_3
    if-ne v1, v0, :cond_4

    .line 641
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 645
    :cond_4
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 646
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 648
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 649
    :cond_5
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_0

    .line 650
    :cond_6
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 651
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 655
    :cond_7
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 657
    iput-boolean v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
