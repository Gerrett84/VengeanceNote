.class Lcom/android/settings/dd;
.super Landroid/widget/BaseAdapter;
.source "VirusScanActivity.java"


# instance fields
.field final synthetic eG:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/dd;->eG:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 171
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

    .line 176
    .line 178
    if-nez p2, :cond_0

    .line 179
    new-instance v1, Lcom/android/settings/cg;

    iget-object v0, p0, Lcom/android/settings/dd;->eG:Lcom/android/settings/VirusScanActivity;

    invoke-direct {v1, v0, v3}, Lcom/android/settings/cg;-><init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/de;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/dd;->eG:Lcom/android/settings/VirusScanActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/android/settings/VirusScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 181
    const v2, 0x7f040086

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    const v0, 0x7f080173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/cg;->BQ:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f080174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/cg;->BR:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f080175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/settings/cg;->BS:Landroid/widget/CheckBox;

    .line 185
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-object p2

    .line 187
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cg;

    goto :goto_0
.end method
