.class Lcom/android/settings/tts/j;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Il:Lcom/android/settings/tts/k;

.field final synthetic Im:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/k;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/tts/j;->Il:Lcom/android/settings/tts/k;

    iput-object p2, p0, Lcom/android/settings/tts/j;->Im:Landroid/widget/RadioButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings/tts/j;->Il:Lcom/android/settings/tts/k;

    iget-object v2, p0, Lcom/android/settings/tts/j;->Im:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/tts/j;->Im:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/settings/tts/k;->a(Lcom/android/settings/tts/k;Landroid/widget/CompoundButton;Z)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
