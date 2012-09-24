.class public Lcom/android/settings/accounts/SyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/v;


# instance fields
.field private mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private na:[Ljava/lang/String;

.field private ux:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private a(Lcom/android/settings/cq;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 108
    return-void
.end method

.method private fF()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 122
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/cq;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected di()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 166
    instance-of v0, v0, Lcom/android/settings/cq;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cq;

    .line 169
    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/SyncSettings;->E(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cq;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/SyncSettings;->F(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cq;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public bridge synthetic dj()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->dj()V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/SyncSettings;->fF()V

    .line 135
    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_3

    .line 136
    aget-object v2, p1, v7

    .line 137
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 140
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->na:[Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 142
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings;->na:[Ljava/lang/String;

    array-length v3, v1

    move v0, v6

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v9, v1, v0

    .line 143
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v0, v5

    .line 150
    :goto_3
    if-eqz v0, :cond_1

    .line 151
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->E(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    new-instance v0, Lcom/android/settings/cq;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cq;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/SyncSettings;->F(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cq;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->dg()V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings;->ux:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->na:[Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->dj()V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f05004c

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->ux:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->ux:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/SyncSettings$1;-><init>(Lcom/android/settings/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 65
    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    instance-of v0, p2, Lcom/android/settings/cq;

    if-eqz v0, :cond_0

    .line 95
    check-cast p2, Lcom/android/settings/cq;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/SyncSettings;->a(Lcom/android/settings/cq;)V

    .line 99
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 90
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/v;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 116
    iget-object v0, p0, Lcom/android/settings/accounts/SyncSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
