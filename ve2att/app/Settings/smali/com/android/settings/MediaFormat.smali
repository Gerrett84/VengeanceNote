.class public Lcom/android/settings/MediaFormat;
.super Lcom/android/settings/J;
.source "MediaFormat.java"


# instance fields
.field private DV:Landroid/view/View;

.field private DW:Landroid/view/View;

.field private DX:Landroid/widget/Button;

.field private DY:Landroid/view/View$OnClickListener;

.field private bX:Landroid/os/storage/StorageVolume;

.field private mInflater:Landroid/view/LayoutInflater;

.field private oc:Landroid/widget/Button;

.field private of:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/n;

    invoke-direct {v0, p0}, Lcom/android/settings/n;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DY:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/android/settings/p;

    invoke-direct {v0, p0}, Lcom/android/settings/p;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->of:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private F(I)Z
    .locals 3
    .parameter

    .prologue
    .line 85
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b033e

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0b033f

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->bX:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->F(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MediaFormat;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->dV()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->iS()V

    return-void
.end method

.method private dV()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->bX:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormat;->bX:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormat;->bX:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->dV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040038

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    .line 160
    const v0, 0x7f0b0334

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oc:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->oc:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->of:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 170
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040045

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    goto :goto_0
.end method

.method private iS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->dV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    .line 131
    const v0, 0x7f0b0334

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DX:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DX:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->DY:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 141
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040044

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/J;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->iS()V

    goto :goto_0

    .line 103
    :cond_1
    if-nez p2, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->hT()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/J;->onPause()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->hT()V

    .line 212
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 194
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DV:Landroid/view/View;

    .line 195
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->DW:Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->bX:Landroid/os/storage/StorageVolume;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->hT()V

    .line 199
    return-void
.end method
