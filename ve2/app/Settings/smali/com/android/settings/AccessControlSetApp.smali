.class public Lcom/android/settings/AccessControlSetApp;
.super Landroid/preference/PreferenceActivity;
.source "AccessControlSetApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CV:Ljava/util/HashSet;


# instance fields
.field private final CU:Ljava/util/Comparator;

.field private bd:Landroid/content/pm/PackageManager;

.field private cO:Lmiui/security/ChooseLockSettingsHelper;

.field private mHandler:Landroid/os/Handler;

.field private yB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    .line 52
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.monitor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    .line 39
    new-instance v0, Lcom/android/settings/bx;

    invoke-direct {v0, p0}, Lcom/android/settings/bx;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->CU:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/AccessControlSetApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/AccessControlSetApp;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->hy()V

    return-void
.end method

.method private hy()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, -0x8000

    .line 124
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    const v3, 0x20001

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/android/settings/AccessControlSetApp;->CU:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 128
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    if-eqz v4, :cond_0

    .line 133
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 134
    and-int/lit8 v0, v5, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/settings/AccessControlSetApp;->CV:Ljava/util/HashSet;

    iget-object v6, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :cond_1
    new-instance v6, Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 144
    :cond_2
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_3
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 153
    and-int v0, v5, v7

    if-ne v0, v7, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 153
    goto :goto_1

    .line 160
    :cond_5
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 193
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    .line 96
    :cond_0
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->cO:Lmiui/security/ChooseLockSettingsHelper;

    .line 97
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->cO:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessControlSetApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 108
    :cond_1
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControlSetApp;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    if-eqz v0, :cond_3

    .line 112
    invoke-direct {p0}, Lcom/android/settings/AccessControlSetApp;->hy()V

    .line 121
    :goto_1
    return-void

    .line 101
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bB;

    invoke-direct {v1, p0}, Lcom/android/settings/bB;-><init>(Lcom/android/settings/AccessControlSetApp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 203
    check-cast p2, Ljava/lang/Boolean;

    .line 204
    iget-object v2, p0, Lcom/android/settings/AccessControlSetApp;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 206
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessControlSetApp;->yB:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/AccessControlSetApp;->finish()V

    .line 169
    :cond_0
    return-void
.end method
