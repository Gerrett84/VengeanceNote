.class public Lcom/android/settings/MiuiSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettings.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private qg:Lcom/android/settings/FrequentlyFragment;

.field private qh:Lcom/android/settings/SettingsFragment;

.field private qi:Lcom/android/settings/dp;

.field private qj:Landroid/support/v4/view/ViewPager;

.field private qk:Lcom/android/settings/MiuiSettings$TabState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->lD:Lcom/android/settings/MiuiSettings$TabState;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qk:Lcom/android/settings/MiuiSettings$TabState;

    .line 353
    return-void
.end method

.method private R(I)Landroid/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 284
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->lD:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    .line 287
    :goto_0
    return-object v0

    .line 286
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->lE:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSettings;I)Landroid/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->R(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/FrequentlyFragment;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    return-object v0
.end method

.method private a(Lcom/android/settings/MiuiSettings$TabState;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 105
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 106
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->qi:Lcom/android/settings/dp;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 107
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 108
    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    return-object v0
.end method

.method private dQ()Z
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private ek()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    .line 92
    new-instance v0, Lcom/android/settings/dp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dp;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dF;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qi:Lcom/android/settings/dp;

    .line 94
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 98
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->lD:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b0641

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 99
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->lE:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b0640

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 100
    return-void
.end method

.method private el()V
    .locals 5

    .prologue
    const v4, 0x7f080134

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qj:Landroid/support/v4/view/ViewPager;

    .line 116
    new-instance v0, Lcom/android/settings/bk;

    invoke-direct {v0, p0}, Lcom/android/settings/bk;-><init>(Lcom/android/settings/MiuiSettings;)V

    .line 117
    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->qj:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 118
    new-instance v0, Lcom/android/settings/bv;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/bv;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dF;)V

    .line 119
    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->qj:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 127
    const-string v0, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FrequentlyFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    .line 129
    const-string v0, "com.android.settings.SettingsFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    .line 132
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/settings/FrequentlyFragment;

    invoke-direct {v0}, Lcom/android/settings/FrequentlyFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    .line 134
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    const-string v3, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    .line 139
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    const-string v3, "com.android.settings.SettingsFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qg:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qh:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 146
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 147
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/MiuiSettings$TabState;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/android/settings/MiuiSettings;->qk:Lcom/android/settings/MiuiSettings$TabState;

    .line 297
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qk:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 303
    :cond_1
    if-eqz p2, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qj:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateOptionsMenu()V

    .line 307
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    move v1, v0

    .line 316
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 317
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 319
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v2

    .line 320
    const v3, 0x7f080209

    if-ne v2, v3, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->dQ()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_9

    .line 348
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 350
    goto :goto_0

    .line 323
    :cond_1
    const v3, 0x7f0801fe

    if-eq v2, v3, :cond_2

    const v3, 0x7f080208

    if-ne v2, v3, :cond_3

    .line 324
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/android/settings/ci;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 325
    :cond_3
    const v3, 0x7f0801fd

    if-ne v2, v3, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_4
    const v3, 0x7f0801f1

    if-ne v2, v3, :cond_5

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_5
    const v3, 0x7f0801f9

    if-ne v2, v3, :cond_6

    invoke-static {p0}, Lcom/android/settings/ci;->G(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 337
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_6
    const v3, 0x7f0801ef

    if-ne v2, v3, :cond_7

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_7

    .line 340
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_7
    const v3, 0x7f0801f8

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    :cond_8
    return-void

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 157
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->el()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->ek()V

    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    const-string v1, "leave_fragment_index"

    sget-object v2, Lcom/android/settings/MiuiSettings$TabState;->lD:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v2}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 86
    invoke-static {v0}, Lcom/android/settings/MiuiSettings$TabState;->A(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    const-string v1, "leave_fragment_index"

    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->qk:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v2}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 175
    return-void
.end method
