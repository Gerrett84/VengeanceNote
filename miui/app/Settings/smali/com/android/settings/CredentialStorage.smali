.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# instance fields
.field private Ce:Landroid/os/Bundle;

.field private Cf:I

.field private final kK:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->Cf:I

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/android/settings/CredentialStorage;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings/CredentialStorage;->Cf:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/CredentialStorage;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/CredentialStorage;->Cf:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ig()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->if()V

    return-void
.end method

.method private if()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/android/settings/bL;->yy:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ig()V

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v0, Lcom/android/settings/aB;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/aB;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ih()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/android/settings/bw;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/bw;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ii()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ig()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ih()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Lcom/android/settings/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bw;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ij()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private ih()Z
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 184
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ii()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->Ce:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->Ce:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->Ce:Landroid/os/Bundle;

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CredentialStorage;->Ce:Landroid/os/Bundle;

    .line 195
    const-string v1, "user_private_key_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v1, "user_private_key_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string v2, "user_private_key_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    invoke-virtual {v3, v1, v2}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v1, "user_certificate_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const-string v1, "user_certificate_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "user_certificate_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    invoke-virtual {v3, v1, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "ca_certificates_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    const-string v1, "ca_certificates_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "ca_certificates_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    invoke-virtual {v2, v1, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    goto :goto_0
.end method

.method private ij()Z
    .locals 5

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 344
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    const v3, 0x7f0b052a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0b052b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 348
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 359
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 360
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->kK:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v0, Lcom/android/settings/aD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/aD;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V

    .line 126
    :goto_0
    return-void

    .line 119
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

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->Ce:Landroid/os/Bundle;

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->if()V

    goto :goto_0
.end method
