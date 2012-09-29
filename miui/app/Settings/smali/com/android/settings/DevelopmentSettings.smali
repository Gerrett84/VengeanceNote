.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private cn:Landroid/app/backup/IBackupManager;

.field private db:Lmiui/security/ChooseLockSettingsHelper;

.field private qa:Lcom/android/internal/widget/LockPatternUtils;

.field private rO:Landroid/app/admin/DevicePolicyManager;

.field private xI:Landroid/view/IWindowManager;

.field private xJ:Lmiui/widget/SlidingButton;

.field private xK:Z

.field private xL:Z

.field private xM:Z

.field private xN:Landroid/preference/CheckBoxPreference;

.field private xO:Landroid/preference/CheckBoxPreference;

.field private xP:Landroid/preference/CheckBoxPreference;

.field private xQ:Landroid/preference/CheckBoxPreference;

.field private xR:Landroid/preference/PreferenceScreen;

.field private xS:Ljava/lang/String;

.field private xT:Landroid/preference/Preference;

.field private xU:Landroid/preference/CheckBoxPreference;

.field private xV:Landroid/preference/CheckBoxPreference;

.field private xW:Landroid/preference/CheckBoxPreference;

.field private xX:Landroid/preference/CheckBoxPreference;

.field private xY:Landroid/preference/CheckBoxPreference;

.field private xZ:Landroid/preference/CheckBoxPreference;

.field private ya:Landroid/preference/CheckBoxPreference;

.field private yb:Landroid/preference/CheckBoxPreference;

.field private yc:Landroid/preference/CheckBoxPreference;

.field private yd:Landroid/preference/CheckBoxPreference;

.field private ye:Landroid/preference/CheckBoxPreference;

.field private yf:Landroid/preference/CheckBoxPreference;

.field private yg:Landroid/preference/ListPreference;

.field private yh:Landroid/preference/ListPreference;

.field private yi:Landroid/preference/ListPreference;

.field private yj:Landroid/preference/MultiCheckPreference;

.field private yk:Landroid/preference/CheckBoxPreference;

.field private yl:Landroid/preference/ListPreference;

.field private ym:Landroid/preference/CheckBoxPreference;

.field private final yn:Ljava/util/ArrayList;

.field private final yo:Ljava/util/ArrayList;

.field private yp:Landroid/preference/CheckBoxPreference;

.field private yq:Landroid/preference/CheckBoxPreference;

.field private final yr:Ljava/util/HashSet;

.field private ys:Z

.field private yt:Landroid/app/Dialog;

.field private yu:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yr:Ljava/util/HashSet;

    .line 1060
    return-void
.end method

