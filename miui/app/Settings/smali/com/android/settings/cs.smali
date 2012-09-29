.class public Lcom/android/settings/cs;
.super Landroid/preference/TwoStatePreference;
.source "FontSizePreference.java"


# instance fields
.field private Fl:I

.field private Fm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/android/settings/cs;->setLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 28
    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/cs;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 31
    iget v0, p0, Lcom/android/settings/cs;->Fl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 32
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    iget v1, p0, Lcom/android/settings/cs;->Fm:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    iget v1, p0, Lcom/android/settings/cs;->Fm:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/cs;->Fl:I

    .line 21
    iput p2, p0, Lcom/android/settings/cs;->Fm:I

    .line 22
    return-void
.end method
