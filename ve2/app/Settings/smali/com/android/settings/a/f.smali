.class public Lcom/android/settings/a/f;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final GA:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/f;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(IZ)Lcom/android/settings/a/c;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-object v0

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/a/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 58
    iget-object v0, p0, Lcom/android/settings/a/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    new-instance v2, Lcom/android/settings/a/c;

    invoke-direct {v2}, Lcom/android/settings/a/c;-><init>()V

    .line 61
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    .line 65
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_4

    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_1
    if-ne v0, v5, :cond_5

    .line 91
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    .line 117
    goto :goto_0

    .line 67
    :sswitch_0
    const v0, 0x7f0b04a8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    .line 70
    goto :goto_0

    .line 72
    :sswitch_1
    const v0, 0x7f0b05a2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    .line 75
    goto/16 :goto_0

    .line 77
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/a/f;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    invoke-static {v0}, Lcom/android/settings/ci;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/android/settings/a/f;->GA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 82
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 87
    goto :goto_1

    .line 94
    :cond_5
    if-le v0, v5, :cond_2

    .line 95
    :try_start_4
    new-array v5, v0, [Ljava/lang/CharSequence;

    iput-object v5, v2, Lcom/android/settings/a/c;->sd:[Ljava/lang/CharSequence;

    .line 96
    :goto_3
    if-ge v1, v0, :cond_2

    .line 97
    aget-object v5, v3, v1

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 99
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 101
    iget-object v8, v2, Lcom/android/settings/a/c;->sd:[Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 102
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_6

    .line 103
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
