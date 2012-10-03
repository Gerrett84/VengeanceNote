.class Lcom/android/settings/dZ;
.super Lcom/android/settings/dC;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method fo()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->El:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method fp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b075e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fq()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 412
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/ImageView;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OB:Landroid/widget/LinearLayout;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/Button;

    const v1, 0x7f0b0760

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Ox:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->ay:Landroid/widget/TextView;

    const v1, 0x7f0b0762

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ek()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    const v1, 0x7f0b0765

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0763

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v3}, Lcom/android/settings/aV;->ek()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public kY()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ei()V

    .line 392
    iget-object v0, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/dZ;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v1}, Lcom/android/settings/VirusScanAppActivity;->b(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/dC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->OF:Lcom/android/settings/dC;

    .line 393
    return-void
.end method
