.class Lcom/android/settings/tts/h;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Eq:Lcom/android/settings/tts/i;

.field final synthetic Es:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/i;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/tts/h;->Eq:Lcom/android/settings/tts/i;

    iput-object p2, p0, Lcom/android/settings/tts/h;->Es:Landroid/widget/RadioButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings/tts/h;->Eq:Lcom/android/settings/tts/i;

    iget-object v2, p0, Lcom/android/settings/tts/h;->Es:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/tts/h;->Es:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/settings/tts/i;->a(Lcom/android/settings/tts/i;Landroid/widget/CompoundButton;Z)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
