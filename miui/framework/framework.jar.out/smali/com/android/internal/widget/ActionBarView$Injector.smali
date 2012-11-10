.class Lcom/android/internal/widget/ActionBarView$Injector;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getUpViewVisibility(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/view/View;)I
    .locals 2
    .parameter "homeView"
    .parameter "upView"

    .prologue
    const/16 v0, 0x8

    .line 103
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 2
    .parameter "homeView"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 77
    .local v0, iconView:Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "homeView"
    .parameter "icon"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    .line 87
    return-void
.end method

.method static switchToCompactMode(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 6
    .parameter "homeView"

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpView()Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, upView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 96
    check-cast v1, Landroid/widget/ImageView;

    .end local v1           #upView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    .line 100
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 97
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
