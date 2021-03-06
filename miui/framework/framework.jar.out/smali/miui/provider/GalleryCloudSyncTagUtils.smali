.class public Lmiui/provider/GalleryCloudSyncTagUtils;
.super Ljava/lang/Object;
.source "GalleryCloudSyncTagUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryCloudSyncTagUtils"

.field private static final sSyncTagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncTag(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 29
    sget-object v3, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_0
    monitor-exit v3

    .line 38
    :goto_0
    return-wide v1

    :cond_1
    const-wide/16 v1, 0x1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 41
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 42
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "syncTag"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountName = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "accountType"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 63
    sget-object v2, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountName"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "accountType"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1, v0}, Lmiui/provider/GalleryCloudSyncTagUtils;->internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 68
    monitor-exit v2

    .line 69
    return-void

    .line 68
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "values"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 76
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/provider/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    :cond_0
    const-string/jumbo v2, "syncTag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 92
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    return-void

    .line 83
    :cond_3
    :try_start_1
    const-string/jumbo v2, "syncTag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    if-eqz v0, :cond_2

    goto :goto_1

    .line 86
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "syncTag"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 87
    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_5
    throw v2
.end method

.method public static setSyncTag(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/Long;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "syncTag"

    .prologue
    .line 55
    sget-object v2, Lmiui/provider/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "syncTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    invoke-static {p0, p1, v0}, Lmiui/provider/GalleryCloudSyncTagUtils;->internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    .line 59
    monitor-exit v2

    .line 60
    return-void

    .line 59
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
