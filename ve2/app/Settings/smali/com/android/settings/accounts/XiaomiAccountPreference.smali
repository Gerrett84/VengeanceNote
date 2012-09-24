.class public Lcom/android/settings/accounts/XiaomiAccountPreference;
.super Lcom/android/settings/cd;
.source "XiaomiAccountPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/cd;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/XiaomiAccountPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 30
    const-string v1, "reg_type"

    invoke-virtual {v0, p2, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f0b066f

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/XiaomiAccountPreference;->setTitle(I)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accounts/XiaomiAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b060c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/cd;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
