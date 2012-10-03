.class Lcom/android/settings/bO;
.super Lcom/android/settings/dC;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method fo()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->En:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method fp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0764

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fq()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OB:Landroid/widget/LinearLayout;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->ay:Landroid/widget/TextView;

    const v1, 0x7f0b0764

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/bO;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    const v1, 0x7f0b0765

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 457
    return-void
.end method
