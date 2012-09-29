.class Lcom/android/settings/N;
.super Landroid/widget/BaseAdapter;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aO:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanAppActivity;Lcom/android/settings/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/settings/N;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/dC;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/dC;

    invoke-virtual {v0}, Lcom/android/settings/dC;->getCount()I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    .line 260
    if-nez p2, :cond_1

    .line 261
    new-instance v1, Lcom/android/settings/aX;

    iget-object v0, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v1, v0}, Lcom/android/settings/aX;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/android/settings/VirusScanAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 263
    const v2, 0x7f040089

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    const v0, 0x1010003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/aX;->rn:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f080181

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/aX;->ro:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f080182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/settings/aX;->rp:Landroid/widget/CheckBox;

    .line 267
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/dC;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/N;->aO:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/dC;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/dC;->a(Lcom/android/settings/aX;I)V

    .line 275
    :cond_0
    return-object p2

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aX;

    goto :goto_0
.end method
