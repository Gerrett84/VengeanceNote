.class abstract Lcom/android/settings/dC;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/aX;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x1060005

    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->ws:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/M;

    .line 322
    iget-object v1, p1, Lcom/android/settings/aX;->rj:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/M;->cT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p1, Lcom/android/settings/aX;->rl:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 325
    sget-object v1, Lcom/android/settings/j;->aK:[I

    iget-object v0, v0, Lcom/android/settings/M;->cU:Lcom/android/settings/ScanState;

    invoke-virtual {v0}, Lcom/android/settings/ScanState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const v1, 0x7f0b075b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const v1, 0x7f0b075a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const/16 v1, 0x47

    const/16 v2, 0x88

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const v1, 0x7f0b075c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const/16 v1, 0xdf

    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v0, p1, Lcom/android/settings/aX;->rk:Landroid/widget/TextView;

    const v1, 0x7f0b075d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method fn()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->d(Lcom/android/settings/VirusScanAppActivity;)V

    .line 304
    return-void
.end method

.method abstract fo()Lcom/android/settings/VirusScanAppActivity$RunState;
.end method

.method abstract fp()Ljava/lang/String;
.end method

.method abstract fq()V
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/dC;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->ws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method kY()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
