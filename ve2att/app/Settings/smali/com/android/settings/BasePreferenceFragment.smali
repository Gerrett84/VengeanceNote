.class public Lcom/android/settings/BasePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected gz:Ljava/util/List;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings/G;

    invoke-direct {v0, p0}, Lcom/android/settings/G;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method private onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ch;

    .line 59
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ch;->v(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080222

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bl;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 72
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/bP;->ao(I)I

    move-result v0

    .line 73
    if-ltz v0, :cond_0

    .line 74
    invoke-static {v0}, Lcom/android/settings/bP;->an(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-static {v1, v1, v0}, Lcom/android/settings/provider/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public aP()V
    .locals 5

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->aQ()V

    .line 28
    iget-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ch;

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/ch;->pause()V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ch;

    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->fk()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/settings/ch;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method public aQ()V
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->aR()I

    move-result v2

    .line 93
    if-lez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSettings;->f(Ljava/util/List;)V

    .line 99
    :cond_0
    iput-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->gz:Ljava/util/List;

    .line 100
    return-void
.end method

.method protected aR()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lcom/android/settings/ch;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/android/settings/ch;

    invoke-virtual {v0}, Lcom/android/settings/ch;->ie()Lcom/android/settings/bl;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/bl;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/android/settings/ch;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/android/settings/ch;

    invoke-virtual {v0}, Lcom/android/settings/ch;->pause()V

    .line 124
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 111
    instance-of v1, v0, Lcom/android/settings/ch;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/android/settings/ch;

    invoke-virtual {v0}, Lcom/android/settings/ch;->resume()V

    .line 114
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->aP()V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
