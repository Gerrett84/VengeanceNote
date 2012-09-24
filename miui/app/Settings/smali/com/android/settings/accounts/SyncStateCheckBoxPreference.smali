.class public Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mIsPending:Z

.field private oq:Z

.field private or:Z

.field private os:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->oq:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->or:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    .line 52
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 53
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 54
    const v0, 0x7f040064

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->oq:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->or:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    .line 45
    const v0, 0x7f040064

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 46
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 47
    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/AnimatedImageView;

    .line 62
    const v1, 0x7f0800f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 64
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->oq:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    .line 65
    :goto_0
    if-eqz v5, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AnimatedImageView;->setVisibility(I)V

    .line 66
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->oq:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->or:Z

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    move v0, v4

    .line 69
    :goto_2
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b058e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_4
    return-void

    :cond_1
    move v5, v2

    .line 64
    goto :goto_0

    :cond_2
    move v1, v3

    .line 65
    goto :goto_1

    :cond_3
    move v0, v2

    .line 68
    goto :goto_2

    :cond_4
    move v0, v3

    .line 69
    goto :goto_3

    .line 83
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 136
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->oq:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 94
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->or:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 112
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->os:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 120
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 103
    return-void
.end method
