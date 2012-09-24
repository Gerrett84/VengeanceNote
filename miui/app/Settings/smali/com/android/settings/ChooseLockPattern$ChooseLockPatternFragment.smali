.class public Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected cY:Lmiui/security/ChooseLockSettingsHelper;

.field protected qY:Landroid/widget/TextView;

.field protected qZ:Lmiui/widget/LockPatternView;

.field protected ra:Landroid/widget/TextView;

.field private rb:Landroid/widget/TextView;

.field private rc:Landroid/widget/TextView;

.field protected rd:Ljava/util/List;

.field private final re:Ljava/util/List;

.field protected rf:Lmiui/widget/LockPatternView$OnPatternListener;

.field private rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private rh:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->re:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/android/settings/dB;

    invoke-direct {v0, p0}, Lcom/android/settings/dB;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rf:Lmiui/widget/LockPatternView$OnPatternListener;

    .line 298
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 300
    new-instance v0, Lcom/android/settings/dA;

    invoke-direct {v0, p0}, Lcom/android/settings/dA;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rh:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rh:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    return-object v0
.end method

.method private eK()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 530
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rh:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 460
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 464
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iL:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qY:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :goto_0
    iget v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->ra:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :goto_1
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->aa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 490
    iget-boolean v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->enableInput()V

    .line 498
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 500
    sget-object v0, Lcom/android/settings/c;->V:[I

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 523
    :goto_4
    :pswitch_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qY:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->ra:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->re:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lmiui/widget/LockPatternView;->setPattern(Lmiui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 508
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 509
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eK()V

    goto :goto_4

    .line 514
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 517
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 518
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->eK()V

    goto :goto_4

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bv()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iN:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->cY:Lmiui/security/ChooseLockSettingsHelper;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, v3, v3}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 380
    if-nez v0, :cond_0

    .line 381
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method protected bw()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 535
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v3

    .line 536
    invoke-virtual {v3}, Lmiui/security/MiuiLockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 540
    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 541
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 543
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 545
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 550
    return-void

    :cond_1
    move v0, v2

    .line 536
    goto :goto_0
.end method

.method protected bx()V
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0b0384

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 367
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Y:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    .line 392
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    .line 393
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->W:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 405
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_4
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iN:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ae:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 411
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iP:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iP:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ae:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->bw()V

    goto/16 :goto_0

    .line 416
    :cond_7
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ag:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iK:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 423
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 315
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->cY:Lmiui/security/ChooseLockSettingsHelper;

    .line 316
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->bx()V

    .line 326
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 327
    const v0, 0x7f08001b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qY:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f080022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    .line 329
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rf:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setOnPatternListener(Lmiui/widget/LockPatternView$OnPatternListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->cY:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 333
    const v0, 0x7f080023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->ra:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f080024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f080025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    .line 338
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v0, 0x7f080021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 346
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->qZ:Lmiui/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 348
    if-nez p3, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->bv()V

    .line 358
    :goto_0
    return-object v1

    .line 352
    :cond_0
    const-string v0, "chosenPattern"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    .line 354
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    .line 356
    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    const-string v2, "uiStage"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 445
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rg:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->rd:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method
