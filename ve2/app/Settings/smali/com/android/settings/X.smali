.class Lcom/android/settings/X;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field final synthetic fa:Lcom/android/settings/y;


# direct methods
.method constructor <init>(Lcom/android/settings/y;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/X;->fa:Lcom/android/settings/y;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/X;->fa:Lcom/android/settings/y;

    invoke-static {v0}, Lcom/android/settings/y;->a(Lcom/android/settings/y;)Landroid/view/View$OnHoverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/X;->fa:Lcom/android/settings/y;

    invoke-static {v0}, Lcom/android/settings/y;->a(Lcom/android/settings/y;)Landroid/view/View$OnHoverListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
