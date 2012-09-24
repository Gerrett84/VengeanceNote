.class Lcom/android/settings/dR;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# instance fields
.field private Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final MZ:Lcom/android/settings/wifi/s;

.field private final Na:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 616
    iput-object p3, p0, Lcom/android/settings/dR;->Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 617
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dR;->mInflater:Landroid/view/LayoutInflater;

    .line 621
    new-instance v0, Lcom/android/settings/wifi/s;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/s;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/dR;->MZ:Lcom/android/settings/wifi/s;

    .line 622
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/dR;->Na:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 623
    return-void
.end method

.method static b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 582
    :goto_0
    return v0

    .line 579
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080227

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08021a

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 580
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 582
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/android/settings/dR;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 589
    invoke-static {v0}, Lcom/android/settings/dR;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x1020016

    const v5, 0x1020010

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/settings/dR;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 630
    invoke-static {v0}, Lcom/android/settings/dR;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 633
    if-nez p2, :cond_0

    .line 634
    new-instance v3, Lcom/android/settings/bx;

    invoke-direct {v3, v1}, Lcom/android/settings/bx;-><init>(Lcom/android/settings/W;)V

    .line 635
    packed-switch v4, :pswitch_data_0

    move-object v2, v1

    .line 664
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    .line 671
    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 712
    :goto_2
    return-object v2

    .line 637
    :pswitch_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010208

    invoke-direct {v2, v5, v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 639
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bx;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dR;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040057

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 645
    const v1, 0x7f080019

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    .line 646
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bx;->title:Landroid/widget/TextView;

    .line 648
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bx;->summary:Landroid/widget/TextView;

    .line 650
    const v1, 0x7f0800e0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/bx;->uZ:Landroid/widget/Switch;

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/dR;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x6030027

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 657
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    .line 658
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bx;->title:Landroid/widget/TextView;

    .line 660
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bx;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bx;

    move-object v2, p2

    goto :goto_1

    .line 673
    :pswitch_3
    iget-object v1, v1, Lcom/android/settings/bx;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 678
    :pswitch_4
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f080227

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/android/settings/dR;->MZ:Lcom/android/settings/wifi/s;

    iget-object v4, v1, Lcom/android/settings/bx;->uZ:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/s;->a(Landroid/widget/Switch;)V

    .line 687
    :goto_3
    :pswitch_5
    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    iget-object v4, v1, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 694
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 695
    iget-object v5, v1, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    iget-object v4, p0, Lcom/android/settings/dR;->Cc:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 697
    iget-object v4, v1, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    :goto_4
    iget-object v3, v1, Lcom/android/settings/bx;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/dR;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 703
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 704
    iget-object v3, v1, Lcom/android/settings/bx;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v1, v1, Lcom/android/settings/bx;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 681
    :cond_1
    iget-object v3, p0, Lcom/android/settings/dR;->Na:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v4, v1, Lcom/android/settings/bx;->uZ:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler;->a(Landroid/widget/Switch;)V

    goto :goto_3

    .line 699
    :cond_2
    iget-object v3, v1, Lcom/android/settings/bx;->icon:Landroid/widget/ImageView;

    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 707
    :cond_3
    iget-object v0, v1, Lcom/android/settings/bx;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 671
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
    .line 604
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/android/settings/dR;->getItemViewType(I)I

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
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings/dR;->MZ:Lcom/android/settings/wifi/s;

    invoke-virtual {v0}, Lcom/android/settings/wifi/s;->pause()V

    .line 722
    iget-object v0, p0, Lcom/android/settings/dR;->Na:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 723
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/dR;->MZ:Lcom/android/settings/wifi/s;

    invoke-virtual {v0}, Lcom/android/settings/wifi/s;->resume()V

    .line 717
    iget-object v0, p0, Lcom/android/settings/dR;->Na:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 718
    return-void
.end method
