.class Lcom/android/settings/cl;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# instance fields
.field final synthetic Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 300
    iget-object v0, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->HW:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 301
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->e(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0398

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 292
    iget-object v1, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->f(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cl;->Cu:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f0b0399

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method
