.class Lcom/android/settings/wifi/u;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/p;


# instance fields
.field private mView:Landroid/view/View;

.field private final sd:Z

.field private final se:Landroid/content/DialogInterface$OnClickListener;

.field private final sf:Lcom/android/settings/wifi/AccessPoint;

.field private sg:Lcom/android/settings/wifi/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const v0, 0x7f0f001d

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-boolean p4, p0, Lcom/android/settings/wifi/u;->sd:Z

    .line 43
    iput-object p2, p0, Lcom/android/settings/wifi/u;->se:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    iput-object p3, p0, Lcom/android/settings/wifi/u;->sf:Lcom/android/settings/wifi/AccessPoint;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/u;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    return-void
.end method

.method public ar()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/u;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/u;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/u;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    return-void
.end method

.method public fh()Lcom/android/settings/wifi/W;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/u;->sg:Lcom/android/settings/wifi/W;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/u;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/u;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/u;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/u;->setView(Landroid/view/View;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/u;->setInverseBackgroundForced(Z)V

    .line 57
    new-instance v0, Lcom/android/settings/wifi/W;

    iget-object v1, p0, Lcom/android/settings/wifi/u;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/u;->sf:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings/wifi/u;->sd:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/W;-><init>(Lcom/android/settings/wifi/p;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/u;->sg:Lcom/android/settings/wifi/W;

    .line 58
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/u;->sg:Lcom/android/settings/wifi/W;

    invoke-virtual {v0}, Lcom/android/settings/wifi/W;->lj()V

    .line 62
    return-void
.end method
