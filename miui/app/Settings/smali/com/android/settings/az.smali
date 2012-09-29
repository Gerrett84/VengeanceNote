.class Lcom/android/settings/az;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field final synthetic dH:Lcom/android/settings/bA;

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/bA;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/az;->dH:Lcom/android/settings/bA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/az;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private cq()Lcom/android/settings/LineView;
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lcom/android/settings/LineView;

    iget-object v1, p0, Lcom/android/settings/az;->dH:Lcom/android/settings/bA;

    iget-object v1, v1, Lcom/android/settings/bA;->aA:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/LineView;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->q(Z)V

    .line 236
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/LineView;->r(I)V

    .line 238
    return-object v0
.end method

.method private cr()Lcom/android/settings/f;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 242
    new-instance v0, Lcom/android/settings/f;

    invoke-direct {v0}, Lcom/android/settings/f;-><init>()V

    .line 243
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/az;->dH:Lcom/android/settings/bA;

    iget-object v2, v2, Lcom/android/settings/bA;->aA:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/f;->ax:Landroid/widget/LinearLayout;

    .line 244
    iget-object v1, v0, Lcom/android/settings/f;->ax:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/az;->dH:Lcom/android/settings/bA;

    iget-object v2, v2, Lcom/android/settings/bA;->aA:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/f;->az:Landroid/widget/TextView;

    .line 247
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 248
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v2, v0, Lcom/android/settings/f;->az:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v1, v0, Lcom/android/settings/f;->az:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/az;->dH:Lcom/android/settings/bA;

    iget-object v2, v2, Lcom/android/settings/bA;->aA:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/f;->ay:Landroid/widget/TextView;

    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v2, v0, Lcom/android/settings/f;->ay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, v0, Lcom/android/settings/f;->ay:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    iget-object v1, v0, Lcom/android/settings/f;->ax:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/settings/f;->az:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v1, v0, Lcom/android/settings/f;->ax:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/settings/f;->ay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/f;Lcom/android/settings/LineView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/az;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/bd;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/bd;-><init>(Lcom/android/settings/az;Lcom/android/settings/f;Lcom/android/settings/LineView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public cp()Lcom/android/settings/bd;
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/az;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/az;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/bd;

    invoke-direct {p0}, Lcom/android/settings/az;->cr()Lcom/android/settings/f;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/az;->cq()Lcom/android/settings/LineView;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/bd;-><init>(Lcom/android/settings/az;Lcom/android/settings/f;Lcom/android/settings/LineView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/az;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bd;

    return-object v0
.end method
