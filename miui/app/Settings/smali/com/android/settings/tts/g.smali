.class Lcom/android/settings/tts/g;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic Cn:Lcom/android/settings/tts/a;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/a;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/tts/g;->Cn:Lcom/android/settings/tts/a;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .parameter

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/tts/g;->Cn:Lcom/android/settings/tts/a;

    invoke-virtual {v0}, Lcom/android/settings/tts/a;->md()V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/g;->Cn:Lcom/android/settings/tts/a;

    invoke-virtual {v0}, Lcom/android/settings/tts/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/b;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/b;-><init>(Lcom/android/settings/tts/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
