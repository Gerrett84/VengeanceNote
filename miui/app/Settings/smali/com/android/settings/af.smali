.class public Lcom/android/settings/af;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# instance fields
.field private fB:Lcom/android/settings/cO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 598
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/cO;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/settings/af;->fB:Lcom/android/settings/cO;

    .line 602
    return-void
.end method

.method public l(Z)V
    .locals 0
    .parameter

    .prologue
    .line 614
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 615
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/af;->fB:Lcom/android/settings/cO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/af;->fB:Lcom/android/settings/cO;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/cO;->a(Lcom/android/settings/af;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
