.class Lcom/android/settings/vpn2/a;
.super Landroid/preference/Preference;
.source "VpnSettings.java"


# instance fields
.field private dX:Lcom/android/settings/vpn2/c;

.field final synthetic dY:Lcom/android/settings/vpn2/VpnSettings;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 476
    iput-object p1, p0, Lcom/android/settings/vpn2/a;->dY:Lcom/android/settings/vpn2/VpnSettings;

    .line 477
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/vpn2/a;->mState:I

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/a;->setPersistent(Z)V

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/a;->setOrder(I)V

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/a;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 482
    iput-object p3, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 484
    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/vpn2/c;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 493
    return-void
.end method

.method ad()Lcom/android/settings/vpn2/c;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    return-object v0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter

    .prologue
    .line 516
    const/4 v0, -0x1

    .line 517
    instance-of v1, p1, Lcom/android/settings/vpn2/a;

    if-eqz v1, :cond_0

    .line 518
    check-cast p1, Lcom/android/settings/vpn2/a;

    .line 519
    iget v0, p1, Lcom/android/settings/vpn2/a;->mState:I

    iget v1, p0, Lcom/android/settings/vpn2/a;->mState:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget-object v1, v1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget v0, v0, Lcom/android/settings/vpn2/c;->type:I

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget v1, v1, Lcom/android/settings/vpn2/c;->type:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget-object v1, v1, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 525
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 472
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/a;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method update()V
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/android/settings/vpn2/a;->mState:I

    if-gez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget v1, v1, Lcom/android/settings/vpn2/c;->type:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->dX:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->notifyHierarchyChanged()V

    .line 512
    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 508
    iget v1, p0, Lcom/android/settings/vpn2/a;->mState:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method update(I)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput p1, p0, Lcom/android/settings/vpn2/a;->mState:I

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->update()V

    .line 498
    return-void
.end method
