.class Lcom/android/settings/bT;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private yv:Ljava/util/HashMap;

.field private final yw:Lcom/android/settings/aX;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 419
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/bT;->mInflater:Landroid/view/LayoutInflater;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    .line 421
    new-instance v0, Lcom/android/settings/aX;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/aX;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/bT;->yw:Lcom/android/settings/aX;

    .line 422
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f0801ee

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bT;->yw:Lcom/android/settings/aX;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f0801ec

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/c;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/display/c;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f0801f4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/co;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/co;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .parameter

    .prologue
    .line 373
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bT;->q(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x2

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/android/settings/bT;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 390
    invoke-direct {p0, v0}, Lcom/android/settings/bT;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x1020016

    const v6, 0x1020010

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 429
    .line 430
    invoke-virtual {p0, p1}, Lcom/android/settings/bT;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 431
    invoke-direct {p0, v0}, Lcom/android/settings/bT;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 434
    if-eqz p2, :cond_4

    .line 436
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dC;

    .line 437
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bT;->q(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    move-object p2, v4

    .line 441
    :goto_0
    if-nez p2, :cond_2

    .line 442
    new-instance v3, Lcom/android/settings/dC;

    invoke-direct {v3, v4}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/dF;)V

    .line 443
    packed-switch v5, :pswitch_data_0

    .line 472
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 477
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 504
    :goto_3
    return-object v2

    .line 445
    :pswitch_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bT;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x1010208

    invoke-direct {v2, v1, v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 447
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dC;->title:Landroid/widget/TextView;

    goto :goto_1

    .line 451
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/bT;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040051

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 453
    const v1, 0x7f080022

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/dC;->icon:Landroid/widget/ImageView;

    .line 454
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dC;->title:Landroid/widget/TextView;

    .line 456
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dC;->summary:Landroid/widget/TextView;

    .line 458
    const v1, 0x7f0800dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, v3, Lcom/android/settings/dC;->JW:Lmiui/widget/SlidingButton;

    goto :goto_1

    .line 462
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/bT;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x6030027

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 465
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/dC;->icon:Landroid/widget/ImageView;

    .line 466
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dC;->title:Landroid/widget/TextView;

    .line 468
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dC;->summary:Landroid/widget/TextView;

    goto :goto_1

    .line 479
    :pswitch_3
    iget-object v1, v3, Lcom/android/settings/dC;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bT;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 484
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cv;

    .line 485
    if-eqz v1, :cond_0

    .line 486
    iget-object v4, v3, Lcom/android/settings/dC;->JW:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lcom/android/settings/cv;->a(Lmiui/widget/SlidingButton;)V

    .line 492
    :cond_0
    :pswitch_5
    iget-object v1, v3, Lcom/android/settings/dC;->icon:Landroid/widget/ImageView;

    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v1, v3, Lcom/android/settings/dC;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/bT;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/bT;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    iget-object v1, v3, Lcom/android/settings/dC;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v1, v3, Lcom/android/settings/dC;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 499
    :cond_1
    iget-object v0, v3, Lcom/android/settings/dC;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    move-object v3, v1

    goto/16 :goto_2

    :cond_3
    move-object v2, p2

    goto/16 :goto_0

    :cond_4
    move-object v2, v4

    move-object v1, v4

    goto/16 :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 477
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x3

    return v0
.end method

.method public gv()Lcom/android/settings/aX;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/bT;->yw:Lcom/android/settings/aX;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/android/settings/bT;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cv;

    .line 517
    invoke-virtual {v0}, Lcom/android/settings/cv;->pause()V

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method public q(J)Z
    .locals 2
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 384
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/settings/bT;->yv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cv;

    .line 510
    invoke-virtual {v0}, Lcom/android/settings/cv;->resume()V

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method
