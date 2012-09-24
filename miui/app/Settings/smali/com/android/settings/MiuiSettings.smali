.class public Lcom/android/settings/MiuiSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private qH:[I

.field private qI:Z

.field private qK:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private qM:Z

.field private sn:Lcom/android/settings/FrequentlyFragment;

.field private so:Lcom/android/settings/SettingsFragment;

.field private sp:Lcom/android/settings/dJ;

.field private sq:Landroid/support/v4/view/ViewPager;

.field private sr:Lcom/android/settings/MiuiSettings$TabState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qH:[I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSettings;->qI:Z

    .line 88
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mX:Lcom/android/settings/MiuiSettings$TabState;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->sr:Lcom/android/settings/MiuiSettings$TabState;

    .line 486
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x27t 0x2t 0x8t 0x7ft
        0x1at 0x2t 0x8t 0x7ft
        0x2ct 0x2t 0x8t 0x7ft
        0x2bt 0x2t 0x8t 0x7ft
        0x2et 0x2t 0x8t 0x7ft
        0x30t 0x2t 0x8t 0x7ft
        0x14t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method private a(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, 0x7f0b057d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->gz()[Ljava/lang/String;

    move-result-object v4

    .line 355
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v4, v3

    .line 357
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 358
    if-nez v8, :cond_0

    .line 356
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 362
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 363
    array-length v0, v9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->M(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 365
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 366
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 367
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    .line 368
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 371
    :cond_1
    const-string v11, "com.xiaomi"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 376
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v2

    .line 363
    goto :goto_2

    .line 380
    :cond_3
    if-eqz v0, :cond_5

    .line 381
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 382
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 383
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 386
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    :cond_4
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_5
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 392
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 393
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 395
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_4

    .line 399
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 407
    :cond_6
    new-instance v0, Lcom/android/settings/dY;

    invoke-direct {v0, p0}, Lcom/android/settings/dY;-><init>(Lcom/android/settings/MiuiSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 414
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 415
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 417
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->qM:Z

    if-nez v0, :cond_8

    .line 418
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 419
    iput-boolean v1, p0, Lcom/android/settings/MiuiSettings;->qM:Z

    .line 421
    :cond_8
    return p2
.end method

.method static synthetic a(Lcom/android/settings/MiuiSettings;I)Landroid/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->ac(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/FrequentlyFragment;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    return-object v0
.end method

.method private a(Lcom/android/settings/MiuiSettings$TabState;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 144
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 145
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->sp:Lcom/android/settings/dJ;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 146
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 147
    return-void
.end method

.method private ac(I)Landroid/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 328
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mX:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    .line 331
    :goto_0
    return-object v0

    .line 330
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mY:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    goto :goto_0

    .line 334
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

.method static synthetic b(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    return-object v0
.end method

.method private eC()Z
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private fi()V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    .line 131
    new-instance v0, Lcom/android/settings/dJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dJ;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dY;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->sp:Lcom/android/settings/dJ;

    .line 133
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mX:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b06cd

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 138
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->mY:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b06cc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 139
    return-void
.end method

.method private fj()V
    .locals 5

    .prologue
    const v4, 0x7f080135

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 154
    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->sq:Landroid/support/v4/view/ViewPager;

    .line 155
    new-instance v0, Lcom/android/settings/by;

    invoke-direct {v0, p0}, Lcom/android/settings/by;-><init>(Lcom/android/settings/MiuiSettings;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->sq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    new-instance v0, Lcom/android/settings/bG;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/bG;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dY;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->sq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 166
    const-string v0, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FrequentlyFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    .line 168
    const-string v0, "com.android.settings.SettingsFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    .line 171
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/settings/FrequentlyFragment;

    invoke-direct {v0}, Lcom/android/settings/FrequentlyFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    .line 173
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    const-string v3, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/android/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    .line 178
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    const-string v3, "com.android.settings.SettingsFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sn:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 183
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 185
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 186
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 187
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/MiuiSettings$TabState;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 338
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/android/settings/MiuiSettings;->sr:Lcom/android/settings/MiuiSettings$TabState;

    .line 341
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sr:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 347
    :cond_1
    if-eqz p2, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->sq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateOptionsMenu()V

    .line 351
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 429
    const/4 v0, 0x0

    move v1, v0

    .line 431
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 432
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 434
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v2

    .line 435
    const v3, 0x7f080235

    if-ne v2, v3, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->eC()Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->qH:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 476
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_d

    .line 477
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 479
    goto :goto_0

    .line 438
    :cond_2
    const v3, 0x7f080228

    if-eq v2, v3, :cond_3

    const v3, 0x7f080234

    if-ne v2, v3, :cond_4

    .line 439
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/android/settings/cu;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 440
    :cond_4
    const v3, 0x7f080227

    if-ne v2, v3, :cond_5

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    :cond_5
    const v3, 0x7f08021a

    if-ne v2, v3, :cond_6

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.bluetooth"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 450
    :cond_6
    const v3, 0x7f080222

    if-ne v2, v3, :cond_7

    invoke-static {p0}, Lcom/android/settings/cu;->I(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 452
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    :cond_7
    const v3, 0x7f080218

    if-ne v2, v3, :cond_8

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_8

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 456
    :cond_8
    const v3, 0x7f080221

    if-ne v2, v3, :cond_9

    sget-boolean v3, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 458
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 459
    :cond_9
    const v3, 0x7f080230

    if-ne v2, v3, :cond_a

    .line 460
    add-int/lit8 v1, v1, 0x1

    .line 461
    invoke-direct {p0, p1, v1}, Lcom/android/settings/MiuiSettings;->a(Ljava/util/List;I)I

    move-result v1

    goto/16 :goto_1

    .line 462
    :cond_a
    const v3, 0x7f08022a

    if-ne v2, v3, :cond_0

    .line 463
    iget-boolean v3, p0, Lcom/android/settings/MiuiSettings;->qI:Z

    if-eqz v3, :cond_b

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    :cond_b
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 480
    :cond_c
    return-void

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public fk()Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->a(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    .line 680
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->so:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->aP()V

    .line 690
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 196
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

    .line 200
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 107
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 108
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->E(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->qK:Lcom/android/settings/accounts/AuthenticatorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->a(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multiuser_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iput-boolean v3, p0, Lcom/android/settings/MiuiSettings;->qI:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->fj()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->fi()V

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    const-string v1, "leave_fragment_index"

    sget-object v2, Lcom/android/settings/MiuiSettings$TabState;->mX:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v2}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/android/settings/MiuiSettings$TabState;->G(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 209
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    const-string v1, "leave_fragment_index"

    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->sr:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v2}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->qM:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 218
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 219
    return-void
.end method
