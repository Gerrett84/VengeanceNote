.class Lcom/android/settings/ck;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lmiui/widget/LockPatternView$OnPatternListener;


# instance fields
.field final synthetic Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiui/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/util/List;)V

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->c(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->ua:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 271
    iget-object v2, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->HT:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->d(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiui/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ck;->Cq:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method
