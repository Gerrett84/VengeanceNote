.class public Lcom/android/settings/sound/SilentModeActivity;
.super Landroid/app/Activity;
.source "SilentModeActivity.java"


# instance fields
.field private fx:[Ljava/lang/CharSequence;

.field private fy:[Ljava/lang/CharSequence;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private J(I)I
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 92
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return v0

    .line 98
    :pswitch_1
    const/4 v0, 0x1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/sound/SilentModeActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SilentModeActivity;->J(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/sound/SilentModeActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->fy:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/sound/SilentModeActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private dN()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/sound/SilentModeActivity;->dO()I

    move-result v0

    .line 33
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    const v2, 0x7f0b0241

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    iget-object v2, p0, Lcom/android/settings/sound/SilentModeActivity;->fx:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/sound/f;

    invoke-direct {v3, p0}, Lcom/android/settings/sound/f;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/settings/sound/e;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/e;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    new-instance v0, Lcom/android/settings/sound/g;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/g;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    return-void
.end method

.method private dO()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return v0

    .line 82
    :pswitch_1
    const/4 v0, 0x1

    .line 83
    goto :goto_0

    .line 85
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SilentModeActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->fx:[Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->fy:[Ljava/lang/CharSequence;

    .line 27
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SilentModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    invoke-direct {p0}, Lcom/android/settings/sound/SilentModeActivity;->dN()V

    .line 29
    return-void
.end method
