.class Lcom/android/internal/policy/impl/PhoneWindow$Injector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawRoundedCorners(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "wnd"
    .parameter "decor"
    .parameter "c"
    .parameter "frameOffsets"
    .parameter "drawingBounds"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRoundedCorners:Lcom/android/internal/policy/impl/RoundedCorners;

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/android/internal/policy/impl/RoundedCorners;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RoundedCorners;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRoundedCorners:Lcom/android/internal/policy/impl/RoundedCorners;

    .line 136
    :cond_2
    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRoundedCorners:Lcom/android/internal/policy/impl/RoundedCorners;

    iget v2, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p4, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/RoundedCorners;->draw(Landroid/graphics/Canvas;IIII)V

    goto :goto_0
.end method

.method static handleIcsAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .parameter "wnd"
    .parameter "wm"
    .parameter "lp"

    .prologue
    .line 111
    const/4 v0, -0x2

    .line 112
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    const/4 v1, 0x1

    .line 113
    .local v1, isIcsApp:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 114
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 115
    .local v2, rotation:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 117
    const/4 v0, -0x1

    .line 119
    :cond_0
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    const v3, 0x3f333333

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 123
    .end local v2           #rotation:I
    :cond_1
    return-void

    .line 112
    .end local v1           #isIcsApp:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
