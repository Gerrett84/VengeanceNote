.class Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic bC:Lcom/android/settings/applications/ManageApplications;

.field dF:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 1
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->dF:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 480
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 472
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->d(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 484
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->bC:Lcom/android/settings/applications/ManageApplications;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->dF:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->aO(I)V

    .line 506
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;->dF:I

    .line 499
    return-void
.end method
