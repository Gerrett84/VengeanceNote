.class Lcom/android/settings/bm;
.super Lcom/android/settings/dC;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aO:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/aX;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wv:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v1, p2}, Lcom/android/settings/aV;->Q(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/M;

    .line 497
    iget-object v1, p1, Lcom/android/settings/aX;->rn:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/M;->cW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p1, Lcom/android/settings/aX;->rp:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 499
    iget-object v1, p1, Lcom/android/settings/aX;->rp:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/android/settings/M;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 500
    iget-object v1, p1, Lcom/android/settings/aX;->rp:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/bZ;

    invoke-direct {v2, p0}, Lcom/android/settings/bZ;-><init>(Lcom/android/settings/bm;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v1, p1, Lcom/android/settings/aX;->rp:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/bY;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/bY;-><init>(Lcom/android/settings/bm;Lcom/android/settings/M;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    iget-object v0, p1, Lcom/android/settings/aX;->ro:Landroid/widget/TextView;

    const/16 v1, 0xdf

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    iget-object v0, p1, Lcom/android/settings/aX;->ro:Landroid/widget/TextView;

    const v1, 0x7f0b075e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 520
    return-void
.end method

.method fr()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->er()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->d(Lcom/android/settings/VirusScanAppActivity;)V

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v1}, Lcom/android/settings/aV;->er()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/VirusScanAppActivity;->a(Lcom/android/settings/VirusScanAppActivity;I)I

    .line 468
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->em()V

    goto :goto_0
.end method

.method fs()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Eq:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method ft()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b075e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fu()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OE:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OE:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OF:Landroid/widget/LinearLayout;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->er()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0762

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v3}, Lcom/android/settings/aV;->er()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OG:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->aB:Landroid/widget/TextView;

    const v1, 0x7f0b0765

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0764

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v3}, Lcom/android/settings/aV;->ep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OM:Lcom/android/settings/N;

    invoke-virtual {v0}, Lcom/android/settings/N;->notifyDataSetChanged()V

    .line 540
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OH:Landroid/widget/Button;

    const v1, 0x7f0b0760

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/bm;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wx:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ep()I

    move-result v0

    return v0
.end method
