.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# instance fields
.field private final jw:Landroid/security/KeyStore;

.field private yA:I

.field private yz:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->jw:Landroid/security/KeyStore;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->yA:I

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/android/settings/CredentialStorage;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings/CredentialStorage;->yA:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->jw:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/CredentialStorage;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/CredentialStorage;->yA:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gx()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gw()V

    return-void
.end method

.method private gA()Z
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    const v3, 0x7f0b0310

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0b0311

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 322
    return v0
.end method

.method private gw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/android/settings/bA;->vD:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->jw:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gx()V

    goto :goto_0

    .line 142
    :pswitch_1
    new-instance v0, Lcom/android/settings/ao;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ao;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bA;)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/android/settings/bi;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/bi;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bA;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gz()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private gx()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/android/settings/bi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bi;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bA;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private gy()Z
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 183
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gz()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->yz:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->yz:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->yz:Landroid/os/Bundle;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->yz:Landroid/os/Bundle;

    .line 193
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 195
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->jw:Landroid/security/KeyStore;

    invoke-virtual {v4, v0, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    const-string v1, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 332
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 333
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 334
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->jw:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v0, Lcom/android/settings/ap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ap;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bA;)V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->yz:Landroid/os/Bundle;

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->gw()V

    goto :goto_0
.end method
