.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->hideBootMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 905
    :cond_0
    return-void
.end method
