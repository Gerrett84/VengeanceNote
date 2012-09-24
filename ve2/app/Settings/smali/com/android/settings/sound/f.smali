.class Lcom/android/settings/sound/f;
.super Ljava/lang/Object;
.source "SilentModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Cx:Lcom/android/settings/sound/SilentModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/SilentModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/sound/f;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/sound/f;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-static {v0}, Lcom/android/settings/sound/SilentModeActivity;->a(Lcom/android/settings/sound/SilentModeActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/sound/f;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-static {v0, p2}, Lcom/android/settings/sound/SilentModeActivity;->a(Lcom/android/settings/sound/SilentModeActivity;I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/settings/sound/f;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-static {v1}, Lcom/android/settings/sound/SilentModeActivity;->b(Lcom/android/settings/sound/SilentModeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 42
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/sound/f;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/SilentModeActivity;->finish()V

    .line 44
    return-void
.end method
