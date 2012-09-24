.class public Lcom/android/settings/display/FontSizeSettings;
.super Landroid/preference/PreferenceActivity;
.source "FontSizeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static GM:Landroid/util/SparseArray;


# instance fields
.field private GN:Ljava/util/ArrayList;

.field private GO:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    .line 27
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeSettings;->GN:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    :cond_0
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/settings/display/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 49
    const/4 v1, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    sget-object v4, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/settings/display/FontSizeSettings;->GO:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xf0

    int-to-float v5, v1

    .line 62
    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 63
    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 64
    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 67
    const-string v0, "root"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    move v1, v3

    .line 68
    :goto_2
    array-length v4, v6

    if-ge v1, v4, :cond_3

    .line 69
    new-instance v9, Lcom/android/settings/cf;

    invoke-direct {v9, p0}, Lcom/android/settings/cf;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v9, v1}, Lcom/android/settings/cf;->setOrder(I)V

    .line 71
    aget-object v4, v6, v1

    invoke-virtual {v9, v4}, Lcom/android/settings/cf;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    const v4, 0x7f0b069e

    invoke-virtual {v9, v4}, Lcom/android/settings/cf;->setSummary(I)V

    .line 73
    aget v4, v7, v1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aget v10, v8, v1

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v9, v4, v10}, Lcom/android/settings/cf;->setSize(II)V

    .line 76
    invoke-virtual {v9, p0}, Lcom/android/settings/cf;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget v4, p0, Lcom/android/settings/display/FontSizeSettings;->GO:I

    if-ne v1, v4, :cond_2

    move v4, v2

    :goto_3
    invoke-virtual {v9, v4}, Lcom/android/settings/cf;->setChecked(Z)V

    .line 79
    iget-object v4, p0, Lcom/android/settings/display/FontSizeSettings;->GN:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    :cond_2
    move v4, v3

    .line 77
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 84
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->finish()V

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    .line 90
    iget v0, p0, Lcom/android/settings/display/FontSizeSettings;->GO:I

    if-eq v2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/FontSizeSettings;->GN:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/display/FontSizeSettings;->GO:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cf;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/cf;->setChecked(Z)V

    .line 92
    iput v2, p0, Lcom/android/settings/display/FontSizeSettings;->GO:I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ui_mode_scale"

    sget-object v4, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/settings/display/FontSizeSettings;->GM:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 103
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 104
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    .line 111
    goto :goto_0
.end method
