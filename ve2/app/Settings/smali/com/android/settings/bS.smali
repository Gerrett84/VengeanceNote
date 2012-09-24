.class public Lcom/android/settings/bS;
.super Lmiui/widget/SlidingButton;
.source "MiuiAccessibilitySettings.java"


# instance fields
.field private xZ:Lcom/android/settings/aO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 588
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/aO;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/settings/bS;->xZ:Lcom/android/settings/aO;

    .line 592
    return-void
.end method

.method public n(Z)V
    .locals 0
    .parameter

    .prologue
    .line 604
    invoke-super {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 605
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/bS;->xZ:Lcom/android/settings/aO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bS;->xZ:Lcom/android/settings/aO;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/aO;->a(Lcom/android/settings/bS;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-super {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0
.end method
