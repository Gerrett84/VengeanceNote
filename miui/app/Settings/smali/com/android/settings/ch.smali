.class Lcom/android/settings/ch;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# instance fields
.field private Ca:Ljava/util/HashMap;

.field private final Cb:Lcom/android/settings/bl;

.field private Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 553
    iput-object p3, p0, Lcom/android/settings/ch;->Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 554
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ch;->mInflater:Landroid/view/LayoutInflater;

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    .line 556
    new-instance v0, Lcom/android/settings/bl;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bl;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/ch;->Cb:Lcom/android/settings/bl;

    .line 557
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f080217

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ch;->Cb:Lcom/android/settings/bl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f080215

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/c;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/display/c;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f08021d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/cy;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/cy;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method private b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .parameter

    .prologue
    .line 507
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ch;->v(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    const/4 v0, 0x2

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/dV;Landroid/preference/PreferenceActivity$Header;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 645
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p1, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 652
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 653
    iget-object v2, p1, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    iget-object v1, p0, Lcom/android/settings/ch;->Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 655
    iget-object v1, p1, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    iget v1, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/settings/ch;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 524
    invoke-direct {p0, v0}, Lcom/android/settings/ch;->b(Landroid/preference/PreferenceActivity$Header;)I

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

    .line 564
    .line 565
    invoke-virtual {p0, p1}, Lcom/android/settings/ch;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 566
    invoke-direct {p0, v0}, Lcom/android/settings/ch;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 569
    if-eqz p2, :cond_4

    .line 571
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dV;

    .line 572
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ch;->v(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    move-object p2, v4

    .line 576
    :goto_0
    if-nez p2, :cond_2

    .line 577
    new-instance v3, Lcom/android/settings/dV;

    invoke-direct {v3, v4}, Lcom/android/settings/dV;-><init>(Lcom/android/settings/dY;)V

    .line 578
    packed-switch v5, :pswitch_data_0

    .line 608
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 613
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 641
    :goto_3
    return-object v2

    .line 580
    :pswitch_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x1010208

    invoke-direct {v2, v1, v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 582
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dV;->title:Landroid/widget/TextView;

    goto :goto_1

    .line 586
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/ch;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040056

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 588
    const v1, 0x7f080019

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    .line 589
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dV;->title:Landroid/widget/TextView;

    .line 591
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dV;->summary:Landroid/widget/TextView;

    .line 593
    const v1, 0x7f0800df

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, v3, Lcom/android/settings/dV;->Og:Lmiui/widget/SlidingButton;

    goto :goto_1

    .line 597
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/ch;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x6030027

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 600
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    .line 601
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dV;->title:Landroid/widget/TextView;

    .line 603
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/dV;->summary:Landroid/widget/TextView;

    .line 605
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/ch;->a(Lcom/android/settings/dV;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_1

    .line 615
    :pswitch_3
    iget-object v1, v3, Lcom/android/settings/dV;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 620
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cI;

    .line 621
    if-eqz v1, :cond_0

    .line 622
    iget-object v4, v3, Lcom/android/settings/dV;->Og:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lcom/android/settings/cI;->a(Lmiui/widget/SlidingButton;)V

    .line 628
    :cond_0
    :pswitch_5
    iget-object v1, v3, Lcom/android/settings/dV;->icon:Landroid/widget/ImageView;

    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iget-object v1, v3, Lcom/android/settings/dV;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 631
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 632
    iget-object v4, v3, Lcom/android/settings/dV;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v4, v3, Lcom/android/settings/dV;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/ch;->a(Lcom/android/settings/dV;Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_3

    .line 635
    :cond_1
    iget-object v1, v3, Lcom/android/settings/dV;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

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

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 613
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
    .line 539
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public ie()Lcom/android/settings/bl;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings/ch;->Cb:Lcom/android/settings/bl;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/ch;->getItemViewType(I)I

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
    .line 669
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 670
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cI;

    .line 671
    invoke-virtual {v0}, Lcom/android/settings/cI;->pause()V

    goto :goto_0

    .line 673
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 663
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cI;

    .line 664
    invoke-virtual {v0}, Lcom/android/settings/cI;->resume()V

    goto :goto_0

    .line 666
    :cond_0
    return-void
.end method

.method public v(J)Z
    .locals 2
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/ch;->Ca:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 518
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
