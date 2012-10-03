.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenResourceManager;
.super Lmiui/app/screenelement/ResourceManager;
.source "LockscreenResourceManager.java"


# static fields
.field private static final CHECK_TIME:I = 0x36ee80

.field private static final INACTIVE_TIME:I = 0x36ee80

.field private static final LOG_TAG:Ljava/lang/String; = "LockscreenResourceManager"

.field private static mLastCheckCacheTime:J


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V
    .locals 0
    .parameter "resourceLoader"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    .line 21
    return-void
.end method


# virtual methods
.method public checkCache()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x36ee80

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 25
    .local v1, currentTimeMillis:J
    sget-wide v7, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenResourceManager;->mLastCheckCacheTime:J

    sub-long v7, v1, v7

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 42
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v7, "LockscreenResourceManager"

    const-string v8, "beging check cache... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v5, mToBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 31
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .line 32
    .local v0, bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-wide v7, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v7, v1, v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 33
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    .end local v0           #bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 38
    .local v6, s:Ljava/lang/String;
    const-string v7, "LockscreenResourceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v7, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    .end local v6           #s:Ljava/lang/String;
    :cond_3
    sput-wide v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenResourceManager;->mLastCheckCacheTime:J

    goto :goto_0
.end method
