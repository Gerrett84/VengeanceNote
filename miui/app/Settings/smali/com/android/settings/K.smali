.class Lcom/android/settings/K;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cR:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings/K;->cR:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/K;->cR:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    return-void
.end method
