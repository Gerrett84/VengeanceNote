.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/v;


# static fields
.field private static final JM:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final JN:Ljava/util/Set;


# instance fields
.field private final BQ:Landroid/content/res/Configuration;

.field private final BT:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private final JO:Ljava/util/Map;

.field private final JP:Lcom/android/internal/content/PackageMonitor;

.field private JQ:Landroid/preference/PreferenceCategory;

.field private JR:Landroid/preference/PreferenceCategory;

.field private JS:Landroid/preference/CheckBoxPreference;

.field private JT:Landroid/preference/CheckBoxPreference;

.field private JU:Landroid/preference/CheckBoxPreference;

.field private JV:Landroid/preference/CheckBoxPreference;

.field private JW:Landroid/preference/ListPreference;

.field private JX:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

.field private JY:Landroid/preference/Preference;

.field private JZ:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->JM:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->JN:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JO:Ljava/util/Map;

    .line 137
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->BQ:Landroid/content/res/Configuration;

    .line 139
    new-instance v0, Lcom/android/settings/V;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/V;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/dv;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JP:Lcom/android/internal/content/PackageMonitor;

    .line 141
    new-instance v0, Lcom/android/settings/dv;

    invoke-direct {v0, p0}, Lcom/android/settings/dv;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/settings/dx;

    invoke-direct {v0, p0}, Lcom/android/settings/dx;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->BT:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 618
    return-void
.end method

.method private static N(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .parameter

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    if-nez v0, :cond_0

    .line 531
    const-string v0, ""

    .line 533
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 534
    sget-object v2, Lcom/android/settings/AccessibilitySettings;->JM:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 535
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 536
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_1

    .line 541
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_2
    return-object v1
.end method

.method static synthetic O(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->N(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kY()V

    return-void
.end method

.method private static b(Landroid/app/Activity;)Lcom/android/settings/af;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 575
    new-instance v0, Lcom/android/settings/af;

    invoke-direct {v0, p0}, Lcom/android/settings/af;-><init>(Landroid/content/Context;)V

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 578
    invoke-virtual {v0, v3, v3, v1, v3}, Lcom/android/settings/af;->setPadding(IIII)V

    .line 579
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 585
    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kU()V

    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)Lcom/android/settings/af;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->b(Landroid/app/Activity;)Lcom/android/settings/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kW()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private kO()V
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->BQ:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 232
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->BQ:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    return-void

    .line 231
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private kP()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private kQ()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 249
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kR()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kS()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 258
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    .line 259
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JR:Landroid/preference/PreferenceCategory;

    .line 262
    const-string v0, "toggle_large_text_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JS:Landroid/preference/CheckBoxPreference;

    .line 266
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JT:Landroid/preference/CheckBoxPreference;

    .line 268
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->H(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JR:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->JT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_1
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JU:Landroid/preference/CheckBoxPreference;

    .line 278
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JV:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    .line 284
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 288
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AccessibilitySettings;->JZ:I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 291
    array-length v4, v2

    move v0, v1

    .line 292
    :goto_0
    if-ge v0, v4, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JO:Ljava/util/Map;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    const-string v0, "toggle_script_injection_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JX:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    .line 300
    return-void
.end method

.method private kT()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kU()V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kV()V

    .line 305
    return-void
.end method

.method private kU()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->N(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 324
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 325
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 329
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 332
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 340
    :goto_2
    if-eqz v4, :cond_4

    .line 341
    const v11, 0x7f0b049b

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 347
    const-class v11, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 350
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 351
    const-string v12, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v12, "checked"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    const-string v4, "title"

    invoke-virtual {v11, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 357
    const v4, 0x7f0b04a9

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 363
    const-string v10, "enable_warning_title"

    const v12, 0x7f0b04a1

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v10, "enable_warning_message"

    const v12, 0x7f0b04a2

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v10, "disable_warning_title"

    const v12, 0x7f0b04a3

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v10, "disable_warning_message"

    const v12, 0x7f0b04a4

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 377
    const-string v10, "settings_title"

    const v12, 0x7f0b049a

    invoke-virtual {p0, v12}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
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

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 321
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 338
    goto/16 :goto_2

    .line 343
    :cond_4
    const v11, 0x7f0b049c

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 388
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 389
    new-instance v0, Lcom/android/settings/dy;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dy;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    .line 403
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    const v1, 0x7f040077

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_7
    return-void
.end method

.method private kV()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->BQ:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JS:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JS:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->BQ:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 426
    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cu;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 431
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 433
    :goto_2
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JT:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kW()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 442
    :goto_3
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/settings/AccessibilitySettings;->JZ:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 447
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->JO:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_script_injection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 454
    :goto_4
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JX:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->x(Z)V

    .line 455
    return-void

    :cond_2
    move v0, v2

    .line 422
    goto :goto_1

    :cond_3
    move v0, v2

    .line 431
    goto :goto_2

    :cond_4
    move v0, v2

    .line 440
    goto :goto_3

    :cond_5
    move v1, v2

    .line 452
    goto :goto_4

    .line 417
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private kW()V
    .locals 2

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JU:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 463
    :cond_0
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kX()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 467
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    if-eq v2, v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 471
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 473
    :cond_2
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private kY()V
    .locals 7

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 515
    sget-object v3, Lcom/android/settings/AccessibilitySettings;->JN:Ljava/util/Set;

    .line 516
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 517
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 518
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 519
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 520
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 525
    :cond_0
    return-void
.end method

.method static synthetic kZ()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->JN:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kS()V

    .line 177
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 507
    :goto_0
    return-object v0

    .line 486
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b04a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b04a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/dz;

    invoke-direct {v3, p0}, Lcom/android/settings/dz;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JP:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->BT:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 198
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 202
    check-cast p2, Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JW:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JO:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v0, 0x1

    .line 209
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

    .line 214
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JS:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kO()V

    .line 226
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JT:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kP()V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JU:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kQ()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JV:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kR()V

    .line 226
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kY()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kT()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JQ:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->JY:Landroid/preference/Preference;

    if-ne v0, v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->kX()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->JP:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->BT:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 190
    return-void
.end method
