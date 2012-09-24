.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private cO:Lmiui/security/ChooseLockSettingsHelper;

.field private ca:Landroid/app/backup/IBackupManager;

.field private om:Lcom/android/internal/widget/LockPatternUtils;

.field private vc:Landroid/view/IWindowManager;

.field private vd:Landroid/preference/CheckBoxPreference;

.field private ve:Landroid/preference/CheckBoxPreference;

.field private vf:Landroid/preference/CheckBoxPreference;

.field private vg:Landroid/preference/PreferenceScreen;

.field private vh:Landroid/preference/CheckBoxPreference;

.field private vi:Landroid/preference/CheckBoxPreference;

.field private vj:Landroid/preference/CheckBoxPreference;

.field private vk:Landroid/preference/CheckBoxPreference;

.field private vl:Landroid/preference/CheckBoxPreference;

.field private vm:Landroid/preference/CheckBoxPreference;

.field private vn:Landroid/preference/CheckBoxPreference;

.field private vo:Landroid/preference/ListPreference;

.field private vp:Landroid/preference/ListPreference;

.field private vq:Landroid/preference/CheckBoxPreference;

.field private vr:Landroid/preference/ListPreference;

.field private vs:Landroid/preference/CheckBoxPreference;

.field private vt:Landroid/preference/CheckBoxPreference;

.field private vu:Landroid/preference/CheckBoxPreference;

.field private vv:Z

.field private vw:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(ILandroid/preference/ListPreference;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vc:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 403
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 404
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 405
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 406
    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    .line 407
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 408
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    :goto_1
    return-void

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 413
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 414
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
    .line 425
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vc:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private fA()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 313
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 317
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    const/16 v4, 0x3f2

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 320
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 322
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 323
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->vk:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 327
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fB()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 336
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_1

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 339
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->vk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fA()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fC()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vm:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    return-void
.end method

.method private fD()V
    .locals 2

    .prologue
    .line 355
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 355
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private fE()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 359
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vn:Landroid/preference/CheckBoxPreference;

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

    .line 362
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fF()V
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_rounded_corners"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fG()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vl:Landroid/preference/CheckBoxPreference;

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
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    return-void
.end method

.method private fH()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 385
    :goto_1
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private fI()V
    .locals 2

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private fJ()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vq:Landroid/preference/CheckBoxPreference;

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
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    return-void
.end method

.method private fK()V
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vo:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 420
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;)V

    .line 421
    return-void
.end method

.method private fL()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 434
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 435
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 436
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 437
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 438
    if-lt v3, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    :goto_1
    return-void

    .line 436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private fM()V
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fN()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 466
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vs:Landroid/preference/CheckBoxPreference;

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
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 468
    return-void
.end method

.method private fO()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fP()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 479
    return-void
.end method

.method private fp()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    return-void
.end method

.method private fq()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->om:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->cO:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/security/MiuiLockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private fr()V
    .locals 7

    .prologue
    .line 235
    const/4 v2, 0x1

    .line 236
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070036

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070037

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 241
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 242
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    :cond_0
    return-void

    .line 241
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private fs()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ca:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vg:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b04fe

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vg:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b04fd

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ft()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 271
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private fu()V
    .locals 2

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vc:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 284
    :goto_1
    return-void

    .line 280
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private fv()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 287
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vh:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ft()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fw()V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fx()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vi:Landroid/preference/CheckBoxPreference;

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
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    return-void
.end method

.method private fy()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vj:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fz()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vj:Landroid/preference/CheckBoxPreference;

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
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    return-void
.end method

.method private n(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 452
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 453
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 454
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fL()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 568
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 569
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->vv:Z

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vc:Landroid/view/IWindowManager;

    .line 135
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ca:Landroid/app/backup/IBackupManager;

    .line 138
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 140
    const-string v0, "enable_adb"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v0, "keep_screen_on"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->ve:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v0, "allow_mock_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vf:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v0, "local_backup_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vg:Landroid/preference/PreferenceScreen;

    .line 145
    const-string v0, "strict_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vh:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v0, "pointer_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vi:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v0, "show_touches"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vj:Landroid/preference/CheckBoxPreference;

    .line 148
    const-string v0, "show_screen_updates"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vk:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v0, "show_cpu_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vl:Landroid/preference/CheckBoxPreference;

    .line 150
    const-string v0, "force_hw_ui"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vm:Landroid/preference/CheckBoxPreference;

    .line 151
    const-string v0, "show_rounded_corners"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vn:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v0, "window_animation_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vo:Landroid/preference/ListPreference;

    .line 153
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vo:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    const-string v0, "transition_animation_scale"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vp:Landroid/preference/ListPreference;

    .line 155
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vp:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string v0, "immediately_destroy_activities"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vq:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v0, "app_process_limit"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    const-string v0, "show_all_anrs"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vs:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v0, "show_fc"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vu:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v0, "unlock_enter_system"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    .line 168
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->cO:Lmiui/security/ChooseLockSettingsHelper;

    .line 169
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->om:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    const-string v0, "verifier_device_identifier"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fp()V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 588
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 589
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->vv:Z

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 583
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 544
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fr()V

    .line 558
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vo:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vo:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 552
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->a(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->vr:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 555
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-static {}, Lcom/android/settings/ci;->hg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :goto_0
    return v0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 490
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->vv:Z

    .line 492
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 493
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0438

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

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    .line 500
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vw:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 505
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->ve:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->ve:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    :cond_5
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 510
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vf:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->vf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 514
    :cond_8
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 515
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fu()V

    goto :goto_1

    .line 516
    :cond_9
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    .line 517
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fw()V

    goto :goto_1

    .line 518
    :cond_a
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vj:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_b

    .line 519
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fy()V

    goto :goto_1

    .line 520
    :cond_b
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    .line 521
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fB()V

    goto :goto_1

    .line 522
    :cond_c
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_d

    .line 523
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fH()V

    goto :goto_1

    .line 524
    :cond_d
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vq:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_e

    .line 525
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fI()V

    goto :goto_1

    .line 526
    :cond_e
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_f

    .line 527
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fM()V

    goto :goto_1

    .line 528
    :cond_f
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_10

    .line 529
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fD()V

    goto/16 :goto_1

    .line 530
    :cond_10
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_11

    .line 531
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fF()V

    goto/16 :goto_1

    .line 532
    :cond_11
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_12

    .line 533
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->om:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->om:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->vt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    goto/16 :goto_1

    .line 535
    :cond_12
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vu:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 536
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fO()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->vd:Landroid/preference/CheckBoxPreference;

    const-string v0, "adb_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->ve:Landroid/preference/CheckBoxPreference;

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->vf:Landroid/preference/CheckBoxPreference;

    const-string v4, "mock_location"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fq()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fr()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fs()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fv()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fx()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fz()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fA()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fG()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fC()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fE()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fK()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fJ()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fL()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fN()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->fP()V

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    :cond_2
    move v1, v2

    .line 201
    goto :goto_2
.end method
