.class public Lcom/android/settings/MiuiAccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/l;


# static fields
.field private static final eD:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final eE:Ljava/util/Set;


# instance fields
.field private final eF:Ljava/util/Map;

.field private final eG:Landroid/content/res/Configuration;

.field private final eH:Lcom/android/internal/content/PackageMonitor;

.field private eI:Landroid/preference/PreferenceCategory;

.field private eJ:Landroid/preference/PreferenceCategory;

.field private eK:Landroid/preference/CheckBoxPreference;

.field private eL:Landroid/preference/CheckBoxPreference;

.field private eM:Landroid/preference/CheckBoxPreference;

.field private eN:Landroid/preference/Preference;

.field private eO:Landroid/preference/ListPreference;

.field private eP:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

.field private eQ:Landroid/preference/Preference;

.field private eR:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/MiuiAccessibilitySettings;->eD:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiAccessibilitySettings;->eE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eF:Ljava/util/Map;

    .line 144
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eG:Landroid/content/res/Configuration;

    .line 146
    new-instance v0, Lcom/android/settings/aC;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/aC;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;Lcom/android/settings/G;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eH:Lcom/android/internal/content/PackageMonitor;

    .line 148
    new-instance v0, Lcom/android/settings/G;

    invoke-direct {v0, p0}, Lcom/android/settings/G;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 679
    return-void
.end method

.method private static a(Landroid/app/Activity;)Lcom/android/settings/bS;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    .line 565
    new-instance v0, Lcom/android/settings/bS;

    invoke-direct {v0, p0}, Lcom/android/settings/bS;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 568
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 571
    iput v1, v2, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 572
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 574
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 575
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->at()V

    return-void
.end method

.method private al()V
    .locals 2

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eG:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 224
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eG:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    return-void

    .line 223
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private am()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private an()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ao()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 245
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    .line 246
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eJ:Landroid/preference/PreferenceCategory;

    .line 249
    const-string v0, "toggle_large_text_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eK:Landroid/preference/CheckBoxPreference;

    .line 253
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eL:Landroid/preference/CheckBoxPreference;

    .line 255
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eJ:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_1
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eM:Landroid/preference/CheckBoxPreference;

    .line 265
    const-string v0, "toggle_touch_exploration_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    .line 268
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    .line 270
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 274
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eR:I

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 277
    array-length v4, v2

    move v0, v1

    .line 278
    :goto_0
    if-ge v0, v4, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eF:Ljava/util/Map;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    const-string v0, "toggle_script_injection_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eP:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    .line 286
    return-void
.end method

.method private ap()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->aq()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->ar()V

    .line 291
    return-void
.end method

.method private aq()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->e(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 310
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 311
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 315
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 318
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 326
    :goto_2
    if-eqz v4, :cond_4

    .line 327
    const v11, 0x7f0b0453

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 333
    const-class v11, Lcom/android/settings/MiuiAccessibilitySettings$ToggleAccessibilityServiceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 336
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 337
    const-string v12, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v12, "checked"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v4, "title"

    invoke-virtual {v11, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 343
    const v4, 0x7f0b0463

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 349
    const-string v10, "enable_warning_title"

    const v12, 0x7f0b0459

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v10, "enable_warning_message"

    const v12, 0x7f0b045a

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v10, "disable_warning_title"

    const v12, 0x7f0b045b

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v10, "disable_warning_message"

    const v12, 0x7f0b045c

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 363
    const-string v10, "settings_title"

    const v12, 0x7f0b0451

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v10, "settings_component_name"

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 310
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 307
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 324
    goto/16 :goto_2

    .line 329
    :cond_4
    const v11, 0x7f0b0454

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 374
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 375
    new-instance v0, Lcom/android/settings/F;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/F;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    .line 389
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    const v1, 0x7f040071

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 394
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    :cond_7
    return-void
.end method

.method private ar()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eG:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eK:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eG:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 413
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 415
    :goto_2
    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 421
    :goto_3
    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eJ:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "touch_exploration_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 428
    :goto_4
    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    const v3, 0x7f0b0453

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eR:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eF:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_script_injection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 452
    :goto_6
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eP:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->y(Z)V

    .line 453
    return-void

    :cond_1
    move v0, v2

    .line 405
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 413
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 419
    goto :goto_3

    :cond_4
    move v0, v2

    .line 426
    goto :goto_4

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    const v3, 0x7f0b0454

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eJ:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eN:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_7
    move v1, v2

    .line 450
    goto :goto_6

    .line 402
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private as()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 457
    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    if-eq v2, v3, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 461
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 463
    :cond_2
    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiAccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private at()V
    .locals 7

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 505
    sget-object v3, Lcom/android/settings/MiuiAccessibilitySettings;->eE:Ljava/util/Set;

    .line 506
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 507
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 508
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 509
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 510
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method static synthetic au()Ljava/util/Set;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/MiuiAccessibilitySettings;->eE:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Landroid/app/Activity;)Lcom/android/settings/bS;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->a(Landroid/app/Activity;)Lcom/android/settings/bS;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->aq()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    if-nez v0, :cond_0

    .line 521
    const-string v0, ""

    .line 523
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 524
    sget-object v2, Lcom/android/settings/MiuiAccessibilitySettings;->eD:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 525
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 526
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    .line 531
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_2
    return-object v1
.end method

.method static synthetic f(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->e(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAccessibilitySettings;->addPreferencesFromResource(I)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->ao()V

    .line 176
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 474
    packed-switch p1, :pswitch_data_0

    .line 497
    :goto_0
    return-object v0

    .line 476
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b045e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b045f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/H;

    invoke-direct {v3, p0}, Lcom/android/settings/H;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eH:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 193
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 197
    check-cast p2, Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eO:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eF:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 209
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eK:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->al()V

    .line 218
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eL:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->am()V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eM:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->an()V

    .line 218
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->at()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->ap()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eI:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eQ:Landroid/preference/Preference;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->as()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings;->eH:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 187
    return-void
.end method
