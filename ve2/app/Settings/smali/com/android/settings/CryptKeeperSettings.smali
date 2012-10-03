.class public Lcom/android/settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"


# instance fields
.field private aJ:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private ob:Landroid/view/View;

.field private oc:Landroid/widget/Button;

.field private od:Landroid/view/View;

.field private oe:Landroid/view/View;

.field private of:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/cD;

    invoke-direct {v0, p0}, Lcom/android/settings/cD;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/settings/cC;

    invoke-direct {v0, p0}, Lcom/android/settings/cC;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->of:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 205
    const-class v0, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 206
    const v0, 0x7f0b0123

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 207
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 209
    return-void
.end method

.method private F(I)Z
    .locals 4
    .parameter

    .prologue
    .line 166
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 168
    const v2, 0x8000

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 174
    :cond_0
    const/high16 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0330

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0331

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oc:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->F(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->od:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oe:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 150
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 152
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 156
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 196
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperSettings;->A(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->ob:Landroid/view/View;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->aJ:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->aJ:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->ob:Landroid/view/View;

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oc:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oc:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->of:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oc:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->ob:Landroid/view/View;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->od:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->ob:Landroid/view/View;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->oe:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->ob:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->aJ:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method
