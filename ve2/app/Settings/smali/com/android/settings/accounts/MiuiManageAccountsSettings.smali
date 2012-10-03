.class public Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/v;


# instance fields
.field private mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private na:[Ljava/lang/String;

.field private nb:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private a(Lcom/android/settings/cq;)V
    .locals 7
    .parameter

    .prologue
    .line 126
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b057d

    invoke-virtual {p1}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 132
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected dg()V
    .locals 24

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    .line 170
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v12

    .line 172
    const/4 v5, 0x0

    .line 175
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 176
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 177
    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 178
    aget-object v6, v3, v2

    .line 179
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    move v10, v2

    :goto_2
    if-ge v10, v14, :cond_11

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 185
    instance-of v3, v2, Lcom/android/settings/cq;

    if-nez v3, :cond_3

    .line 183
    :goto_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2

    .line 189
    :cond_3
    check-cast v2, Lcom/android/settings/cq;

    .line 190
    invoke-virtual {v2}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v15

    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    invoke-virtual {v2}, Lcom/android/settings/cq;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_d

    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v6, v5

    move v5, v4

    move v4, v3

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 197
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v11, :cond_6

    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x1

    .line 200
    :goto_5
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    .line 201
    if-eqz v12, :cond_7

    iget-object v8, v12, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Landroid/accounts/Account;

    iget-object v9, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v8, v9, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    move v9, v8

    .line 205
    :goto_6
    if-eqz v17, :cond_8

    if-eqz v7, :cond_8

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v8, v19, v21

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_8

    const/4 v8, 0x1

    .line 210
    :goto_7
    if-eqz v8, :cond_4

    if-nez v9, :cond_4

    if-nez v18, :cond_4

    .line 211
    const/4 v4, 0x1

    .line 212
    const/4 v6, 0x1

    .line 215
    :cond_4
    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 216
    if-nez v9, :cond_5

    if-nez v18, :cond_5

    .line 217
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v9, "force"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    invoke-static {v15, v3, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 225
    :cond_5
    :goto_8
    if-eqz v7, :cond_a

    invoke-virtual {v13, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_9
    add-int/2addr v3, v5

    move v5, v3

    .line 226
    goto/16 :goto_4

    .line 197
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 201
    :cond_7
    const/4 v8, 0x0

    move v9, v8

    goto :goto_6

    .line 205
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 223
    :cond_9
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_8

    .line 225
    :cond_a
    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    .line 232
    :goto_a
    const/4 v3, 0x1

    .line 233
    if-eqz v4, :cond_f

    .line 234
    const/4 v3, 0x2

    .line 240
    :cond_c
    :goto_b
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    goto/16 :goto_3

    .line 228
    :cond_d
    const-string v6, "AccountSettings"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 229
    const-string v6, "AccountSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no syncadapters found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v6, v4

    move v4, v3

    goto :goto_a

    .line 235
    :cond_f
    if-nez v6, :cond_10

    .line 236
    const/4 v3, 0x1

    goto :goto_b

    .line 237
    :cond_10
    if-lez v6, :cond_c

    .line 238
    const/4 v3, 0x0

    goto :goto_b

    .line 243
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->nb:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x8

    goto :goto_c
.end method

.method protected di()V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 285
    instance-of v2, v0, Lcom/android/settings/cq;

    if-eqz v2, :cond_0

    .line 286
    check-cast v0, Lcom/android/settings/cq;

    .line 287
    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->E(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cq;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->F(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cq;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_1
    return-void
.end method

.method public bridge synthetic dj()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->dj()V

    return-void
.end method

.method public in()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->na:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 250
    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_5

    .line 251
    aget-object v2, p1, v7

    .line 252
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 255
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->na:[Ljava/lang/String;

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 257
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->na:[Ljava/lang/String;

    array-length v3, v1

    move v0, v6

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v9, v1, v0

    .line 258
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v5

    .line 265
    :goto_3
    if-eqz v0, :cond_2

    .line 266
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->E(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 268
    const-string v0, "com.xiaomi"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.unactivated"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    :cond_1
    new-instance v0, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 274
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 257
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 272
    :cond_4
    new-instance v0, Lcom/android/settings/cq;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cq;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    goto :goto_4

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->dg()V

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v5

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 98
    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->nb:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->nb:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->na:[Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->dj()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x1

    const v1, 0x7f0b057f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const v0, 0x7f04003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 153
    if-ne v1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->in()V

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    instance-of v1, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v1, p2, Lcom/android/settings/cq;

    if-eqz v1, :cond_0

    .line 118
    check-cast p2, Lcom/android/settings/cq;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->a(Lcom/android/settings/cq;)V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 79
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 111
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/v;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 140
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mh:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
