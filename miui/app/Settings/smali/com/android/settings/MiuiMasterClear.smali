.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# instance fields
.field private mU:Landroid/preference/CheckBoxPreference;

.field private mV:Landroid/preference/CheckBoxPreference;

.field private mW:Ljava/util/HashSet;

.field private mX:Z

.field private mY:Landroid/app/Dialog;

.field private mZ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 278
    return-void
.end method

.method private F(I)Z
    .locals 4
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0330

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0331

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->dh()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->di()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mW:Ljava/util/HashSet;

    return-object v0
.end method

.method private df()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mW:Ljava/util/HashSet;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 142
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/media/preset_apps"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    new-instance v3, Lcom/android/settings/aR;

    invoke-direct {v3, p0}, Lcom/android/settings/aR;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_1

    .line 151
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 154
    iget-object v6, p0, Lcom/android/settings/MiuiMasterClear;->mW:Ljava/util/HashSet;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method private dg()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0734

    .line 219
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b032d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0730

    new-instance v2, Lcom/android/settings/aQ;

    invoke-direct {v2, p0}, Lcom/android/settings/aQ;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 238
    return-void

    .line 211
    :cond_0
    const v0, 0x7f0b0732

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0733

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0731

    goto :goto_0
.end method

.method private dh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10300f1

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 245
    const v1, 0x603002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 246
    const v0, 0x60b0021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mZ:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mZ:Landroid/widget/TextView;

    const v2, 0x7f0b0735

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    const v0, 0x60b0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x6020034

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 257
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 258
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 259
    new-instance v0, Lcom/android/settings/aP;

    invoke-direct {v0, p0}, Lcom/android/settings/aP;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/aP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    return-void
.end method

.method private di()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mX:Z

    if-eqz v0, :cond_2

    .line 264
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private dj()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mY:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->dg()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->setHasOptionsMenu(Z)V

    .line 105
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 106
    const-string v0, "erase_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v0, "erase_external_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v0, "erase_optional"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 110
    sget-boolean v1, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    .line 117
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 120
    if-eqz v1, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->dj()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    .line 129
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mX:Z

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mX:Z

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mU:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 132
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->dh()V

    .line 137
    :cond_3
    :goto_2
    return-void

    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->df()V

    goto :goto_0

    .line 124
    :cond_5
    if-eqz v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0736

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mV:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0737

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 134
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->di()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    const/4 v0, 0x1

    const v1, 0x7f0b032d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 178
    if-ne v1, v0, :cond_1

    .line 184
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->F(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->dg()V

    .line 189
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 167
    return-void
.end method
