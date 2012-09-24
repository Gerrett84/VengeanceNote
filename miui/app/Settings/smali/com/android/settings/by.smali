.class Lcom/android/settings/by;
.super Landroid/support/v4/view/PagerAdapter;
.source "MiuiSettings.java"


# instance fields
.field private final vf:Landroid/app/FragmentManager;

.field private vg:Landroid/app/FragmentTransaction;

.field final synthetic vh:Lcom/android/settings/MiuiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/by;->vh:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/by;->vf:Landroid/app/FragmentManager;

    .line 227
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/by;->vf:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 256
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    .line 263
    iget-object v0, p0, Lcom/android/settings/by;->vf:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 265
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/android/settings/MiuiSettings$TabState;->values()[Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/by;->vh:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/FrequentlyFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 238
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mX:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/by;->vh:Lcom/android/settings/MiuiSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiSettings;->b(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 241
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mY:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/by;->vf:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/by;->vh:Lcom/android/settings/MiuiSettings;

    invoke-static {v0, p2}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings;I)Landroid/app/Fragment;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/settings/by;->vg:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 288
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    return-void
.end method
