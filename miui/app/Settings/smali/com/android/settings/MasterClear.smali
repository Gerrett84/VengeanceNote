.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private Bl:Landroid/view/View;

.field private Bm:Landroid/widget/CheckBox;

.field private oc:Landroid/view/View;

.field private od:Landroid/widget/Button;

.field private final og:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 111
    new-instance v0, Lcom/android/settings/ef;

    invoke-direct {v0, p0}, Lcom/android/settings/ef;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->og:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private F(I)Z
    .locals 4
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/settings/ct;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ct;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0330

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0331

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/ct;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->dc()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->F(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/MasterClear;->Bm:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private dc()V
    .locals 4

    .prologue
    .line 99
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 100
    const-class v0, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 101
    const v0, 0x7f0b0333

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 102
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->Bm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 104
    return-void
.end method

.method private df()Z
    .locals 2

    .prologue
    .line 174
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
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

.method private hT()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/settings/MasterClear;->od:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->og:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v2, 0x7f0800b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->Bl:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v2, 0x7f0800ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->Bm:Landroid/widget/CheckBox;

    .line 146
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 147
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->df()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->Bl:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 155
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/MasterClear;->Bm:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->hU()V

    .line 171
    return-void

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MasterClear;->Bl:Landroid/view/View;

    new-instance v1, Lcom/android/settings/eg;

    invoke-direct {v1, p0}, Lcom/android/settings/eg;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private hU()V
    .locals 15

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 180
    iget-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 181
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 185
    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 187
    array-length v8, v7

    .line 188
    if-nez v8, :cond_0

    .line 189
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v6, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 197
    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v9

    .line 198
    array-length v10, v9

    .line 200
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v8, :cond_5

    .line 201
    aget-object v11, v7, v4

    .line 202
    const/4 v2, 0x0

    .line 203
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_6

    .line 204
    iget-object v12, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v13, v9, v3

    iget-object v13, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 205
    aget-object v2, v9, v3

    move-object v3, v2

    .line 209
    :goto_3
    if-nez v3, :cond_2

    .line 210
    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No descriptor for account name="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " type="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 203
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 214
    :cond_2
    const/4 v2, 0x0

    .line 216
    :try_start_0
    iget v12, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v12, :cond_3

    .line 217
    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 218
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_3
    move-object v3, v2

    .line 224
    :goto_5
    const v2, 0x7f040042

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 226
    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    if-eqz v3, :cond_4

    .line 228
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 220
    :catch_0
    move-exception v12

    .line 221
    const-string v12, "MasterClear"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No icon for account type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_5

    .line 233
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move-object v3, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->dc()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->hT()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    const v0, 0x7f040041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    .line 242
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->hT()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/MasterClear;->oc:Landroid/view/View;

    return-object v0
.end method
