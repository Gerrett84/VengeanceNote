.class public Lcom/android/settings/MediaFormat;
.super Lcom/android/settings/z;
.source "MediaFormat.java"


# instance fields
.field private Aa:Landroid/view/View;

.field private Ab:Landroid/view/View;

.field private Ac:Landroid/widget/Button;

.field private Ad:Landroid/view/View$OnClickListener;

.field private mC:Landroid/widget/Button;

.field private mF:Landroid/view/View$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/z;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/h;

    invoke-direct {v0, p0}, Lcom/android/settings/h;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Ad:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/settings/i;

    invoke-direct {v0, p0}, Lcom/android/settings/i;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mF:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->gV()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->z(I)Z

    move-result v0

    return v0
.end method

.method private gV()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Ab:Landroid/view/View;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Ab:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Ab:Landroid/view/View;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Ac:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Ac:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->Ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Ab:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method private go()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Aa:Landroid/view/View;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Aa:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Aa:Landroid/view/View;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mC:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mF:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->Aa:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method private z(I)Z
    .locals 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b031a

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0b031b

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/z;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->gV()V

    goto :goto_0

    .line 97
    :cond_1
    if-nez p2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->go()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/z;->onCreate(Landroid/os/Bundle;)V

    .line 158
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Aa:Landroid/view/View;

    .line 159
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->Ab:Landroid/view/View;

    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 162
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->go()V

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/z;->onPause()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->go()V

    .line 176
    :cond_0
    return-void
.end method
