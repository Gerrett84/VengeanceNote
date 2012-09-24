.class Lcom/android/settings/bY;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic AY:Lcom/android/settings/M;

.field final synthetic AZ:Lcom/android/settings/bm;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/bm;Lcom/android/settings/M;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iput-object p2, p0, Lcom/android/settings/bY;->AY:Lcom/android/settings/M;

    iput p3, p0, Lcom/android/settings/bY;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/settings/bY;->AY:Lcom/android/settings/M;

    iput-boolean p2, v0, Lcom/android/settings/M;->mChecked:Z

    .line 509
    iget-object v0, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v0, v0, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    iget-object v1, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v1, v1, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    iget v2, p0, Lcom/android/settings/bY;->val$position:I

    invoke-virtual {v1, v2}, Lcom/android/settings/aV;->Q(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/aV;->c(IZ)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v0, v0, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->em()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v0, v0, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v1, v1, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0761

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v4, v4, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v4, v4, Lcom/android/settings/VirusScanAppActivity;->wu:Lcom/android/settings/aV;

    invoke-virtual {v4}, Lcom/android/settings/aV;->em()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bY;->AZ:Lcom/android/settings/bm;

    iget-object v0, v0, Lcom/android/settings/bm;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OD:Landroid/widget/Button;

    const v1, 0x7f0b075f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
