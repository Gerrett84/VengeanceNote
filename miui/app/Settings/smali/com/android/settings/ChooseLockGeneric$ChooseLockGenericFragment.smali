.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# instance fields
.field private Ck:Z

.field private Cl:Z

.field private db:Lmiui/security/ChooseLockSettingsHelper;

.field private kN:Landroid/security/KeyStore;

.field private ow:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    return-void
.end method

.method private S(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 306
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILlibcore/util/MutableBoolean;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x8000

    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->at(I)I

    move-result v0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->av(I)I

    move-result v0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->au(I)I

    move-result v1

    .line 204
    if-le v1, v0, :cond_0

    .line 207
    if-eqz p2, :cond_2

    .line 208
    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move v0, v1

    .line 216
    :goto_1
    return v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_2
    if-ne v0, v2, :cond_0

    goto :goto_1
.end method

.method private at(I)I
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ow:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 222
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 225
    :cond_0
    return p1
.end method

.method private au(I)I
    .locals 3
    .parameter

    .prologue
    const/high16 v0, 0x2

    .line 236
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ow:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 237
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 239
    :goto_0
    if-eqz v1, :cond_1

    .line 240
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 244
    :cond_1
    return p1

    .line 237
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private av(I)I
    .locals 2
    .parameter

    .prologue
    const/high16 v0, 0x1

    .line 248
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->kN:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 253
    :cond_0
    return p1
.end method

.method private b(ILlibcore/util/MutableBoolean;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 265
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    .line 267
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_f

    .line 268
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 269
    instance-of v0, v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 270
    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 273
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    if-gtz p1, :cond_2

    move v0, v2

    :goto_1
    move v5, v0

    move v0, v2

    .line 288
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v8, :cond_e

    invoke-direct {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 289
    :cond_0
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    :cond_1
    :goto_3
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 274
    goto :goto_1

    .line 275
    :cond_3
    const-string v0, "unlock_set_none"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    if-gtz p1, :cond_4

    move v0, v2

    :goto_4
    move v5, v0

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_4

    .line 277
    :cond_5
    const-string v0, "unlock_set_biometric_weak"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    const v0, 0x8000

    if-le p1, v0, :cond_6

    iget-boolean v0, p2, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_5
    move v5, v0

    move v0, v4

    .line 280
    goto :goto_2

    :cond_7
    move v0, v3

    .line 278
    goto :goto_5

    .line 281
    :cond_8
    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    const/high16 v0, 0x1

    if-gt p1, v0, :cond_9

    move v0, v2

    :goto_6
    move v5, v0

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_6

    .line 283
    :cond_a
    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 284
    const/high16 v0, 0x2

    if-gt p1, v0, :cond_b

    move v0, v2

    :goto_7
    move v5, v0

    move v0, v2

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_7

    .line 285
    :cond_c
    const-string v0, "unlock_set_password"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 286
    const/high16 v0, 0x6

    if-gt p1, v0, :cond_d

    move v0, v2

    :goto_8
    move v5, v0

    move v0, v2

    goto :goto_2

    :cond_d
    move v0, v3

    goto :goto_8

    .line 290
    :cond_e
    if-nez v5, :cond_1

    .line 291
    const v0, 0x7f0b013f

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 292
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 296
    :cond_f
    return-void

    :cond_10
    move v0, v2

    move v5, v2

    goto :goto_2
.end method

.method private io()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    if-ne v1, v2, :cond_1

    .line 185
    const-string v1, "minimum_quality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    new-instance v1, Llibcore/util/MutableBoolean;

    invoke-direct {v1, v3}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->a(ILlibcore/util/MutableBoolean;)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 192
    :cond_0
    const v2, 0x7f050041

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->b(ILlibcore/util/MutableBoolean;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0
.end method

.method private ip()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0b012d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 320
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 323
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    return-object v1
.end method


# virtual methods
.method protected E()I
    .locals 1

    .prologue
    .line 397
    const v0, 0x7f0b0662

    return v0
.end method

.method d(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x200

    const/16 v8, 0x65

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 338
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    if-nez v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 345
    invoke-direct {p0, p1, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->a(ILlibcore/util/MutableBoolean;)I

    move-result v4

    .line 347
    const/high16 v1, 0x2

    if-lt v4, v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ow:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 349
    if-ge v1, v0, :cond_9

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ow:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 353
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 354
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v0, "confirm_credentials"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 393
    :goto_1
    return-void

    .line 364
    :cond_1
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 392
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 367
    :cond_3
    const/high16 v0, 0x1

    if-ne v4, v0, :cond_7

    .line 368
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 369
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v0, :cond_5

    const-class v0, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_4
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const-string v0, "key_lock_method"

    const-string v4, "pattern"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    if-eqz v3, :cond_6

    .line 378
    invoke-virtual {p0, v1, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 368
    goto :goto_3

    .line 370
    :cond_5
    const-class v0, Lcom/android/settings/ChooseLockPattern;

    goto :goto_4

    .line 381
    :cond_6
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 384
    :cond_7
    const v0, 0x8000

    if-ne v4, v0, :cond_8

    .line 385
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ip()Landroid/content/Intent;

    move-result-object v0

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 387
    :cond_8
    if-nez v4, :cond_2

    .line 388
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/security/MiuiLockPatternUtils;->clearLock(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/security/MiuiLockPatternUtils;->setLockScreenDisabled(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    .line 159
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    .line 161
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->io()V

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->deleteTempGallery()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->ow:Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->kN:Landroid/security/KeyStore;

    .line 83
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->db:Lmiui/security/ChooseLockSettingsHelper;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "confirm_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    .line 92
    const-string v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    if-eqz v0, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->io()V

    .line 107
    :cond_1
    :goto_1
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 100
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v3}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    .line 102
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->io()V

    goto :goto_1

    .line 104
    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f04008d

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 149
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 152
    :cond_0
    return-object v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v3, "unlock_set_off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    .line 137
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string v3, "unlock_set_none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v3, "unlock_set_biometric_weak"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    const v2, 0x8000

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v3, "unlock_set_pattern"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0

    .line 128
    :cond_3
    const-string v3, "unlock_set_pin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0

    .line 131
    :cond_4
    const-string v3, "unlock_set_password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->d(IZ)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Ck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->Cl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
