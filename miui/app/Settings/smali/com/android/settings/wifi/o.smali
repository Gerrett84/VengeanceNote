.class public Lcom/android/settings/wifi/o;
.super Landroid/app/Fragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/t;


# instance fields
.field private cP:Lcom/android/settings/wifi/S;

.field private cQ:Z

.field private eZ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/o;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/wifi/o;->eZ:I

    return v0
.end method


# virtual methods
.method public e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/wifi/o;->cQ:Z

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/wifi/o;->cQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/o;->cP:Lcom/android/settings/wifi/S;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/o;->cP:Lcom/android/settings/wifi/S;

    invoke-virtual {v0}, Lcom/android/settings/wifi/S;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    const-string v1, "config"

    iget-object v2, p0, Lcom/android/settings/wifi/o;->cP:Lcom/android/settings/wifi/S;

    invoke-virtual {v2}, Lcom/android/settings/wifi/S;->ds()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/o;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getView()Landroid/view/View;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/o;->eZ:I

    .line 49
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 50
    iget v1, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v1, p0, Lcom/android/settings/wifi/o;->eZ:I

    .line 51
    const v1, 0x7f0b06e0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/settings/wifi/AccessPoint;->nD:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/wifi/o;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/S;

    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/S;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/t;)V

    iput-object v0, p0, Lcom/android/settings/wifi/o;->cP:Lcom/android/settings/wifi/S;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    iget v0, p0, Lcom/android/settings/wifi/o;->eZ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 59
    const v0, 0x7f0b01cf

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b06dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/wifi/V;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/V;-><init>(Lcom/android/settings/wifi/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/android/settings/wifi/T;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/T;-><init>(Lcom/android/settings/wifi/o;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
