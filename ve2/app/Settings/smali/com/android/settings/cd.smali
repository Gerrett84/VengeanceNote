.class public Lcom/android/settings/cd;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private Ae:Ljava/util/ArrayList;

.field private Af:Landroid/graphics/drawable/Drawable;

.field private Ag:Landroid/widget/ImageView;

.field private Ah:Landroid/widget/ImageView;

.field private mAccount:Landroid/accounts/Account;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/cd;->mAccount:Landroid/accounts/Account;

    .line 50
    iput-object p4, p0, Lcom/android/settings/cd;->Ae:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lcom/android/settings/cd;->Af:Landroid/graphics/drawable/Drawable;

    .line 52
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setWidgetLayoutResource(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/cd;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setPersistent(Z)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->av(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/cd;->Af:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method private aw(I)I
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f0b053a

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 106
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    :pswitch_0
    return v0

    .line 96
    :pswitch_1
    const v0, 0x7f0b0538

    .line 97
    goto :goto_0

    .line 99
    :pswitch_2
    const v0, 0x7f0b0539

    .line 100
    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private ax(I)I
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f020091

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 125
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    :pswitch_0
    return v0

    .line 115
    :pswitch_1
    const v0, 0x7f02008d

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    const v0, 0x7f02008f

    .line 119
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private ay(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b052f

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 139
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/cd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/cd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b052d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/cd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b052e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/cd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public av(I)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/cd;->mStatus:I

    .line 86
    iget-object v0, p0, Lcom/android/settings/cd;->Ag:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/cd;->Ag:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/cd;->ax(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/cd;->aw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setSummary(I)V

    .line 90
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/cd;->Af:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/android/settings/cd;->Ah:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/cd;->Ah:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter

    .prologue
    .line 146
    instance-of v0, p1, Lcom/android/settings/cd;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cd;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/cd;

    iget-object v1, p1, Lcom/android/settings/cd;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/cd;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public dk()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/cd;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/cd;->Ae:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    iget v0, p0, Lcom/android/settings/cd;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/cd;->aw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cd;->setSummary(I)V

    .line 72
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/cd;->Ag:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/android/settings/cd;->Ag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/cd;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/cd;->ax(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/cd;->Ag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/cd;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/cd;->ay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
