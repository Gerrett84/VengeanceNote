.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Lmiui/preference/BasePreferenceActivity;
.source "ChooseAccountActivity.java"


# instance fields
.field private nd:[Ljava/lang/String;

.field private sZ:Landroid/preference/PreferenceGroup;

.field private final ta:Ljava/util/ArrayList;

.field public tb:Ljava/util/HashSet;

.field private tc:[Landroid/accounts/AuthenticatorDescription;

.field private td:Ljava/util/HashMap;

.field private te:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private H(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 274
    return-void
.end method

.method private dm()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 120
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 121
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->G(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 128
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_e

    if-eqz v6, :cond_e

    move v2, v1

    .line 130
    :goto_1
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_d

    .line 131
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 137
    :goto_2
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tb:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tb:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 142
    :cond_0
    const-string v6, "com.xiaomi.unactivated"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    .line 157
    :cond_1
    :goto_3
    if-eqz v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-direct {v6, v5, v4}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_4
    const-string v6, "com.xiaomi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 148
    const-string v6, "com.xiaomi"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 150
    const-string v7, "com.xiaomi.unactivated"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 153
    array-length v6, v6

    if-nez v6, :cond_5

    array-length v2, v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_3

    .line 160
    :cond_6
    const-string v2, "ChooseAccountActivity"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const-string v2, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped pref "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no authority we need"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 168
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->H(Ljava/lang/String;)V

    .line 190
    :cond_8
    :goto_5
    return-void

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->sZ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->ta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 173
    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->F(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    new-instance v3, Lcom/android/settings/accounts/ProviderPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->c(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->sZ:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 179
    :cond_a
    const-string v0, "ChooseAccountActivity"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_b

    aget-object v5, v3, v0

    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 185
    :cond_b
    const-string v0, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No providers found for authorities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_5

    :cond_d
    move v2, v1

    goto/16 :goto_2

    :cond_e
    move v2, v3

    goto/16 :goto_2
.end method

.method private dn()V
    .locals 4

    .prologue
    .line 110
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    .line 111
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tc:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->dm()V

    .line 115
    return-void
.end method


# virtual methods
.method protected F(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 223
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 230
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected G(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 246
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 252
    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    const-string v0, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->nd:[Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tb:Ljava/util/HashSet;

    .line 97
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 98
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->tb:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->sZ:Landroid/preference/PreferenceGroup;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->dn()V

    .line 103
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 259
    instance-of v0, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 260
    check-cast p2, Lcom/android/settings/accounts/ProviderPreference;

    .line 261
    const-string v0, "ChooseAccountActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to add account of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->dY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->dY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->H(Ljava/lang/String;)V

    .line 266
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public y(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 194
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    .line 195
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 196
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 197
    aget-object v4, v2, v1

    .line 198
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 199
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->td:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
