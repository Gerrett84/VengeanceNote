.class public Lcom/android/settings/wifi/m;
.super Landroid/app/Fragment;
.source "MiuiAddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/t;


# instance fields
.field private cP:Lcom/android/settings/wifi/S;

.field private cQ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/wifi/m;->cQ:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 74
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/m;->setHasOptionsMenu(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getView()Landroid/view/View;

    move-result-object v2

    .line 37
    new-instance v0, Lcom/android/settings/wifi/S;

    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/S;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/t;)V

    iput-object v0, p0, Lcom/android/settings/wifi/m;->cP:Lcom/android/settings/wifi/S;

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 43
    const/high16 v0, 0x104

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 45
    const/4 v0, 0x2

    const v1, 0x1040013

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 46
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 47
    iget-boolean v1, p0, Lcom/android/settings/wifi/m;->cQ:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 53
    packed-switch v1, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/m;->cP:Lcom/android/settings/wifi/S;

    invoke-virtual {v1}, Lcom/android/settings/wifi/S;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 61
    const-string v3, "config"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