.method private M(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 320
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 322
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->yr:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 322
    goto :goto_1

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gF()V

    .line 325
    return-void
.end method

.method private O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 3
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 265
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find preference with key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-object v0
.end method

.method private a(ILandroid/preference/ListPreference;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xI:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 698
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 699
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 701
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 702
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 703
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 704
    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 705
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 706
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    :goto_1
    return-void

    .line 702
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 711
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 712
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 725
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xI:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_1
    return-void

    .line 724
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gF()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1105
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private gE()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    return-void
.end method

.method private gF()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 368
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 369
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    const-string v0, "adb_enabled"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 371
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xP:Landroid/preference/CheckBoxPreference;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v5}, Lcom/android/settings/DevelopmentSettings;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xQ:Landroid/preference/CheckBoxPreference;

    const-string v3, "mock_location"

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gG()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gI()V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gJ()V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gM()V

    .line 381
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gP()V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gR()V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gT()V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gU()V

    .line 385
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hh()V

    .line 386
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gX()V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gZ()V

    .line 388
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hb()V

    .line 389
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hd()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hf()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hl()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hp()V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hk()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hm()V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ho()V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hs()V

    .line 397
    return-void

    :cond_0
    move v0, v2

    .line 369
    goto :goto_0

    :cond_1
    move v0, v2

    .line 371
    goto :goto_1

    :cond_2
    move v1, v2

    .line 374
    goto :goto_2
.end method

.method private gG()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->db:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private gH()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 415
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->xM:Z

    move v1, v2

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 418
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 420
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 416
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->gL()V

    .line 424
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 426
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 427
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->t(J)V

    .line 428
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->n(Ljava/lang/Object;)V

    .line 429
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 430
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gF()V

    .line 431
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xM:Z

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 433
    return-void
.end method

.method private gI()V
    .locals 7

    .prologue
    .line 436
    const/4 v2, 0x1

    .line 437
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 438
    if-eqz v0, :cond_0

    .line 439
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070033

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070034

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 442
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 443
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 448
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 449
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 452
    :cond_0
    return-void

    .line 442
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private gJ()V
    .locals 2

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xR:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0546

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xR:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0545

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gK()V
    .locals 4

    .prologue
    .line 468
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static gL()V
    .locals 4

    .prologue
    .line 476
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gM()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    .line 485
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05b0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 499
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 504
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 485
    goto :goto_0

    .line 493
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    goto :goto_1

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b05af

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private static gN()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :goto_0
    return v0

    .line 515
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private gO()V
    .locals 2

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xI:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 525
    :goto_1
    return-void

    .line 521
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private gP()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 528
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xV:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->gN()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 529
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gQ()V
    .locals 3

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gR()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 537
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 539
    return-void
.end method

.method private gS()V
    .locals 3

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gT()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 549
    return-void
.end method

.method private gU()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 555
    if-eqz v2, :cond_0

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 558
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 559
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 561
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 563
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 564
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->xY:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 567
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 568
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->xZ:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 570
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 565
    goto :goto_0

    :cond_2
    move v0, v1

    .line 569
    goto :goto_1

    .line 573
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private gV()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 579
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_1

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 582
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xY:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 584
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 586
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gU()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gW()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 596
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_1

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 599
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 601
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 603
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gU()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gX()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yb:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 613
    return-void
.end method

.method private gY()V
    .locals 2

    .prologue
    .line 616
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 618
    return-void

    .line 616
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private gZ()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yc:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 623
    return-void
.end method

.method private ha()V
    .locals 2

    .prologue
    .line 626
    const-string v1, "debug.hwui.profile"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 629
    return-void

    .line 626
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private hb()V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yd:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 634
    return-void
.end method

.method private hc()V
    .locals 2

    .prologue
    .line 637
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 640
    return-void

    .line 637
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private hd()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ye:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 645
    return-void
.end method

.method private he()V
    .locals 2

    .prologue
    .line 648
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ye:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 651
    return-void

    .line 648
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private hf()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 654
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_rounded_corners"

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x608000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 657
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hg()V
    .locals 3

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_rounded_corners"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    return-void

    .line 660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hh()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 665
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 667
    return-void
.end method

.method private hi()V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 675
    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 680
    :goto_1
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private hj()V
    .locals 2

    .prologue
    .line 684
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hk()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 693
    return-void
.end method

.method private hl()V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 718
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 719
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 720
    return-void
.end method

.method private hm()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 733
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 734
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 735
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 736
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 737
    if-lt v3, v1, :cond_1

    .line 738
    if-eqz v0, :cond_0

    .line 739
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 742
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    :goto_1
    return-void

    .line 735
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 748
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private hn()V
    .locals 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 765
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ho()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 768
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Landroid/preference/CheckBoxPreference;Z)V

    .line 770
    return-void
.end method

