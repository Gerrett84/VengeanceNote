.class public Lcom/android/settings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1585
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/P;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    :goto_0
    return-void

    .line 1591
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1594
    new-instance v1, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1595
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1596
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1597
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1598
    const-string v2, "appDetails"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1599
    const-string v1, "appDetails"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1600
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1601
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1606
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1608
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/P;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/P;)Lcom/android/settings/P;

    .line 1609
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;)V

    .line 1610
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1614
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1615
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1616
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/P;)Lcom/android/settings/P;

    .line 1617
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;)V

    .line 1618
    return-void
.end method
