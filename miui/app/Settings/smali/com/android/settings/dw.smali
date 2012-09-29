.class Lcom/android/settings/dw;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final Ke:Ljava/util/List;

.field final synthetic Kf:Lcom/android/settings/TrustedCredentialsSettings;

.field private final iz:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/dw;->Kf:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dw;->Ke:Ljava/util/List;

    .line 179
    iput-object p2, p0, Lcom/android/settings/dw;->iz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 180
    invoke-direct {p0}, Lcom/android/settings/dw;->fG()V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/ed;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dw;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dw;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/dw;->Ke:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/settings/dw;->fG()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/dw;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/dw;->iz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method private fG()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/android/settings/dP;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dP;-><init>(Lcom/android/settings/dw;Lcom/android/settings/ed;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method


# virtual methods
.method public aS(I)Lcom/android/settings/as;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/dw;->Ke:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/as;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/dw;->Ke:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/dw;->aS(I)Lcom/android/settings/as;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 196
    if-nez p2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/dw;->Kf:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 198
    const v1, 0x7f040079

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 199
    new-instance v1, Lcom/android/settings/dk;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/settings/dk;-><init>(Lcom/android/settings/ed;)V

    .line 200
    const v0, 0x7f080146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings/dk;->a(Lcom/android/settings/dk;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 202
    const v0, 0x7f080147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings/dk;->b(Lcom/android/settings/dk;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 204
    const v0, 0x7f080148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v1, v0}, Lcom/android/settings/dk;->a(Lcom/android/settings/dk;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 205
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dw;->Ke:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/as;

    .line 210
    invoke-static {v1}, Lcom/android/settings/dk;->a(Lcom/android/settings/dk;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/as;->h(Lcom/android/settings/as;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {v1}, Lcom/android/settings/dk;->b(Lcom/android/settings/dk;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/as;->i(Lcom/android/settings/as;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/dw;->iz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->f(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-static {v1}, Lcom/android/settings/dk;->c(Lcom/android/settings/dk;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/as;->e(Lcom/android/settings/as;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    invoke-static {v1}, Lcom/android/settings/dk;->c(Lcom/android/settings/dk;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 216
    :cond_0
    return-object p2

    .line 207
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dk;

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 213
    goto :goto_1
.end method
