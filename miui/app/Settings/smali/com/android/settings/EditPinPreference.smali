.class Lcom/android/settings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# instance fields
.field private Kq:Lcom/android/settings/dW;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/dW;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->Kq:Lcom/android/settings/dW;

    .line 48
    return-void
.end method

.method public bM()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 80
    :cond_1
    return-void
.end method

.method public la()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->Kq:Lcom/android/settings/dW;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->Kq:Lcom/android/settings/dW;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/dW;->a(Lcom/android/settings/EditPinPreference;Z)V

    .line 73
    :cond_0
    return-void
.end method
