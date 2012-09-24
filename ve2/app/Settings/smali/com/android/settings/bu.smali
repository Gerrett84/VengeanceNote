.class Lcom/android/settings/bu;
.super Lcom/android/settings/bF;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final tN:Lcom/android/settings/y;

.field private tY:I

.field private tZ:I

.field private ua:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f080003

    const/4 v2, 0x0

    .line 424
    const v0, 0x7f040002

    const v1, 0x7f0b05d8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/bF;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V

    .line 419
    iput v2, p0, Lcom/android/settings/bu;->tY:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bu;->tZ:I

    .line 421
    iput v2, p0, Lcom/android/settings/bu;->ua:I

    .line 427
    new-instance v0, Lcom/android/settings/dt;

    const v1, 0x1090003

    const v2, 0x1020014

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/settings/dt;-><init>(Lcom/android/settings/bu;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/bu;->tN:Lcom/android/settings/y;

    .line 435
    iget-object v0, p0, Lcom/android/settings/bu;->tN:Lcom/android/settings/y;

    invoke-virtual {v0, p0}, Lcom/android/settings/y;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 437
    invoke-virtual {p0, v3}, Lcom/android/settings/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/bu;->tN:Lcom/android/settings/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 438
    invoke-virtual {p0, v3}, Lcom/android/settings/bu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bu;->R(Z)V

    .line 441
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 451
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bu;->ag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/settings/bu;->ag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget v0, p0, Lcom/android/settings/bu;->tY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/bu;->tY:I

    .line 454
    iget v0, p0, Lcom/android/settings/bu;->tY:I

    if-lt v0, v4, :cond_2

    .line 455
    const v0, 0x7f0b05db

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bu;->a(I[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/bu;->b(IZ)V

    goto :goto_0

    .line 457
    :cond_2
    iget v0, p0, Lcom/android/settings/bu;->tY:I

    if-ne v0, v3, :cond_0

    .line 458
    const v0, 0x7f0b05da

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bu;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1020014
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/settings/bu;->ag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/bu;->ag(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget v0, p0, Lcom/android/settings/bu;->tZ:I

    if-gez v0, :cond_0

    .line 472
    iput p2, p0, Lcom/android/settings/bu;->tZ:I

    .line 475
    :cond_0
    iget v0, p0, Lcom/android/settings/bu;->tZ:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 477
    iget v1, p0, Lcom/android/settings/bu;->ua:I

    if-eq v1, v0, :cond_1

    if-gtz v0, :cond_2

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    iput v0, p0, Lcom/android/settings/bu;->ua:I

    .line 483
    iget v0, p0, Lcom/android/settings/bu;->ua:I

    if-lt v0, v4, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/bu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 486
    const v1, 0x7f0b05dd

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bu;->a(I[Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/bu;->b(IZ)V

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/settings/bu;->T(Z)V

    goto :goto_0

    .line 489
    :cond_3
    iget v0, p0, Lcom/android/settings/bu;->ua:I

    if-ne v0, v2, :cond_1

    .line 490
    const v0, 0x7f0b05dc

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bu;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    return-void
.end method

.method public onShown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 502
    const v0, 0x7f0b05d9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bu;->a(I[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/bu;->b(IZ)V

    .line 504
    return-void
.end method
