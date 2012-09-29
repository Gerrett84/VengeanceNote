.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# static fields
.field private static final DL:[Ljava/lang/String;

.field private static final DM:[Ljava/lang/String;


# instance fields
.field private DN:I

.field private DO:Landroid/preference/PreferenceCategory;

.field private DP:Landroid/preference/PreferenceCategory;

.field private DQ:Landroid/preference/PreferenceCategory;

.field private DR:Landroid/preference/Preference;

.field private final DS:Ljava/util/ArrayList;

.field private final DT:Ljava/util/ArrayList;

.field private DU:Landroid/preference/CheckBoxPreference;

.field private DV:Z

.field private DW:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private DX:Landroid/content/Intent;

.field private jO:Landroid/hardware/input/InputManager;

.field private mHandler:Landroid/os/Handler;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private pU:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DL:[Ljava/lang/String;

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DN:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    .line 591
    return-void
.end method

.method private W(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 539
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 541
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 462
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    :goto_0
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 472
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, v6}, Lcom/android/settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 474
    return-object v0

    .line 467
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iR()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->W(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    .line 393
    array-length v4, p2

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p2, v3

    .line 394
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    add-int/lit8 v0, v0, 0x1

    .line 397
    if-le v0, v1, :cond_0

    .line 402
    :goto_1
    return v2

    .line 393
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_1
    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private e(Landroid/preference/Preference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->a(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v0

    .line 225
    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 230
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    const v2, 0x7f0b0440

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 233
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 234
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    const v0, 0x7f0b0441

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 248
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x606000c

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x606000d

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 343
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    aget-object v0, v1, v0

    .line 348
    :goto_1
    return-object v0

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private iQ()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 435
    instance-of v2, v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 436
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->aN()V

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iR()V

    .line 440
    return-void
.end method

.method private iR()V
    .locals 6

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "current_input_method"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 446
    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private iS()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iT()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iU()V

    .line 480
    return-void
.end method

.method private iT()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 485
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    move v0, v1

    .line 486
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 487
    aget v2, v4, v0

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 488
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    invoke-virtual {v5}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    .line 492
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v6}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 497
    :goto_1
    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 498
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    :goto_2
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 494
    goto :goto_1

    .line 502
    :cond_2
    const v2, 0x7f0b043d

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 517
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_4

    .line 520
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v0, v2

    .line 522
    goto :goto_3

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 526
    :goto_4
    if-ge v1, v2, :cond_6

    .line 527
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 528
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 529
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 532
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    :goto_5
    return-void

    .line 534
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private iU()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 568
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 571
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DQ:Landroid/preference/PreferenceCategory;

    const-string v2, "vibrate_input_devices"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    :goto_1
    return-void

    .line 573
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private iV()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    move v0, v1

    .line 582
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 583
    aget v3, v2, v0

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 584
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    const/4 v1, 0x1

    .line 588
    :cond_0
    return v1

    .line 582
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Q(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 549
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DX:Landroid/content/Intent;

    .line 552
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DX:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DX:Landroid/content/Intent;

    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DX:Landroid/content/Intent;

    .line 563
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->W(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 115
    const v0, 0x7f0b0005

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DN:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :goto_1
    new-instance v0, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 137
    const-string v0, "hard_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    .line 138
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DO:Landroid/preference/PreferenceCategory;

    .line 140
    const-string v0, "game_controller_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DQ:Landroid/preference/PreferenceCategory;

    .line 144
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DV:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DV:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DO:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 158
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DO:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 161
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DV:Z

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const-string v1, "current_input_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0463

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DO:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    if-nez v0, :cond_3

    move v1, v2

    :goto_2
    move v3, v2

    .line 170
    :goto_3
    if-ge v3, v1, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->a(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;

    move-result-object v0

    .line 173
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 124
    :cond_2
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DR:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 178
    :goto_4
    if-ge v2, v1, :cond_5

    .line 179
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DO:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 183
    :cond_5
    sget-boolean v0, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    const-string v0, "input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->jO:Landroid/hardware/input/InputManager;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iS()V

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/SpellCheckersPreference;

    .line 205
    if-eqz v0, :cond_7

    .line 206
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 209
    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DW:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 211
    return-void

    .line 190
    :cond_8
    const-string v0, "show_magnifier_when_input"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DU:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DU:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->showMagnifierWhenInput(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 117
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iS()V

    .line 322
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iS()V

    .line 327
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iS()V

    .line 332
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 317
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 354
    invoke-static {}, Lcom/android/settings/cu;->jh()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    .line 388
    :goto_0
    return v3

    .line 357
    :cond_0
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 358
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 360
    :cond_2
    const-string v0, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 363
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 365
    :cond_3
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 366
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 367
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 368
    :goto_2
    sget-object v4, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DM:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 369
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DM:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DL:[Ljava/lang/String;

    aget-object v1, v5, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 368
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DQ:Landroid/preference/PreferenceCategory;

    const-string v4, "vibrate_input_devices"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 382
    :cond_8
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraSettings$Secure;->SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 255
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DV:Z

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DR:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 262
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DR:Landroid/preference/Preference;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    const-string v0, "key_user_dictionary_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->e(Landroid/preference/Preference;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 290
    :goto_1
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DM:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DP:Landroid/preference/PreferenceCategory;

    sget-object v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DM:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->DL:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v3, v2

    .line 293
    goto :goto_2

    .line 298
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iS()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->pU:Ljava/util/List;

    invoke-static {p0, v0, v1, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 303
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->iQ()V

    .line 304
    return-void
.end method
