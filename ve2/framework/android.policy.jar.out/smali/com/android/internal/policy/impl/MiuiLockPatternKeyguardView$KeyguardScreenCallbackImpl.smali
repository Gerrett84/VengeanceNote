.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;
.super Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardScreenCallbackImpl"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    .line 63
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;-><init>(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 64
    return-void
.end method


# virtual methods
.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->keyguardDone(Z)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallbackProxy;->keyguardDone(Z)V

    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->mPendingIntent:Landroid/content/Intent;

    .line 95
    return-void
.end method
