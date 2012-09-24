.class public Lmiui/app/screenelement/util/ZipResourceLoader;
.super Ljava/lang/Object;
.source "ZipResourceLoader.java"

# interfaces
.implements Lmiui/app/screenelement/ResourceManager$ResourceLoader;


# static fields
.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"

.field private static final TAG:Ljava/lang/String; = "MAML_ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mManifestName:Ljava/lang/String;

.field private mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "zipPath"

    .prologue
    .line 42
    const/4 v0, 0x0

    const-string v1, "manifest.xml"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "zipPath"
    .parameter "innerPath"

    .prologue
    .line 46
    const-string v0, "manifest.xml"

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "zipPath"
    .parameter "innerPath"
    .parameter "manifestName"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty zip path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 60
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 10
    .parameter "src"
    .parameter "opts"

    .prologue
    const/4 v7, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    .local v5, zip:Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 69
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    iget-object v8, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 70
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .local v6, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 71
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_6

    .line 72
    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 73
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v4, padding:Landroid/graphics/Rect;
    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v0

    .line 75
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 84
    if-eqz v3, :cond_0

    .line 88
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 94
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 96
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v5, v6

    .line 102
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_2
    return-object v7

    .line 77
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #padding:Landroid/graphics/Rect;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_4
    new-instance v8, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v8, v0, v4}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_e

    .line 84
    if-eqz v3, :cond_4

    .line 88
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 94
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 96
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    move-object v7, v8

    .line 98
    goto :goto_2

    .line 84
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    if-eqz v3, :cond_7

    .line 88
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 94
    :cond_7
    :goto_5
    if-eqz v6, :cond_c

    .line 96
    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v6

    .line 98
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 97
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 98
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 79
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v8, "MAML_ZipResourceLoader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 84
    if-eqz v3, :cond_8

    .line 88
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 94
    :cond_8
    :goto_7
    if-eqz v5, :cond_2

    .line 96
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 97
    :catch_2
    move-exception v8

    goto :goto_2

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :goto_8
    :try_start_c
    const-string v8, "MAML_ZipResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 84
    if-eqz v3, :cond_9

    .line 88
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 94
    :cond_9
    :goto_9
    if-eqz v5, :cond_2

    .line 96
    :try_start_e
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    .line 97
    :catch_4
    move-exception v8

    goto :goto_2

    .line 84
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v3, :cond_a

    .line 88
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 94
    :cond_a
    :goto_b
    if-eqz v5, :cond_b

    .line 96
    :try_start_10
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 98
    :cond_b
    :goto_c
    throw v7

    .line 89
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #padding:Landroid/graphics/Rect;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v8

    goto :goto_0

    .line 97
    :catch_6
    move-exception v8

    goto :goto_1

    .line 89
    :catch_7
    move-exception v7

    goto :goto_3

    .line 97
    :catch_8
    move-exception v7

    goto :goto_4

    .line 89
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #padding:Landroid/graphics/Rect;
    :catch_9
    move-exception v8

    goto :goto_5

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .local v1, e:Ljava/io/IOException;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v8

    goto :goto_7

    .local v1, e:Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v8

    goto :goto_9

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v8

    goto :goto_b

    .line 97
    :catch_d
    move-exception v8

    goto :goto_c

    .line 84
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 81
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v1

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 79
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :catch_f
    move-exception v1

    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_6

    .end local v5           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #zip:Ljava/util/zip/ZipFile;
    :cond_c
    move-object v5, v6

    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 14
    .parameter "src"

    .prologue
    const/4 v11, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    .local v9, zip:Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .line 110
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v12, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .local v10, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 112
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_6

    .line 113
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v7, v12

    .line 114
    .local v7, size:I
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v4

    .line 115
    if-nez v4, :cond_2

    .line 135
    if-eqz v4, :cond_0

    .line 139
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 145
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 147
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    move-object v5, v11

    .line 153
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #size:I
    :goto_2
    return-object v5

    .line 118
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #size:I
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    const/high16 v0, 0x1

    .line 119
    .local v0, COUNT:I
    const/high16 v12, 0x1

    :try_start_4
    new-array v1, v12, [B

    .line 120
    .local v1, buff:[B
    new-instance v5, Landroid/os/MemoryFile;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 121
    .local v5, mf:Landroid/os/MemoryFile;
    const/4 v6, -0x1

    .line 122
    .local v6, read:I
    const/4 v8, 0x0

    .line 123
    .local v8, start:I
    :goto_3
    const/4 v12, 0x0

    const/high16 v13, 0x1

    invoke-virtual {v4, v1, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_3

    .line 124
    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v8, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 125
    add-int/2addr v8, v6

    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v5}, Landroid/os/MemoryFile;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_e

    move-result v12

    if-lez v12, :cond_6

    .line 135
    if-eqz v4, :cond_4

    .line 139
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 145
    :cond_4
    :goto_4
    if-eqz v10, :cond_5

    .line 147
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_5
    move-object v9, v10

    .line 149
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 135
    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #size:I
    .end local v8           #start:I
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    if-eqz v4, :cond_7

    .line 139
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 145
    :cond_7
    :goto_6
    if-eqz v10, :cond_d

    .line 147
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v9, v10

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :cond_8
    :goto_7
    move-object v5, v11

    .line 153
    goto :goto_2

    .line 148
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v12

    move-object v9, v10

    .line 149
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 130
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .line 131
    .local v2, e:Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v12, "MAML_ZipResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 135
    if-eqz v4, :cond_9

    .line 139
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 145
    :cond_9
    :goto_9
    if-eqz v9, :cond_8

    .line 147
    :try_start_b
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 148
    :catch_2
    move-exception v12

    goto :goto_7

    .line 132
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_a
    :try_start_c
    const-string v12, "MAML_ZipResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 135
    if-eqz v4, :cond_a

    .line 139
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 145
    :cond_a
    :goto_b
    if-eqz v9, :cond_8

    .line 147
    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    .line 148
    :catch_4
    move-exception v12

    goto :goto_7

    .line 135
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v11

    :goto_c
    if-eqz v4, :cond_b

    .line 139
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 145
    :cond_b
    :goto_d
    if-eqz v9, :cond_c

    .line 147
    :try_start_10
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 149
    :cond_c
    :goto_e
    throw v11

    .line 140
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #size:I
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v12

    goto/16 :goto_0

    .line 148
    :catch_6
    move-exception v12

    goto :goto_1

    .line 140
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    .restart local v5       #mf:Landroid/os/MemoryFile;
    .restart local v6       #read:I
    .restart local v8       #start:I
    :catch_7
    move-exception v11

    goto :goto_4

    .line 148
    :catch_8
    move-exception v11

    goto :goto_5

    .line 140
    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v5           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #size:I
    .end local v8           #start:I
    :catch_9
    move-exception v12

    goto :goto_6

    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/io/IOException;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v12

    goto :goto_9

    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v12

    goto :goto_b

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v12

    goto :goto_d

    .line 148
    :catch_d
    move-exception v12

    goto :goto_e

    .line 135
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 132
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v2

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 130
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_f
    move-exception v2

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_d
    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/util/ZipResourceLoader;->getManifestRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 12
    .parameter "language"

    .prologue
    const/4 v9, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    .local v7, zip:Ljava/util/zip/ZipFile;
    const/4 v5, 0x0

    .line 161
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 162
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .local v8, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    iget-object v6, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    .line 163
    .local v6, manifestName:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 164
    iget-object v10, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-static {v10, p1}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 166
    iget-object v6, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    .line 170
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/app/screenelement/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 171
    .local v4, entry:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_7

    .line 172
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    move-result-object v5

    .line 173
    if-nez v5, :cond_4

    .line 191
    if-eqz v5, :cond_1

    .line 195
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 201
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 203
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    :cond_2
    :goto_1
    move-object v7, v8

    .line 209
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #manifestName:Ljava/lang/String;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_2
    return-object v9

    .line 175
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #manifestName:Ljava/lang/String;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 176
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 177
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 178
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17

    move-result-object v9

    .line 191
    if-eqz v5, :cond_5

    .line 195
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 201
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 203
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_6
    :goto_4
    move-object v7, v8

    .line 205
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 191
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v5, :cond_8

    .line 195
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 201
    :cond_8
    :goto_5
    if-eqz v8, :cond_10

    .line 203
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v7, v8

    .line 205
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 204
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v10

    move-object v7, v8

    .line 205
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 180
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #manifestName:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 181
    .local v3, e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 191
    if-eqz v5, :cond_9

    .line 195
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    .line 201
    :cond_9
    :goto_7
    if-eqz v7, :cond_3

    .line 203
    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 204
    :catch_2
    move-exception v10

    goto :goto_2

    .line 182
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 183
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_8
    :try_start_c
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 191
    if-eqz v5, :cond_a

    .line 195
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    .line 201
    :cond_a
    :goto_9
    if-eqz v7, :cond_3

    .line 203
    :try_start_e
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    .line 204
    :catch_4
    move-exception v10

    goto :goto_2

    .line 184
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    .line 185
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_a
    :try_start_f
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 191
    if-eqz v5, :cond_b

    .line 195
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    .line 201
    :cond_b
    :goto_b
    if-eqz v7, :cond_3

    .line 203
    :try_start_11
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_2

    .line 204
    :catch_6
    move-exception v10

    goto :goto_2

    .line 186
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v3

    .line 187
    .local v3, e:Lorg/xml/sax/SAXException;
    :goto_c
    :try_start_12
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 191
    if-eqz v5, :cond_c

    .line 195
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    .line 201
    :cond_c
    :goto_d
    if-eqz v7, :cond_3

    .line 203
    :try_start_14
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_2

    .line 204
    :catch_8
    move-exception v10

    goto/16 :goto_2

    .line 188
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v3

    .line 189
    .local v3, e:Ljava/lang/Exception;
    :goto_e
    :try_start_15
    const-string v10, "MAML_ZipResourceLoader"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 191
    if-eqz v5, :cond_d

    .line 195
    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14

    .line 201
    :cond_d
    :goto_f
    if-eqz v7, :cond_3

    .line 203
    :try_start_17
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_2

    .line 204
    :catch_a
    move-exception v10

    goto/16 :goto_2

    .line 191
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_10
    if-eqz v5, :cond_e

    .line 195
    :try_start_18
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    .line 201
    :cond_e
    :goto_11
    if-eqz v7, :cond_f

    .line 203
    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16

    .line 205
    :cond_f
    :goto_12
    throw v9

    .line 196
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #manifestName:Ljava/lang/String;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v10

    goto/16 :goto_0

    .line 204
    :catch_c
    move-exception v10

    goto/16 :goto_1

    .line 196
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    :catch_d
    move-exception v10

    goto/16 :goto_3

    .line 204
    :catch_e
    move-exception v10

    goto/16 :goto_4

    .line 196
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    :catch_f
    move-exception v10

    goto/16 :goto_5

    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #manifestName:Ljava/lang/String;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v3, e:Ljava/io/IOException;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    :catch_10
    move-exception v10

    goto/16 :goto_7

    .local v3, e:Ljava/lang/OutOfMemoryError;
    :catch_11
    move-exception v10

    goto :goto_9

    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_12
    move-exception v10

    goto :goto_b

    .local v3, e:Lorg/xml/sax/SAXException;
    :catch_13
    move-exception v10

    goto :goto_d

    .local v3, e:Ljava/lang/Exception;
    :catch_14
    move-exception v10

    goto :goto_f

    .end local v3           #e:Ljava/lang/Exception;
    :catch_15
    move-exception v10

    goto :goto_11

    .line 204
    :catch_16
    move-exception v10

    goto :goto_12

    .line 191
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_10

    .line 188
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_17
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_e

    .line 186
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_18
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 184
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_19
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 182
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_1a
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_8

    .line 180
    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_1b
    move-exception v3

    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_6

    .end local v7           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #manifestName:Ljava/lang/String;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_10
    move-object v7, v8

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v7       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_2
.end method
