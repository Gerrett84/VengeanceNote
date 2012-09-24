.class Lcom/android/settings/wifi/s;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/p;


# instance fields
.field private mView:Landroid/view/View;

.field private final pQ:Z

.field private final pR:Landroid/content/DialogInterface$OnClickListener;

.field private final pS:Lcom/android/settings/wifi/AccessPoint;

.field private pT:Lcom/android/settings/wifi/N;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const v0, 0x7f0e001d

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-boolean p4, p0, Lcom/android/settings/wifi/s;->pQ:Z

    .line 43
    iput-object p2, p0, Lcom/android/settings/wifi/s;->pR:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    iput-object p3, p0, Lcom/android/settings/wifi/s;->pS:Lcom/android/settings/wifi/AccessPoint;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/s;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 84
    return-void
.end method

.method public av()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/s;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/s;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 89
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/s;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    return-void
.end method

.method public ej()Lcom/android/settings/wifi/N;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/s;->pT:Lcom/android/settings/wifi/N;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/s;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/s;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/s;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/s;->setView(Landroid/view/View;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/s;->setInverseBackgroundForced(Z)V

    .line 57
    new-instance v0, Lcom/android/settings/wifi/N;

    iget-object v1, p0, Lcom/android/settings/wifi/s;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/s;->pS:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings/wifi/s;->pQ:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/N;-><init>(Lcom/android/settings/wifi/p;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/s;->pT:Lcom/android/settings/wifi/N;

    .line 58
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method
