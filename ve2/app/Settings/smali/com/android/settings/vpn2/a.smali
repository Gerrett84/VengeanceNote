.class Lcom/android/settings/vpn2/a;
.super Landroid/preference/Preference;
.source "VpnSettings.java"


# instance fields
.field private dm:Lcom/android/settings/vpn2/c;

.field final synthetic dn:Lcom/android/settings/vpn2/VpnSettings;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 464
    iput-object p1, p0, Lcom/android/settings/vpn2/a;->dn:Lcom/android/settings/vpn2/VpnSettings;

    .line 465
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 462
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/vpn2/a;->mState:I

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/a;->setPersistent(Z)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/a;->setOrder(I)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/a;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 470
    iput-object p3, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 472
    return-void
.end method


# virtual methods
.method Y()Lcom/android/settings/vpn2/c;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    return-object v0
.end method

.method a(Lcom/android/settings/vpn2/c;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 481
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter

    .prologue
    .line 504
    const/4 v0, -0x1

    .line 505
    instance-of v1, p1, Lcom/android/settings/vpn2/a;

    if-eqz v1, :cond_0

    .line 506
    check-cast p1, Lcom/android/settings/vpn2/a;

    .line 507
    iget v0, p1, Lcom/android/settings/vpn2/a;->mState:I

    iget v1, p0, Lcom/android/settings/vpn2/a;->mState:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget-object v1, v1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget v0, v0, Lcom/android/settings/vpn2/c;->type:I

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget v1, v1, Lcom/android/settings/vpn2/c;->type:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget-object v1, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 513
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 460
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/a;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method update()V
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/android/settings/vpn2/a;->mState:I

    if-gez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget v1, v1, Lcom/android/settings/vpn2/c;->type:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dm:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->notifyHierarchyChanged()V

    .line 500
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 496
    iget v1, p0, Lcom/android/settings/vpn2/a;->mState:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method update(I)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput p1, p0, Lcom/android/settings/vpn2/a;->mState:I

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 486
    return-void
.end method
