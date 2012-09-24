.class public Lmiui/provider/GalleryCloudUtils;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field public static final BASE_URI:Landroid/net/Uri; = null

.field public static final CLOUD_SETTING_URI:Landroid/net/Uri; = null

.field public static final CLOUD_URI:Landroid/net/Uri; = null

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "extra_file_path"

.field public static final SAVE_TO_CLOUD_ACTION:Ljava/lang/String; = "com.miui.gallery.save_to_cloud_action"

.field private static final TAG:Ljava/lang/String; = "GalleryCloudUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "content://com.miui.gallery.cloud.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 33
    sget-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloudSetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static existXiaomiAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 44
    .local v0, xiaomiAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 52
    .local v0, accounts:[Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v2

    .line 55
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 56
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    aget-object v2, v0, v1

    goto :goto_0

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMimeTypeByGroupID(I)Ljava/lang/String;
    .locals 1
    .parameter "groupID"

    .prologue
    .line 134
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 135
    const-string v0, "image/jpeg"

    .line 141
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 139
    const-string v0, "image/png"

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static isGalleryCloudSyncable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 69
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;Z)V

    .line 98
    return-void
.end method

.method private static requestSync(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isSyncable"

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 86
    .local v0, xiaomiAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "com.miui.gallery.cloud.provider"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static saveToCloudDB(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .parameter "context"
    .parameter "filePath"
    .parameter "groupId"
    .parameter "serverType"

    .prologue
    .line 262
    invoke-static {p0, p1, p2, p3}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;II)V

    .line 264
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public static saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 18
    .parameter "context"
    .parameter "filePath"
    .parameter "groupId"
    .parameter "serverType"

    .prologue
    .line 146
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string v3, "GalleryCloudUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v2, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static/range {p2 .. p2}, Lmiui/provider/GalleryCloudUtils;->getMimeTypeByGroupID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Lmiui/os/ExtraFileUtils;->getFileTitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p1

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-direct/range {v2 .. v16}, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILandroid/location/Location;II)V

    .line 156
    .local v2, toSave:Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;)V

    goto :goto_0
.end method

.method private static saveToCloudDBWithoutSync(Landroid/content/Context;Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;)V
    .locals 16
    .parameter "context"
    .parameter "toSave"

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 163
    .local v8, start:J
    invoke-static/range {p0 .. p0}, Lmiui/provider/GalleryCloudUtils;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 254
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-direct {v3, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, exifInterface:Landroid/media/ExifInterface;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "groupId"

    move-object/from16 v0, p1

    iget v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->groupId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string/jumbo v12, "serverType"

    move-object/from16 v0, p1

    iget v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->serverType:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v12, "localFlag"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string/jumbo v12, "size"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->size:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string/jumbo v12, "mimeType"

    move-object/from16 v0, p1

    iget-object v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->mimeType:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v12, "title"

    move-object/from16 v0, p1

    iget-object v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->title:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v12, "fileName"

    move-object/from16 v0, p1

    iget-object v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->fileName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v12, "dateTaken"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->dateTaken:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 180
    const-string v12, "dateModified"

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    :cond_1
    const-string v12, "localFile"

    move-object/from16 v0, p1

    iget-object v13, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v12, "ImageWidth"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    .line 185
    .local v11, width:I
    const-string v12, "ImageLength"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 186
    .local v5, height:I
    if-eqz v11, :cond_2

    if-nez v5, :cond_3

    .line 188
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-static {v12}, Lmiui/util/ImageUtils;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 189
    .local v1, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iget v11, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 190
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 192
    .end local v1           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const-string v12, "exifImageWidth"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v12, "exifImageLength"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v12, "exifOrientation"

    const-string v13, "Orientation"

    move-object/from16 v0, p1

    iget v14, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->orientation:I

    invoke-virtual {v3, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v12, "GPSLatitude"

    invoke-virtual {v3, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, latitude:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 201
    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->location:Landroid/location/Location;

    if-eqz v12, :cond_7

    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 204
    :cond_4
    const-string v12, "exifGPSLatitude"

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v12, "GPSLongitude"

    invoke-virtual {v3, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, longitude:Ljava/lang/String;
    if-nez v7, :cond_5

    .line 207
    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->location:Landroid/location/Location;

    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    iget-object v12, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    :goto_2
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 210
    :cond_5
    const-string v12, "exifGPSLongitude"

    invoke-virtual {v10, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v12, "exifMake"

    const-string v13, "Make"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v12, "exifModel"

    const-string v13, "Model"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v12, "exifFlash"

    const-string v13, "Flash"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v12, "exifGPSLatitudeRef"

    const-string v13, "GPSLatitudeRef"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v12, "exifGPSLongitudeRef"

    const-string v13, "GPSLongitudeRef"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v12, "exifExposureTime"

    const-string v13, "ExposureTime"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v12, "exifFNumber"

    const-string v13, "FNumber"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v12, "exifISOSpeedRatings"

    const-string v13, "ISOSpeedRatings"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v12, "exifGPSAltitude"

    const-string v13, "GPSAltitude"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v12, "exifGPSAltitudeRef"

    const-string v13, "GPSAltitudeRef"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v12, "exifGPSTimeStamp"

    const-string v13, "GPSTimeStamp"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v12, "exifGPSDateStamp"

    const-string v13, "GPSDateStamp"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v12, "exifWhiteBalance"

    const-string v13, "WhiteBalance"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v12, "exifFocalLength"

    const-string v13, "FocalLength"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v12, "exifGPSProcessingMethod"

    const-string v13, "GPSProcessingMethod"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v12, "exifDateTime"

    const-string v13, "DateTime"

    invoke-virtual {v3, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_6

    .line 245
    const-string v12, "GalleryCloudUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "saveToCloudDB, insert "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " into database error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .end local v3           #exifInterface:Landroid/media/ExifInterface;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #height:I
    .end local v6           #latitude:Ljava/lang/String;
    .end local v7           #longitude:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #width:I
    :cond_6
    :goto_3
    const-string v12, "GalleryCloudUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "save to cloud db finished, time:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    .restart local v3       #exifInterface:Landroid/media/ExifInterface;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #height:I
    .restart local v6       #latitude:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v11       #width:I
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 207
    .restart local v7       #longitude:Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 247
    .end local v3           #exifInterface:Landroid/media/ExifInterface;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #height:I
    .end local v6           #latitude:Ljava/lang/String;
    .end local v7           #longitude:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #width:I
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/io/IOException;
    const-string v12, "GalleryCloudUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "saveToCloudDB, create "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ExifInterface error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 249
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 251
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "GalleryCloudUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "saveToCloudDB failed:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
