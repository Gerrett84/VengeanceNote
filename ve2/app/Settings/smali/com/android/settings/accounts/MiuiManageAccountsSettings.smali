.class public Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/l;


# instance fields
.field private kU:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private lG:[Ljava/lang/String;

.field private lH:Landroid/widget/TextView;

.field private yG:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private a(Lcom/android/settings/cd;)V
    .locals 7
    .parameter

    .prologue
    .line 152
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/cd;->dk()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0530

    invoke-virtual {p1}, Lcom/android/settings/cd;->dk()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 158
    return-void
.end method


# virtual methods
.method protected cY()V
    .locals 24

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    if-eqz v2, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v11}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 199
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v12

    .line 201
    const/4 v5, 0x0

    .line 204
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 205
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 206
    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    .line 207
    aget-object v6, v3, v2

    .line 208
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    move v10, v2

    :goto_2
    if-ge v10, v14, :cond_12

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 214
    instance-of v3, v2, Lcom/android/settings/cd;

    if-nez v3, :cond_4

    .line 212
    :goto_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2

    .line 218
    :cond_4
    check-cast v2, Lcom/android/settings/cd;

    .line 219
    invoke-virtual {v2}, Lcom/android/settings/cd;->dk()Landroid/accounts/Account;

    move-result-object v15

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-virtual {v2}, Lcom/android/settings/cd;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 223
    if-eqz v6, :cond_e

    .line 224
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v6, v5

    move v5, v4

    move v4, v3

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 226
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v11, :cond_7

    invoke-static {v15, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    .line 229
    :goto_5
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    .line 230
    if-eqz v12, :cond_8

    iget-object v8, v12, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

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

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    move v9, v8

    .line 234
    :goto_6
    if-eqz v17, :cond_9

    if-eqz v7, :cond_9

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v8, v19, v21

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_9

    const/4 v8, 0x1

    .line 239
    :goto_7
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    if-nez v18, :cond_5

    .line 240
    const/4 v4, 0x1

    .line 241
    const/4 v6, 0x1

    .line 244
    :cond_5
    if-eqz v11, :cond_a

    if-eqz v7, :cond_a

    .line 245
    if-nez v9, :cond_6

    if-nez v18, :cond_6

    .line 246
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v9, "force"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    invoke-static {v15, v3, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 254
    :cond_6
    :goto_8
    if-eqz v7, :cond_b

    invoke-virtual {v13, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_9
    add-int/2addr v3, v5

    move v5, v3

    .line 255
    goto/16 :goto_4

    .line 226
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 230
    :cond_8
    const/4 v8, 0x0

    move v9, v8

    goto :goto_6

    .line 234
    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    .line 252
    :cond_a
    invoke-static {v15, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_8

    .line 254
    :cond_b
    const/4 v3, 0x0

    goto :goto_9

    :cond_c
    move/from16 v23, v5

    move v5, v6

    move/from16 v6, v23

    .line 261
    :goto_a
    const/4 v3, 0x1

    .line 262
    if-eqz v4, :cond_10

    .line 263
    const/4 v3, 0x2

    .line 269
    :cond_d
    :goto_b
    invoke-virtual {v2, v3}, Lcom/android/settings/cd;->av(I)V

    goto/16 :goto_3

    .line 257
    :cond_e
    const-string v6, "AccountSettings"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 258
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

    :cond_f
    move v6, v4

    move v4, v3

    goto :goto_a

    .line 264
    :cond_10
    if-nez v6, :cond_11

    .line 265
    const/4 v3, 0x1

    goto :goto_b

    .line 266
    :cond_11
    if-lez v6, :cond_d

    .line 267
    const/4 v3, 0x0

    goto :goto_b

    .line 272
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lH:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x8

    goto :goto_c
.end method

.method protected cZ()V
    .locals 3

    .prologue
    .line 314
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cd;

    .line 316
    invoke-virtual {v0}, Lcom/android/settings/cd;->dk()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->H(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cd;->b(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {v0}, Lcom/android/settings/cd;->dk()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->I(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cd;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public da()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lG:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 280
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_5

    .line 281
    aget-object v5, p1, v3

    .line 282
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->v(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 285
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lG:[Ljava/lang/String;

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 287
    iget-object v7, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lG:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_6

    aget-object v9, v7, v0

    .line 288
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v1

    .line 295
    :goto_3
    if-eqz v0, :cond_2

    .line 296
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->H(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 298
    const-string v0, "com.miui.auth"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.unactivated"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    :cond_1
    new-instance v0, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8, v5, v7, v6}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 305
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 287
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 303
    :cond_4
    new-instance v0, Lcom/android/settings/cd;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8, v5, v7, v6}, Lcom/android/settings/cd;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->cY()V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 109
    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lH:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lH:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance v0, Lmiui/widget/SlidingButton;

    invoke-direct {v0, v1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    .line 115
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->lG:[Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->ep()V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    const/4 v0, 0x1

    const v1, 0x7f0b0532

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const v0, 0x7f040039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 179
    if-ne v1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->da()V

    .line 183
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
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    instance-of v1, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    instance-of v1, p2, Lcom/android/settings/cd;

    if-eqz v1, :cond_0

    .line 144
    check-cast p2, Lcom/android/settings/cd;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->a(Lcom/android/settings/cd;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    .line 80
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 91
    iput v1, v2, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->yG:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->kU:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/l;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->kU:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->kU:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public bridge synthetic v(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->v(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
