.class Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;
.super Ljava/lang/Object;
.source "MiuiInCallAnswerWidgetHorizontal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->showOuterRing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getAlpha()F

    move-result v0

    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal$2;->this$0:Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;->invalidate()V

    .line 417
    return-void
.end method
