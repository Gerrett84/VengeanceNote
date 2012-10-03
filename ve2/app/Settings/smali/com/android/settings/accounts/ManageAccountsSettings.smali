.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private na:[Ljava/lang/String;

.field private nb:Landroid/widget/TextView;

.field private nc:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 367
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 368
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_1

    .line 370
    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 371
    if-nez v3, :cond_0

    .line 372
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 375
    :cond_0
    const-string v3, "account"

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 379
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 380
    goto :goto_0

    .line 381
    :cond_2
    return-void
.end method

.method private a(Lcom/android/settings/cq;)V
    .locals 7
    .parameter

    .prologue
    .line 153
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

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

    .line 159
    return-void
.end method

.method private dh()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Landroid/preference/PreferenceScreen;)V

    .line 363
    :cond_0
    return-void
.end method

.method private w(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 195
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v0, "force"

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    move v2, v1

    .line 199
    :goto_0
    if-ge v2, v5, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 201
    instance-of v6, v0, Lcom/android/settings/cq;

    if-eqz v6, :cond_2

    .line 202
    check-cast v0, Lcom/android/settings/cq;

    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    move v0, v1

    .line 204
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 205
    aget-object v7, v3, v0

    .line 206
    aget-object v8, v3, v0

    iget-object v8, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    if-eqz p1, :cond_1

    .line 209
    iget-object v7, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_1
    iget-object v7, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected dg()V
    .locals 28

    .prologue
    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 306
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v14

    .line 227
    const/4 v8, 0x0

    .line 228
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 231
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 232
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 233
    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 234
    aget-object v5, v3, v2

    .line 235
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    iget-object v5, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_2
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    move v13, v2

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_12

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 241
    instance-of v3, v2, Lcom/android/settings/cq;

    if-nez v3, :cond_4

    .line 239
    :cond_3
    :goto_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_2

    .line 245
    :cond_4
    check-cast v2, Lcom/android/settings/cq;

    .line 246
    invoke-virtual {v2}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v18

    .line 247
    const/4 v7, 0x0

    .line 248
    const-wide/16 v5, 0x0

    .line 249
    const/4 v4, 0x0

    .line 250
    invoke-virtual {v2}, Lcom/android/settings/cq;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v9

    .line 251
    const/4 v3, 0x0

    .line 252
    if-eqz v9, :cond_d

    .line 253
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v9, v8

    move v8, v7

    move-wide/from16 v26, v5

    move-wide/from16 v6, v26

    move v5, v4

    move v4, v3

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 254
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v20

    .line 255
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7

    const/4 v10, 0x1

    .line 258
    :goto_5
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 259
    if-eqz v14, :cond_8

    iget-object v11, v14, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Landroid/accounts/Account;

    iget-object v12, v14, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v14, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v11, v12, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    move v12, v11

    .line 263
    :goto_6
    if-eqz v20, :cond_9

    if-eqz v10, :cond_9

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v11, v22, v24

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v11

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_9

    const/4 v11, 0x1

    .line 268
    :goto_7
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    if-nez v21, :cond_5

    .line 269
    const/4 v5, 0x1

    .line 270
    const/4 v9, 0x1

    .line 272
    :cond_5
    or-int/2addr v4, v12

    .line 273
    if-eqz v20, :cond_6

    move-object/from16 v0, v20

    iget-wide v11, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v11, v6, v11

    if-gez v11, :cond_6

    .line 274
    move-object/from16 v0, v20

    iget-wide v6, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 276
    :cond_6
    if-eqz v10, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_8
    add-int/2addr v3, v8

    move v8, v3

    .line 277
    goto/16 :goto_4

    .line 255
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 259
    :cond_8
    const/4 v11, 0x0

    move v12, v11

    goto :goto_6

    .line 263
    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .line 276
    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    move v3, v4

    move v4, v5

    move-wide/from16 v26, v6

    move-wide/from16 v5, v26

    move v7, v8

    move v8, v9

    .line 283
    :cond_c
    :goto_9
    if-eqz v4, :cond_e

    .line 284
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    goto/16 :goto_3

    .line 279
    :cond_d
    const-string v9, "AccountSettings"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 280
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no syncadapters found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 285
    :cond_e
    if-nez v7, :cond_f

    .line 286
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    goto/16 :goto_3

    .line 287
    :cond_f
    if-lez v7, :cond_11

    .line 288
    if-eqz v3, :cond_10

    .line 289
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    goto/16 :goto_3

    .line 291
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    .line 292
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    .line 294
    invoke-virtual {v15, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0588

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cq;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 301
    :cond_11
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/cq;->e(IZ)V

    goto/16 :goto_3

    .line 305
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->nb:Landroid/widget/TextView;

    if-eqz v8, :cond_13

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x8

    goto :goto_a
.end method

.method protected di()V
    .locals 3

    .prologue
    .line 386
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 388
    instance-of v2, v0, Lcom/android/settings/cq;

    if-eqz v2, :cond_0

    .line 389
    check-cast v0, Lcom/android/settings/cq;

    .line 390
    invoke-virtual {v0}, Lcom/android/settings/cq;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->F(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/cq;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method public bridge synthetic dj()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->dj()V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    .line 314
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 315
    array-length v8, p1

    move v7, v5

    :goto_1
    if-ge v7, v8, :cond_5

    .line 316
    aget-object v2, p1, v7

    .line 318
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_1
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 319
    :cond_2
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 322
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->na:[Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 324
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->na:[Ljava/lang/String;

    array-length v3, v1

    move v0, v5

    :goto_3
    if-ge v0, v3, :cond_7

    aget-object v9, v1, v0

    .line 325
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v6

    .line 332
    :goto_4
    if-eqz v0, :cond_1

    .line 333
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->E(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 336
    const-string v0, "com.xiaomi"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    new-instance v0, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 341
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    if-nez v0, :cond_1

    .line 343
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    goto :goto_2

    .line 324
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 339
    :cond_4
    new-instance v0, Lcom/android/settings/cq;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cq;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    goto :goto_5

    .line 347
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    if-eqz v0, :cond_6

    .line 348
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->dh()V

    .line 355
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->dg()V

    goto/16 :goto_0

    .line 351
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :cond_7
    move v0, v5

    goto :goto_4

    :cond_8
    move v0, v6

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 118
    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nb:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nb:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->na:[Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    const-string v1, "account_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "account_label"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->dj()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 93
    :cond_0
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x1

    const v1, 0x7f0b058c

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 166
    const/4 v0, 0x2

    const v1, 0x7f0b058d

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const v0, 0x7f04003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->w(Z)V

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->w(Z)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    instance-of v1, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    instance-of v1, p2, Lcom/android/settings/cq;

    if-eqz v1, :cond_0

    .line 145
    check-cast p2, Lcom/android/settings/cq;

    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->a(Lcom/android/settings/cq;)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 175
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->nc:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 178
    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    :cond_1
    move v3, v2

    .line 176
    goto :goto_1

    :cond_2
    move v1, v2

    .line 177
    goto :goto_2
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 102
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->x(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
