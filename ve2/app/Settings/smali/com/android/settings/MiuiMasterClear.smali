.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# instance fields
.field private lA:Z

.field private lB:Landroid/app/Dialog;

.field private lC:Landroid/widget/TextView;

.field private lx:Landroid/preference/CheckBoxPreference;

.field private ly:Landroid/preference/CheckBoxPreference;

.field private lz:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cV()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cW()V

    return-void
.end method

.method private cT()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lz:Ljava/util/HashSet;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/media/preset_apps"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Lcom/android/settings/aA;

    invoke-direct {v3, p0}, Lcom/android/settings/aA;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_1

    .line 146
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 148
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/settings/MiuiMasterClear;->lz:Ljava/util/HashSet;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method private cU()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0690

    .line 214
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b030d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b068c

    new-instance v2, Lcom/android/settings/az;

    invoke-direct {v2, p0}, Lcom/android/settings/az;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void

    .line 206
    :cond_0
    const v0, 0x7f0b068e

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b068f

    goto :goto_0

    :cond_2
    const v0, 0x7f0b068d

    goto :goto_0
.end method

.method private cV()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10300f1

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    const v1, 0x603002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    const v0, 0x60b0021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lC:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lC:Landroid/widget/TextView;

    const v2, 0x7f0b0691

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    const v0, 0x60b0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 245
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 249
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x60201e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 252
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 253
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 254
    new-instance v0, Lcom/android/settings/ay;

    invoke-direct {v0, p0}, Lcom/android/settings/ay;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method private cW()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->lA:Z

    if-eqz v0, :cond_2

    .line 259
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private cX()Z
    .locals 2

    .prologue
    .line 269
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
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

.method static synthetic d(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lz:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lB:Landroid/app/Dialog;

    return-object v0
.end method

.method private z(I)Z
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

    const v2, 0x7f0b0310

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0311

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cU()V

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
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 106
    const-string v0, "erase_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v0, "erase_external_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v0, "erase_optional"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 110
    sget-boolean v1, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    .line 117
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 118
    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->ly:Landroid/preference/CheckBoxPreference;

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->lA:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->lA:Z

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->lx:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 127
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cV()V

    .line 132
    :cond_2
    :goto_1
    return-void

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cT()V

    goto :goto_0

    .line 129
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cW()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x1

    const v1, 0x7f0b030d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 167
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 173
    if-ne v1, v0, :cond_1

    .line 179
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->z(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cU()V

    .line 184
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
    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 162
    return-void
.end method
