.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/bV;
.source "ProgressCategory.java"


# instance fields
.field private yP:Z

.field private yQ:Landroid/preference/Preference;

.field private yR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bV;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->yP:Z

    .line 33
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public N(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->yP:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 68
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/bV;->onBindView(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    .line 43
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->yP:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->yP:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_5

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->yR:Z

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/ProgressCategory;->yR:Z

    .line 62
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    .line 51
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->yR:Z

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 53
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    const v3, 0x7f040054

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    const v3, 0x7f0b0079

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 58
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->yR:Z

    goto :goto_2
.end method
