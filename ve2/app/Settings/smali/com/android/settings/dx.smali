.class Lcom/android/settings/dx;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic Jc:Lcom/android/settings/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/dx;->Jc:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/dx;->Jc:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->a(Lcom/android/settings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/settings/dx;->Jc:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v1}, Lcom/android/settings/AccessibilityTutorialActivity;->a(Lcom/android/settings/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bF;

    .line 84
    iget-object v1, p0, Lcom/android/settings/dx;->Jc:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-static {v1, v0}, Lcom/android/settings/AccessibilityTutorialActivity;->a(Lcom/android/settings/AccessibilityTutorialActivity;Lcom/android/settings/bF;)V

    .line 85
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method
