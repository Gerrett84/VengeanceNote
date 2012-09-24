.class abstract Lcom/android/settings/bF;
.super Landroid/widget/FrameLayout;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final wM:Lcom/android/settings/AccessibilityTutorialActivity;

.field private final wN:Landroid/widget/TextView;

.field private final wO:Landroid/widget/Button;

.field private final wP:Landroid/widget/Button;

.field private final wQ:Landroid/widget/Button;

.field private final wR:Landroid/widget/Button;

.field private final wS:I

.field private wT:J

.field private wU:Z

.field private wV:Lcom/android/settings/aB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 538
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 526
    new-instance v0, Lcom/android/settings/aB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/aB;-><init>(Lcom/android/settings/bF;Lcom/android/settings/dx;)V

    iput-object v0, p0, Lcom/android/settings/bF;->wV:Lcom/android/settings/aB;

    .line 540
    iput-object p2, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    .line 541
    iput p4, p0, Lcom/android/settings/bF;->wS:I

    .line 543
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 546
    const v0, 0x7f080006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bF;->wN:Landroid/widget/TextView;

    .line 547
    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bF;->wO:Landroid/widget/Button;

    .line 548
    iget-object v0, p0, Lcom/android/settings/bF;->wO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    const v0, 0x7f080008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bF;->wP:Landroid/widget/Button;

    .line 550
    iget-object v0, p0, Lcom/android/settings/bF;->wP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    const v0, 0x7f080009

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bF;->wQ:Landroid/widget/Button;

    .line 552
    iget-object v0, p0, Lcom/android/settings/bF;->wQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bF;->wR:Landroid/widget/Button;

    .line 554
    iget-object v0, p0, Lcom/android/settings/bF;->wR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 558
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 562
    :cond_0
    const v0, 0x7f080005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 564
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bF;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/bF;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/bF;->wN:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/bF;->wN:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/bF;->wN:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 599
    return-void
.end method


# virtual methods
.method protected Q(Z)V
    .locals 2
    .parameter

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/settings/bF;->wO:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 657
    return-void

    .line 656
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected R(Z)V
    .locals 2
    .parameter

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/settings/bF;->wP:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 661
    return-void

    .line 660
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected S(Z)V
    .locals 2
    .parameter

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/settings/bF;->wQ:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 665
    return-void

    .line 664
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected T(Z)V
    .locals 2
    .parameter

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/settings/bF;->wR:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    return-void

    .line 668
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected varargs a(I[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/settings/bF;->wU:Z

    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bF;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/android/settings/bF;->wV:Lcom/android/settings/aB;

    invoke-virtual {v1, v0}, Lcom/android/settings/aB;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final activate()V
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bF;->wU:Z

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/bF;->wT:J

    .line 573
    iget-object v0, p0, Lcom/android/settings/bF;->wN:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    iget v1, p0, Lcom/android/settings/bF;->wS:I

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity;->setTitle(I)V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/bF;->onShown()V

    .line 577
    return-void
.end method

.method protected ag(I)Z
    .locals 4
    .parameter

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/android/settings/bF;->wT:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 648
    if-eqz p2, :cond_0

    .line 649
    iget-wide v0, p0, Lcom/android/settings/bF;->wT:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/bF;->wT:J

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/bF;->wT:J

    xor-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings/bF;->wT:J

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bF;->wU:Z

    .line 607
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->b(Lcom/android/settings/AccessibilityTutorialActivity;)V

    .line 608
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 627
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->c(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 630
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->d(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_0

    .line 633
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/bF;->wM:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x7f080007
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onShown()V
.end method