.method private hp()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 773
    const-string v0, "debug.atrace.tags.enableflags"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    const-string v0, "debug.atrace.tags.enableflags"

    invoke-static {v0, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 775
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    move v2, v3

    .line 777
    :goto_0
    array-length v4, v7

    if-ge v0, v4, :cond_2

    .line 778
    shl-int v4, v1, v0

    int-to-long v8, v4

    and-long/2addr v8, v5

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    move v4, v1

    .line 779
    :goto_1
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9, v4}, Landroid/preference/MultiCheckPreference;->setValue(IZ)V

    .line 780
    if-eqz v4, :cond_0

    .line 781
    add-int/lit8 v2, v2, 0x1

    .line 777
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 778
    goto :goto_1

    .line 784
    :cond_2
    if-nez v2, :cond_3

    .line 785
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f0b05c6

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    .line 793
    :goto_2
    return-void

    .line 786
    :cond_3
    array-length v0, v7

    if-ne v2, v0, :cond_4

    .line 787
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 788
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f0b05c8

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    goto :goto_2

    .line 790
    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 791
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    const v4, 0x7f0b05c7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private hq()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 796
    const-wide/16 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 798
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 799
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/preference/MultiCheckPreference;->getValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 800
    shl-int v5, v1, v0

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 798
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->t(J)V

    .line 805
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hp()V

    .line 806
    return-void
.end method

.method private hr()V
    .locals 3

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    return-void

    .line 857
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hs()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 864
    return-void
.end method

