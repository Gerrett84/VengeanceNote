.class public Lcom/android/internal/policy/impl/MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMES:F = 1.2f

.field public static final LOG_TAG:Ljava/lang/String; = "MagnifierPopupWindow"

.field private static final MSG_HIDE_MAGNIFIER:I = 0x3

.field private static final MSG_SHOW_MAGNIFIER:I = 0x2

.field private static final MSG_UPDATE_CACHE:I = 0x1

.field private static final REFRESH_DELAY:I = 0x3e8

.field private static final UPDATE_CACHE_DELAY:I = 0x50


# instance fields
.field private mAnimationEnter:Landroid/view/animation/Animation;

.field private mAnimationExit:Landroid/view/animation/Animation;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFingerOffset:I

.field mHandler:Landroid/os/Handler;

.field private mLocationX:I

.field private mLocationY:I

.field private mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

.field private mMaxLayer:I

.field private mToken:Landroid/os/IBinder;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "maxLayer"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "maxLayer"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 245
    new-instance v0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;-><init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    .line 209
    iput p2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMaxLayer:I

    .line 210
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    .line 211
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    new-instance v0, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    const v1, 0x3f99999a

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;-><init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->setClickable(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setFocusable(Z)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setTouchable(Z)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setInputMethodMode(I)V

    .line 220
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    const v0, 0x6040010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 222
    const v0, 0x6040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/view/animation/Animation;

    .line 223
    const/16 v0, 0x7e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setWindowLayoutType(I)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 225
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mFingerOffset:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mFingerOffset:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMaxLayer:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    return-object v0
.end method

.method private showMagnifier()V
    .locals 5

    .prologue
    .line 256
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v4, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(Landroid/graphics/Rect;)V

    .line 257
    return-void
.end method

.method private showMagnifier(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "clip"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->measure(II)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setWidth(I)V

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setHeight(I)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    return-void
.end method

.method public showMagnifier(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 239
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    .line 240
    iput p2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    :cond_1
    return-void
.end method

.method public updateCache()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 234
    return-void
.end method
