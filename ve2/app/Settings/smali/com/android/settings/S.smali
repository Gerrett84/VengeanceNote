.class public Lcom/android/settings/S;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# instance fields
.field private eT:Lcom/android/settings/cB;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 617
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/cB;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/settings/S;->eT:Lcom/android/settings/cB;

    .line 621
    return-void
.end method

.method public n(Z)V
    .locals 0
    .parameter

    .prologue
    .line 633
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 634
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings/S;->eT:Lcom/android/settings/cB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/S;->eT:Lcom/android/settings/cB;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/cB;->a(Lcom/android/settings/S;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
