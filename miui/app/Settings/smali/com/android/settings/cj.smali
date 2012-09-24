.class Lcom/android/settings/cj;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/cj;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/cj;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiui/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    .line 232
    return-void
.end method
