.class public Lcom/android/settings/a/h;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final Kv:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/a/h;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method private aT(I)Lcom/android/settings/a/c;
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/settings/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/android/settings/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 82
    new-instance v2, Lcom/android/settings/a/c;

    invoke-direct {v2}, Lcom/android/settings/a/c;-><init>()V

    .line 83
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    .line 87
    sparse-switch p1, :sswitch_data_0

    .line 105
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 109
    :goto_0
    if-ne v0, v5, :cond_3

    .line 110
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_1
    iget-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    :cond_1
    move-object v0, v2

    .line 135
    :goto_2
    return-object v0

    .line 89
    :sswitch_0
    const v0, 0x7f0b04ee

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 91
    goto :goto_2

    .line 93
    :sswitch_1
    const v0, 0x7f0b060e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 95
    goto :goto_2

    .line 97
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/a/h;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 99
    invoke-static {v0}, Lcom/android/settings/cu;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 101
    goto :goto_2

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    .line 113
    :cond_3
    if-le v0, v5, :cond_0

    .line 114
    :try_start_1
    new-array v5, v0, [Ljava/lang/CharSequence;

    iput-object v5, v2, Lcom/android/settings/a/c;->uq:[Ljava/lang/CharSequence;

    .line 115
    :goto_3
    if-ge v1, v0, :cond_0

    .line 116
    aget-object v5, v3, v1

    .line 117
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 118
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 120
    iget-object v8, v2, Lcom/android/settings/a/c;->uq:[Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 121
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_4

    .line 122
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 128
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(IZ)Lcom/android/settings/a/c;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/c;

    .line 57
    monitor-exit v1

    .line 59
    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/a/h;->aT(I)Lcom/android/settings/a/c;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    monitor-enter v1

    .line 68
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/a/h;->Kv:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
