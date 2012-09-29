.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private cn:Landroid/app/backup/IBackupManager;

.field private co:Landroid/preference/CheckBoxPreference;

.field private cp:Landroid/preference/CheckBoxPreference;

.field private cq:Landroid/app/Dialog;

.field private cr:Landroid/preference/PreferenceScreen;

.field private cs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/PrivacySettings;->cs:I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b054b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b054a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->cq:Landroid/app/Dialog;

    .line 129
    return-void
.end method

.method private C()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 143
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 144
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 149
    :goto_0
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 156
    :goto_2
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 158
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->g(Ljava/lang/String;)V

    .line 159
    return-void

    .line 145
    :catch_0
    move-exception v1

    move-object v1, v0

    move v2, v5

    .line 147
    :goto_3
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 151
    goto :goto_1

    :cond_1
    move v4, v5

    .line 155
    goto :goto_2

    .line 145
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method private D()V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v0}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0541

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 208
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_1

    :cond_2
    move v1, v2

    .line 201
    goto :goto_2
.end method


# virtual methods
.method protected E()I
    .locals 1

    .prologue
    .line 212
    const v0, 0x7f0b0663

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 180
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 182
    iget v0, p0, Lcom/android/settings/PrivacySettings;->cs:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->D()V

    .line 187
    :cond_0
    iput v2, p0, Lcom/android/settings/PrivacySettings;->cs:I

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 63
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    .line 66
    const-string v0, "backup_data"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v0, "auto_restore"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v0, "configure_account"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->cr:Landroid/preference/PreferenceScreen;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "backup_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->C()V

    .line 76
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->co:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->B()V

    .line 113
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 103
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->cp:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->C()V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cq:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->cq:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->cq:Landroid/app/Dialog;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->cs:I

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 94
    return-void
.end method
