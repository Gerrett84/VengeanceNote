.class public Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseAccessControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bA()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiui/security/MiuiLockPatternUtils;->saveACLockPattern(Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 38
    return-void
.end method

.method protected bB()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0b06a2

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 43
    return-void
.end method

.method protected bz()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseAccessControl$ChooseAccessControlFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 29
    return-void
.end method
