.class Lcom/android/settings/bn;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# instance fields
.field final synthetic sY:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/bn;->sY:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/bn;->sY:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 117
    :cond_0
    return-void
.end method
