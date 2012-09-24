.class Lcom/android/settings/br;
.super Lcom/android/settings/bF;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final tM:Lcom/android/settings/cg;

.field private final tN:Lcom/android/settings/y;

.field private final tO:Landroid/widget/GridView;

.field private tP:I

.field private tQ:I

.field private tR:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 327
    const v0, 0x7f040001

    const v1, 0x7f0b05d1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/bF;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/br;->tP:I

    .line 330
    new-instance v0, Lcom/android/settings/cg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cg;-><init>(Lcom/android/settings/br;Lcom/android/settings/dx;)V

    iput-object v0, p0, Lcom/android/settings/br;->tM:Lcom/android/settings/cg;

    .line 332
    new-instance v0, Lcom/android/settings/y;

    const v1, 0x7f040003

    const v2, 0x7f080004

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/y;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/br;->tN:Lcom/android/settings/y;

    .line 334
    iget-object v0, p0, Lcom/android/settings/br;->tN:Lcom/android/settings/y;

    invoke-virtual {v0, p0}, Lcom/android/settings/y;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 336
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/settings/br;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/br;->tO:Landroid/widget/GridView;

    .line 337
    iget-object v0, p0, Lcom/android/settings/br;->tO:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/br;->tN:Lcom/android/settings/y;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/br;->tO:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 340
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/br;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/br;->Q(Z)V

    .line 343
    return-void
.end method

.method static synthetic a(Lcom/android/settings/br;)Lcom/android/settings/cg;
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/br;->tM:Lcom/android/settings/cg;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/br;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/br;->tR:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return v3

    .line 349
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 351
    iget v0, p0, Lcom/android/settings/br;->tP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/br;->tP:I

    .line 353
    iget v0, p0, Lcom/android/settings/br;->tP:I

    if-lt v0, v1, :cond_2

    .line 354
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/br;->b(IZ)V

    .line 355
    const v0, 0x7f0b05d4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/br;->tR:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    .line 361
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_2
    iget v0, p0, Lcom/android/settings/br;->tP:I

    if-ne v0, v2, :cond_1

    .line 358
    const v0, 0x7f0b05d3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/settings/br;->tQ:I

    if-ne v0, v1, :cond_0

    .line 364
    invoke-virtual {p0, v4}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 366
    iget-object v0, p0, Lcom/android/settings/br;->tM:Lcom/android/settings/cg;

    invoke-virtual {v0}, Lcom/android/settings/cg;->he()V

    .line 367
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/br;->b(IZ)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/br;->tM:Lcom/android/settings/cg;

    invoke-virtual {v0}, Lcom/android/settings/cg;->hf()V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x7f080004
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    .line 380
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/br;->ag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/br;->tQ:I

    if-ne p3, v0, :cond_0

    .line 382
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/br;->b(IZ)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/br;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 385
    const v1, 0x7f0b05d7

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {p0, v4}, Lcom/android/settings/br;->S(Z)V

    .line 388
    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/settings/br;->tO:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    .line 393
    iget-object v0, p0, Lcom/android/settings/br;->tO:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    .line 395
    iput v2, p0, Lcom/android/settings/br;->tQ:I

    .line 396
    iget-object v0, p0, Lcom/android/settings/br;->tN:Lcom/android/settings/y;

    iget v1, p0, Lcom/android/settings/br;->tQ:I

    invoke-virtual {v0, v1}, Lcom/android/settings/y;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/br;->tR:Ljava/lang/CharSequence;

    .line 398
    const v0, 0x7f0b05d2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/br;->b(IZ)V

    .line 400
    return-void
.end method
