.class Lcom/android/settings/dU;
.super Lcom/android/settings/dC;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method fo()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->Ek:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method fp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b075a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fq()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ej()I

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Ox:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/TextView;

    const-string v2, "%d%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x64

    iget-object v4, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v4, v4, Lcom/android/settings/VirusScanAppActivity;->ws:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OA:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OB:Landroid/widget/LinearLayout;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/Button;

    const v1, 0x7f0b075e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Ox:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->ay:Landroid/widget/TextView;

    const v1, 0x7f0b0758

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method public kY()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OC:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/dU;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->en()V

    .line 355
    return-void
.end method
