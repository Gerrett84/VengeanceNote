.class public Lcom/android/settings/FrequentlyFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "FrequentlyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public aQ()V
    .locals 8

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 75
    invoke-static {v0}, Lcom/android/settings/provider/b;->L(Landroid/content/Context;)[I

    move-result-object v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 78
    invoke-static {}, Lcom/android/settings/bP;->hx()[I

    move-result-object v4

    .line 79
    array-length v5, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget v6, v3, v1

    .line 80
    if-ltz v6, :cond_0

    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 81
    aget v6, v4, v6

    invoke-virtual {v0, v6, v2}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings/MiuiSettings;->f(Ljava/util/List;)V

    .line 87
    iput-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onResume()V

    .line 65
    sget-boolean v0, Lcom/android/settings/provider/b;->Fl:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->aP()V

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/provider/b;->Fl:Z

    .line 69
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0b0724

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dt;

    invoke-direct {v1, p0}, Lcom/android/settings/dt;-><init>(Lcom/android/settings/FrequentlyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    return-void
.end method
