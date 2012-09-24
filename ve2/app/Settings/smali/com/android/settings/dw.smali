.class Lcom/android/settings/dw;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# instance fields
.field private final IV:Lcom/android/settings/wifi/q;

.field private final IW:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 477
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dw;->mInflater:Landroid/view/LayoutInflater;

    .line 481
    new-instance v0, Lcom/android/settings/wifi/q;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/q;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/dw;->IV:Lcom/android/settings/wifi/q;

    .line 482
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/dw;->IW:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 483
    return-void
.end method

.method static b(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801fd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801f1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 443
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 445
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/settings/dw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 452
    invoke-static {v0}, Lcom/android/settings/dw;->b(Landroid/preference/PreferenceActivity$Header;)I

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

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/settings/dw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 490
    invoke-static {v0}, Lcom/android/settings/dw;->b(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 493
    if-nez p2, :cond_0

    .line 494
    new-instance v3, Lcom/android/settings/bj;

    invoke-direct {v3, v1}, Lcom/android/settings/bj;-><init>(Lcom/android/settings/J;)V

    .line 495
    packed-switch v4, :pswitch_data_0

    move-object v2, v1

    .line 524
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    .line 531
    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 559
    :goto_2
    return-object v2

    .line 497
    :pswitch_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dw;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010208

    invoke-direct {v2, v5, v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 499
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bj;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dw;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040052

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 505
    const v1, 0x7f080022

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/bj;->icon:Landroid/widget/ImageView;

    .line 506
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bj;->title:Landroid/widget/TextView;

    .line 508
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bj;->summary:Landroid/widget/TextView;

    .line 510
    const v1, 0x7f0800de

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/bj;->sH:Landroid/widget/Switch;

    goto :goto_0

    .line 514
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/dw;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x6030027

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 517
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/bj;->icon:Landroid/widget/ImageView;

    .line 518
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bj;->title:Landroid/widget/TextView;

    .line 520
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/bj;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bj;

    move-object v2, p2

    goto :goto_1

    .line 533
    :pswitch_3
    iget-object v1, v1, Lcom/android/settings/bj;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 538
    :pswitch_4
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0801fd

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 539
    iget-object v3, p0, Lcom/android/settings/dw;->IV:Lcom/android/settings/wifi/q;

    iget-object v4, v1, Lcom/android/settings/bj;->sH:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/q;->a(Landroid/widget/Switch;)V

    .line 547
    :goto_3
    :pswitch_5
    iget-object v3, v1, Lcom/android/settings/bj;->icon:Landroid/widget/ImageView;

    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    iget-object v3, v1, Lcom/android/settings/bj;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dw;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/dw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 551
    iget-object v3, v1, Lcom/android/settings/bj;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, v1, Lcom/android/settings/bj;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 541
    :cond_1
    iget-object v3, p0, Lcom/android/settings/dw;->IW:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v4, v1, Lcom/android/settings/bj;->sH:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler;->a(Landroid/widget/Switch;)V

    goto :goto_3

    .line 554
    :cond_2
    iget-object v0, v1, Lcom/android/settings/bj;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 531
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
    .line 467
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings/dw;->getItemViewType(I)I

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
    .line 568
    iget-object v0, p0, Lcom/android/settings/dw;->IV:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->pause()V

    .line 569
    iget-object v0, p0, Lcom/android/settings/dw;->IW:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 570
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/settings/dw;->IV:Lcom/android/settings/wifi/q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/q;->resume()V

    .line 564
    iget-object v0, p0, Lcom/android/settings/dw;->IW:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 565
    return-void
.end method
