.class Lcom/android/settings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field name:Ljava/lang/String;

.field final tW:Ljava/util/ArrayList;

.field usageTime:J

.field value:D

.field zA:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field zB:J

.field zC:J

.field zD:J

.field zE:J

.field zF:J

.field zG:J

.field zH:J

.field zI:D

.field zJ:D

.field zK:Ljava/lang/String;

.field final zx:Ljava/util/HashMap;

.field zy:Landroid/os/BatteryStats$Uid;

.field zz:[D


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zx:Ljava/util/HashMap;

    .line 66
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->tW:Ljava/util/ArrayList;

    .line 68
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zz:[D

    .line 70
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zA:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 72
    if-lez p6, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_0
    if-eqz p8, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p8, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 76
    :cond_1
    if-eqz p4, :cond_2

    if-nez p6, :cond_3

    :cond_2
    if-eqz p7, :cond_3

    .line 77
    invoke-virtual {p0, p7}, Lcom/android/settings/fuelgauge/BatterySipper;->a(Landroid/os/BatteryStats$Uid;)V

    .line 79
    :cond_3
    iput-object p7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zy:Landroid/os/BatteryStats$Uid;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/fuelgauge/BatterySipper;)I
    .locals 4
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatterySipper;->hC()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->hC()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method a(Landroid/os/BatteryStats$Uid;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zx:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zx:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    .line 104
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zK:Ljava/lang/String;

    .line 105
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 106
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    if-nez v2, :cond_3

    .line 115
    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 120
    :cond_1
    :goto_1
    const v0, 0x7f02006e

    iput v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "mediaserver"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->tW:Ljava/util/ArrayList;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->tW:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    check-cast p1, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->a(Lcom/android/settings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hC()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    return-wide v0
.end method

.method hD()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zy:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 138
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 139
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 140
    if-nez v4, :cond_0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 145
    :cond_0
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    .line 146
    array-length v0, v4

    invoke-static {v4, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 150
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 152
    aget-object v6, v5, v0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    :cond_1
    :try_start_0
    aget-object v6, v5, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 155
    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 156
    if-eqz v7, :cond_2

    .line 157
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 159
    :cond_2
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_6

    .line 160
    aget-object v7, v4, v0

    iput-object v7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zK:Ljava/lang/String;

    .line 161
    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 169
    :cond_4
    array-length v0, v5

    if-ne v0, v8, :cond_7

    .line 170
    aget-object v0, v5, v1

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 192
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zy:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;-><init>()V

    .line 194
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zK:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zx:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 164
    :catch_0
    move-exception v6

    .line 150
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_7
    array-length v0, v4

    :goto_3
    if-ge v1, v0, :cond_5

    aget-object v3, v4, v1

    .line 175
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 176
    iget v6, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v6, :cond_8

    .line 177
    iget v6, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_8

    .line 180
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 181
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_5

    .line 182
    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->zK:Ljava/lang/String;

    .line 183
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 188
    :catch_1
    move-exception v3

    .line 173
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
