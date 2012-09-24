.class Lcom/android/settings/tts/f;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic Eq:Lcom/android/settings/tts/i;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/i;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/tts/f;->Eq:Lcom/android/settings/tts/i;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/tts/f;->Eq:Lcom/android/settings/tts/i;

    invoke-static {v0, p1, p2}, Lcom/android/settings/tts/i;->a(Lcom/android/settings/tts/i;Landroid/widget/CompoundButton;Z)V

    .line 87
    return-void
.end method
