.class Lcom/android/settings/sound/g;
.super Ljava/lang/Object;
.source "SilentModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic Cx:Lcom/android/settings/sound/SilentModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/SilentModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/sound/g;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/sound/g;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/SilentModeActivity;->finish()V

    .line 58
    return-void
.end method
