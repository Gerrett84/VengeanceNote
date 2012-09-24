.class Lcom/android/settings/cr;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# instance fields
.field final synthetic Et:Lcom/android/settings/DeviceAdminSettings;

.field final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/cr;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/cr;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/android/settings/bE;

    invoke-direct {v2}, Lcom/android/settings/bE;-><init>()V

    .line 169
    const v0, 0x7f080019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/settings/bE;->icon:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f08006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings/bE;->oj:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f08006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/android/settings/bE;->wA:Landroid/widget/CheckBox;

    .line 172
    const v0, 0x7f08006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings/bE;->ok:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-object v1
.end method

.method public a(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bE;

    .line 180
    iget-object v1, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminSettings;->us:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 181
    iget-object v3, v0, Lcom/android/settings/bE;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v3, v0, Lcom/android/settings/bE;->oj:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, v0, Lcom/android/settings/bE;->wA:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceAdminSettings;->ur:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    :try_start_0
    iget-object v0, v0, Lcom/android/settings/bE;->ok:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->us:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/cr;->Et:Lcom/android/settings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->us:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/settings/cr;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/cr;->a(Landroid/view/View;I)V

    .line 163
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method
