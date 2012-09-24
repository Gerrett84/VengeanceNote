.class Lcom/android/settings/applications/RunningState$ProcessItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field final cD:Landroid/util/SparseArray;

.field final cE:Ljava/lang/String;

.field cF:Lcom/android/settings/applications/RunningState$ProcessItem;

.field cG:I

.field cH:I

.field cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field cJ:Lcom/android/settings/applications/RunningState$MergedItem;

.field cK:Z

.field cL:Z

.field cM:Z

.field cN:J

.field mPid:I

.field final mServices:Ljava/util/HashMap;

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 274
    invoke-direct {p0, v2}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040d

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->BU:Ljava/lang/String;

    .line 277
    iput p2, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    .line 278
    iput-object p3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cE:Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method a(Landroid/content/pm/PackageManager;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 287
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 288
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v2, v3, :cond_1

    .line 289
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 290
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 299
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 302
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 304
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 305
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 306
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 307
    iput-object v2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 309
    :catch_1
    move-exception v2

    .line 315
    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 317
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 318
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v5, :cond_3

    .line 319
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_3

    .line 322
    iput-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 323
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 324
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 328
    :catch_2
    move-exception v3

    .line 315
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MX:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    .line 337
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 338
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 344
    :cond_5
    const/4 v0, 0x0

    :try_start_3
    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 346
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 349
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 446
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 448
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 449
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget v3, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 451
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;JI)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 406
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    .line 407
    iget v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    if-ne v0, p4, :cond_0

    .line 408
    iget-wide v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Iu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Iu:Ljava/lang/String;

    .line 418
    :cond_0
    return v2
.end method

.method a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 358
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 359
    if-nez v0, :cond_6

    .line 361
    new-instance v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-direct {v2}, Lcom/android/settings/applications/RunningState$ServiceItem;-><init>()V

    .line 362
    iput-object p2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 364
    :try_start_0
    iget-object v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v7, v0, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MX:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :goto_0
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MX:Landroid/content/pm/ServiceInfo;

    invoke-static {v7, v0, v5}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 370
    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MX:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    .line 371
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    move v2, v3

    .line 373
    :goto_2
    iget v5, p0, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    iput v5, v0, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    .line 374
    iput-object p2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 375
    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-nez v5, :cond_2

    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 376
    :goto_3
    iget-wide v8, v0, Lcom/android/settings/applications/RunningState$BaseItem;->cN:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_0

    .line 377
    iput-wide v5, v0, Lcom/android/settings/applications/RunningState$BaseItem;->cN:J

    move v2, v3

    .line 380
    :cond_0
    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v5, :cond_3

    .line 381
    iget-boolean v5, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MY:Z

    if-eqz v5, :cond_5

    .line 382
    iput-boolean v4, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MY:Z

    .line 386
    :goto_4
    :try_start_1
    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 387
    iget v4, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0409

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/applications/RunningState$BaseItem;->BU:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :goto_5
    return v3

    :cond_1
    move-object v0, v1

    .line 369
    goto :goto_1

    .line 375
    :cond_2
    const-wide/16 v5, -0x1

    goto :goto_3

    .line 390
    :catch_0
    move-exception v2

    .line 391
    iput-object v1, v0, Lcom/android/settings/applications/RunningState$BaseItem;->BU:Ljava/lang/String;

    goto :goto_5

    .line 394
    :cond_3
    iget-boolean v1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MY:Z

    if-nez v1, :cond_4

    .line 395
    iput-boolean v3, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->MY:Z

    .line 398
    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/RunningState$BaseItem;->BU:Ljava/lang/String;

    goto :goto_5

    .line 365
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move v3, v2

    goto :goto_6

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_2
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v1, v0

    .line 424
    :goto_0
    if-ge v3, v4, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 426
    iget-object v5, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->cF:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v5, p0, :cond_0

    .line 428
    iput-object p0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->cF:Lcom/android/settings/applications/RunningState$ProcessItem;

    move v1, v2

    .line 430
    :cond_0
    iput p3, v0, Lcom/android/settings/applications/RunningState$BaseItem;->It:I

    .line 431
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/pm/PackageManager;)V

    .line 432
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    or-int/2addr v1, v0

    .line 424
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 435
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cG:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cD:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState$ProcessItem;->cG:I

    .line 440
    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1
.end method
