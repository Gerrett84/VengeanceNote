.class Lcom/android/settings/dg;
.super Landroid/widget/BaseAdapter;
.source "VirusScanActivity.java"


# instance fields
.field final synthetic eJ:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/dg;->eJ:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    .line 90
    if-nez p2, :cond_0

    .line 91
    new-instance v1, Lcom/android/settings/T;

    iget-object v0, p0, Lcom/android/settings/dg;->eJ:Lcom/android/settings/VirusScanActivity;

    invoke-direct {v1, v0, v3}, Lcom/android/settings/T;-><init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/de;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/dg;->eJ:Lcom/android/settings/VirusScanActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/android/settings/VirusScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    const v2, 0x7f04008a

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    const v0, 0x7f080183

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/T;->eH:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f080184

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/T;->eI:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 101
    :goto_0
    iget-object v1, v0, Lcom/android/settings/T;->eH:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_1
    return-object p2

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/T;

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, v0, Lcom/android/settings/T;->eI:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :pswitch_1
    iget-object v0, v0, Lcom/android/settings/T;->eI:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
