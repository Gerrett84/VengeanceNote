.class Lcom/android/settings/tts/b;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dX:Lcom/android/settings/tts/g;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/g;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/tts/b;->dX:Lcom/android/settings/tts/g;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/tts/b;->dX:Lcom/android/settings/tts/g;

    iget-object v0, v0, Lcom/android/settings/tts/g;->Cn:Lcom/android/settings/tts/a;

    invoke-static {v0}, Lcom/android/settings/tts/a;->a(Lcom/android/settings/tts/a;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/tts/b;->dX:Lcom/android/settings/tts/g;

    iget-object v0, v0, Lcom/android/settings/tts/g;->Cn:Lcom/android/settings/tts/a;

    invoke-static {v0}, Lcom/android/settings/tts/a;->b(Lcom/android/settings/tts/a;)V

    .line 67
    return-void
.end method
