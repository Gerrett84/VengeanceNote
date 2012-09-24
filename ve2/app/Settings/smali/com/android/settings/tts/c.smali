.class Lcom/android/settings/tts/c;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sO:Ljava/lang/String;

.field final synthetic sP:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings/tts/c;->sP:Lcom/android/settings/tts/TextToSpeechSettings;

    iput-object p2, p0, Lcom/android/settings/tts/c;->sO:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/tts/c;->sP:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/settings/tts/c;->sO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->a(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    .line 361
    return-void
.end method
