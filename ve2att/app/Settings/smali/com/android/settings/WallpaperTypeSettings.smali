.class public Lcom/android/settings/WallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private jI()V
    .locals 10

    .prologue
    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 43
    const/high16 v0, 0x1

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 50
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 52
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 57
    :goto_1
    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 60
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f05005b

    invoke-virtual {p0, v0}, Lcom/android/settings/WallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/WallpaperTypeSettings;->jI()V

    .line 37
    return-void
.end method
