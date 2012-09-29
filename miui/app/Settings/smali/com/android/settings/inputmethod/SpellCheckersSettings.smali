.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MC:Landroid/view/textservice/TextServicesManager;

.field private Pw:Landroid/view/textservice/SpellCheckerInfo;

.field private Px:[Landroid/view/textservice/SpellCheckerInfo;

.field private final Py:Ljava/util/ArrayList;

.field private ge:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Py:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    return-void
.end method

.method private static a(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    .line 144
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0431

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->lI()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->ge:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    return-void
.end method

.method private d(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->lI()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mg()V

    .line 157
    return-void
.end method

.method private mf()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Pw:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->a(Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 77
    return-void
.end method

.method private mg()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mh()V

    .line 82
    return-void
.end method

.method private mh()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    invoke-static {v0}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->a(Landroid/view/textservice/TextServicesManager;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Pw:Landroid/view/textservice/SpellCheckerInfo;

    .line 87
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    invoke-static {v0}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->b(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Px:[Landroid/view/textservice/SpellCheckerInfo;

    .line 88
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Pw:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Px:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Py:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Px:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Px:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v2, v2, v0

    .line 94
    new-instance v4, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V

    .line 96
    iget-object v5, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Py:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2, v3}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v5, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Pw:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Pw:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setSelected(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 98
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->MC:Landroid/view/textservice/TextServicesManager;

    .line 54
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mg()V

    .line 56
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mf()V

    .line 73
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->Py:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v1, v0

    .line 108
    goto :goto_0

    .line 111
    :cond_0
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->lI()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    .line 118
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mg()V

    .line 67
    return-void
.end method
