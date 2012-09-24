.class Lcom/android/settings/sound/e;
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
    .line 46
    iput-object p1, p0, Lcom/android/settings/sound/e;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/sound/e;->Cx:Lcom/android/settings/sound/SilentModeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/SilentModeActivity;->finish()V

    .line 51
    return-void
.end method
