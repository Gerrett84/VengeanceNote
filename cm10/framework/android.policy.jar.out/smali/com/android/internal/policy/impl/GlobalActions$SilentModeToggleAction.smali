.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 894
    const v1, 0x10802a3

    const v2, 0x10802a2

    const v3, 0x104015c

    const v4, 0x104015d

    const v5, 0x104015e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 899
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 902
    if-eqz p1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method
