.class public Lcom/android/settings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# instance fields
.field private Ac:Landroid/widget/Button;

.field private Ad:Landroid/view/View$OnClickListener;

.field private mB:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/ca;

    invoke-direct {v0, p0}, Lcom/android/settings/ca;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->Ad:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private gV()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mB:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->Ac:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->Ac:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm;->Ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mB:Landroid/view/View;

    .line 108
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->gV()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mB:Landroid/view/View;

    return-object v0
.end method
