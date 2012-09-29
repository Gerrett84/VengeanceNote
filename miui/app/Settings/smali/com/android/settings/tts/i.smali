.class Lcom/android/settings/tts/i;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Il:Lcom/android/settings/tts/k;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/k;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 142
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v1}, Lcom/android/settings/tts/k;->a(Lcom/android/settings/tts/k;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v1}, Lcom/android/settings/tts/k;->a(Lcom/android/settings/tts/k;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v0}, Lcom/android/settings/tts/k;->b(Lcom/android/settings/tts/k;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v1}, Lcom/android/settings/tts/k;->b(Lcom/android/settings/tts/k;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v0}, Lcom/android/settings/tts/k;->c(Lcom/android/settings/tts/k;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/tts/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/tts/i;->Il:Lcom/android/settings/tts/k;

    invoke-static {v4}, Lcom/android/settings/tts/k;->a(Lcom/android/settings/tts/k;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 155
    return-void
.end method