.method private ht()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 974
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 978
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    .line 980
    :cond_1
    return-void
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1095
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private n(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 754
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 755
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 756
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_1
    return-void

    .line 754
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private t(J)V
    .locals 3
    .parameter

    .prologue
    .line 809
    const-string v0, "debug.atrace.tags.enableflags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 812
    return-void
.end method


# virtual methods
.method a(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    .line 363
    return-void
.end method

.method hu()V
    .locals 2

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xM:Z

    if-nez v0, :cond_0

    .line 1029
    new-instance v0, Lcom/android/settings/cG;

    invoke-direct {v0}, Lcom/android/settings/cG;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/cG;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1031
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 279
    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    .line 280
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 845
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 846
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xS:Ljava/lang/String;

    .line 847
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gK()V

    .line 848
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gM()V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    if-ne p1, v0, :cond_1

    .line 818
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    if-eq p2, v0, :cond_1

    .line 819
    if-eqz p2, :cond_2

    .line 820
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    .line 821
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ht()V

    .line 822
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b047c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    .line 830
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 840
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gH()V

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    .line 836
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->M(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 983
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 984
    if-ne p2, v1, :cond_1

    .line 985
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 993
    if-ne p2, v1, :cond_3

    .line 994
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    .line 995
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    .line 998
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->M(Z)V

    goto :goto_0

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xI:Landroid/view/IWindowManager;

    .line 191
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cn:Landroid/app/backup/IBackupManager;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->rO:Landroid/app/admin/DevicePolicyManager;

    .line 195
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 197
    const-string v0, "enable_adb"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v0, "keep_screen_on"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    .line 199
    const-string v0, "enforce_read_external"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xP:Landroid/preference/CheckBoxPreference;

    .line 200
    const-string v0, "allow_mock_location"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xQ:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v0, "local_backup_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xR:Landroid/preference/PreferenceScreen;

    .line 202
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->xR:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v0, "debug_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xT:Landroid/preference/Preference;

    .line 205
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v0, "wait_for_debugger"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v0, "strict_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xV:Landroid/preference/CheckBoxPreference;

    .line 208
    const-string v0, "pointer_location"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xW:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v0, "show_touches"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xX:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v0, "show_screen_updates"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xY:Landroid/preference/CheckBoxPreference;

    .line 211
    const-string v0, "disable_overlays"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xZ:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v0, "show_cpu_usage"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ya:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v0, "force_hw_ui"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yb:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v0, "track_frame_time"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yc:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v0, "show_hw_screen_udpates"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yd:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v0, "debug_layout"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ye:Landroid/preference/CheckBoxPreference;

    .line 217
    const-string v0, "show_rounded_corners"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yf:Landroid/preference/CheckBoxPreference;

    .line 219
    const-string v0, "window_animation_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    .line 220
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    const-string v0, "transition_animation_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    .line 223
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    const-string v0, "animator_duration_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    .line 226
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    const-string v0, "enable_traces"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiCheckPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    .line 229
    sget-object v0, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 230
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 231
    shl-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    sget-object v1, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0, v2}, Landroid/preference/MultiCheckPreference;->setEntryValues([Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0, p0}, Landroid/preference/MultiCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    const-string v0, "immediately_destroy_activities"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    .line 240
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v0, "app_process_limit"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    .line 243
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    const-string v0, "show_all_anrs"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v0, "show_fc"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yq:Landroid/preference/CheckBoxPreference;

    .line 252
    const-string v0, "unlock_enter_system"

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->O(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    .line 253
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->db:Lmiui/security/ChooseLockSettingsHelper;

    .line 254
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->qa:Lcom/android/internal/widget/LockPatternUtils;

    .line 256
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gE()V

    .line 261
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ht()V

    .line 1024
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1025
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1008
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1009
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1012
    :cond_0
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    .line 1019
    :cond_1
    :goto_0
    return-void

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1014
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    if-nez v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 1017
    :cond_3
    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yt:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 947
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gI()V

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->hu()V

    .line 968
    :goto_0
    return v0

    .line 952
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 953
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yg:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 956
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yh:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 958
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 959
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yi:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 961
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yj:Landroid/preference/MultiCheckPreference;

    if-ne p1, v2, :cond_4

    .line 962
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hq()V

    goto :goto_0

    .line 964
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yl:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 965
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 968
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-static {}, Lcom/android/settings/cu;->jh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    :goto_0
    return v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 875
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 876
    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->ys:Z

    .line 877
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ht()V

    .line 878
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b047a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    .line 885
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yu:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 942
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 887
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 890
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    :cond_5
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 895
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 896
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 897
    invoke-static {p0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->b(Lcom/android/settings/DevelopmentSettings;)V

    goto :goto_1

    .line 899
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2, v0}, Lcom/android/settings/DevelopmentSettings;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 901
    :cond_8
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 905
    :cond_a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_b

    .line 906
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 907
    :cond_b
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    .line 908
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gK()V

    goto :goto_1

    .line 909
    :cond_c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xV:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_d

    .line 910
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gO()V

    goto/16 :goto_1

    .line 911
    :cond_d
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xW:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_e

    .line 912
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gQ()V

    goto/16 :goto_1

    .line 913
    :cond_e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xX:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_f

    .line 914
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gS()V

    goto/16 :goto_1

    .line 915
    :cond_f
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xY:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_10

    .line 916
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gV()V

    goto/16 :goto_1

    .line 917
    :cond_10
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xZ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_11

    .line 918
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gW()V

    goto/16 :goto_1

    .line 919
    :cond_11
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ya:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_12

    .line 920
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hi()V

    goto/16 :goto_1

    .line 921
    :cond_12
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_13

    .line 922
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hj()V

    goto/16 :goto_1

    .line 923
    :cond_13
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ym:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_14

    .line 924
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hn()V

    goto/16 :goto_1

    .line 925
    :cond_14
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_15

    .line 926
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->gY()V

    goto/16 :goto_1

    .line 927
    :cond_15
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_16

    .line 928
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ha()V

    goto/16 :goto_1

    .line 929
    :cond_16
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_17

    .line 930
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hc()V

    goto/16 :goto_1

    .line 931
    :cond_17
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ye:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_18

    .line 932
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->he()V

    goto/16 :goto_1

    .line 933
    :cond_18
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_19

    .line 934
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hg()V

    goto/16 :goto_1

    .line 935
    :cond_19
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1a

    .line 936
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 937
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->qa:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->yp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    goto/16 :goto_1

    .line 938
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->yq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 939
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->hr()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 330
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 332
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->rO:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yr:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    const-string v3, "development_settings_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    .line 345
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 346
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->M(Z)V

    .line 348
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xL:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    if-nez v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    .line 356
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->xK:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->M(Z)V

    .line 358
    :cond_1
    return-void

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->yr:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->xO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 286
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 292
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 296
    iput v1, v2, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->xJ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 298
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 305
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 306
    return-void
.end method
