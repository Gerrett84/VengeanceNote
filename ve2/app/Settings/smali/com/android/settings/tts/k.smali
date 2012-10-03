.class public Lcom/android/settings/tts/k;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# instance fields
.field private final Kd:Landroid/preference/PreferenceActivity;

.field private final Ke:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final Kf:Lcom/android/settings/tts/c;

.field private volatile Kg:Z

.field private Kh:Landroid/view/View;

.field private Ki:Landroid/widget/RadioButton;

.field private Kj:Landroid/content/Intent;

.field private final Kk:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/c;Landroid/preference/PreferenceActivity;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/settings/tts/h;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/h;-><init>(Lcom/android/settings/tts/k;)V

    iput-object v0, p0, Lcom/android/settings/tts/k;->Kk:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 93
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/k;->setLayoutResource(I)V

    .line 95
    iput-object p3, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    .line 96
    iput-object p4, p0, Lcom/android/settings/tts/k;->Kd:Landroid/preference/PreferenceActivity;

    .line 97
    iput-object p2, p0, Lcom/android/settings/tts/k;->Ke:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/k;->Kg:Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/tts/k;->Ke:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/k;->setKey(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/tts/k;->Ke:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/k;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/android/settings/tts/k;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/k;->Ke:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method private a(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/tts/k;->Kg:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    if-eqz p2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v0}, Lcom/android/settings/tts/c;->cR()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v0}, Lcom/android/settings/tts/c;->cR()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/c;->a(Landroid/widget/Checkable;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-virtual {p0}, Lcom/android/settings/tts/k;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/c;->v(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v0}, Lcom/android/settings/tts/c;->cQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/k;->callChangeListener(Ljava/lang/Object;)Z

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/tts/k;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/k;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/tts/k;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kj:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/tts/k;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kd:Landroid/preference/PreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    const v0, 0x7f0800f0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 113
    iget-object v4, p0, Lcom/android/settings/tts/k;->Kk:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/tts/k;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v5}, Lcom/android/settings/tts/c;->cQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/settings/tts/k;->Kf:Lcom/android/settings/tts/c;

    invoke-interface {v5, v0}, Lcom/android/settings/tts/c;->a(Landroid/widget/Checkable;)V

    .line 120
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/tts/k;->Kg:Z

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    iput-boolean v2, p0, Lcom/android/settings/tts/k;->Kg:Z

    .line 124
    iput-object v0, p0, Lcom/android/settings/tts/k;->Ki:Landroid/widget/RadioButton;

    .line 126
    const v5, 0x7f0800f1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 127
    new-instance v6, Lcom/android/settings/tts/j;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/tts/j;-><init>(Lcom/android/settings/tts/k;Landroid/widget/RadioButton;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0800f2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    .line 137
    iget-object v5, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/tts/k;->Kj:Landroid/content/Intent;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    new-instance v1, Lcom/android/settings/tts/i;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/i;-><init>(Lcom/android/settings/tts/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kj:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/k;->Ki:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    .line 137
    goto :goto_0
.end method

.method public h(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/tts/k;->Kj:Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/k;->Ki:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/tts/k;->Kh:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/k;->Ki:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method
