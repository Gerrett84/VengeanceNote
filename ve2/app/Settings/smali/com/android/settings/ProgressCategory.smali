.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/bL;
.source "ProgressCategory.java"


# instance fields
.field private vU:Z

.field private vV:Landroid/preference/Preference;

.field private vW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->vU:Z

    .line 33
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public O(Z)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->vU:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 71
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/bL;->onBindView(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    const v1, 0x7f0800e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 42
    iget-boolean v1, p0, Lcom/android/settings/ProgressCategory;->vU:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0b0075

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    if-ne v1, v4, :cond_5

    :cond_0
    move v4, v5

    .line 45
    :goto_1
    if-eqz v4, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->vU:Z

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->vU:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_7

    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->vW:Z

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    iput-boolean v3, p0, Lcom/android/settings/ProgressCategory;->vW:Z

    .line 65
    :cond_3
    :goto_3
    return-void

    .line 42
    :cond_4
    const v1, 0x7f0b0076

    goto :goto_0

    :cond_5
    move v4, v3

    .line 43
    goto :goto_1

    :cond_6
    move v1, v3

    .line 45
    goto :goto_2

    .line 54
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->vW:Z

    if-nez v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    if-nez v0, :cond_8

    .line 56
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    const v1, 0x7f040050

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->vV:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 62
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->vW:Z

    goto :goto_3
.end method
