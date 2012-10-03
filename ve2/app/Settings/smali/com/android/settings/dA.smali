.class Lcom/android/settings/dA;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kr:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/dA;->Kr:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/dA;->Kr:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qY:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    .line 303
    return-void
.end method
