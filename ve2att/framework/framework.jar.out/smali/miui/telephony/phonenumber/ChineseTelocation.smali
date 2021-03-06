.class public Lmiui/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field private static final AREA_CODES_INDEX:[S = null

.field private static final DATA_PATH:Ljava/lang/String; = "/etc/telocation.td"

.field private static final EMPTY:Ljava/lang/String; = ""

#the value of this static final field might be set in the static constructor
.field private static final FILE_HEADER_SIZE:I = 0x0

.field private static final FILE_VERSION:I = 0x1

.field private static final INDEX_NONE:I = 0x0

.field private static final MAX_MOB_UNIQUE_ID:I = 0xdbb9f

.field private static final MAX_TEL_UNIQUE_ID:I = 0x3e7

.field private static final MIN_MOB_UNIQUE_ID:I = 0x493e0

.field private static final MIN_TEL_UNIQUE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static final UNIQUE_ID_NONE:I

.field private static sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private mAllowTelocation:Z

.field private mContext:Landroid/content/Context;

.field private mCustomLocationObserver:Landroid/database/ContentObserver;

.field private mFile:Ljava/io/RandomAccessFile;

.field private mGroupCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    sget-object v4, Lmiui/telephony/phonenumber/TelocationConstants;->FILE_TAG:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    const-string v5, "1469b751a02f88d66bf98dc1ee131904f4073126"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x0

    sput v4, Lmiui/telephony/phonenumber/ChineseTelocation;->FILE_HEADER_SIZE:I

    .line 45
    new-instance v4, Lmiui/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v4}, Lmiui/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v4, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    .line 54
    const/16 v4, 0x3e8

    new-array v4, v4, [S

    sput-object v4, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    .line 56
    sget-object v4, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([SS)V

    .line 57
    const/4 v1, 0x1

    .local v1, i:I
    const/16 v3, 0x147

    .local v3, len:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 58
    sget-object v4, Lmiui/telephony/phonenumber/TelocationConstants;->AREA_CODES:[Ljava/lang/String;

    aget-object v0, v4, v1

    .line 59
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int v2, v4, v5

    .line 60
    .local v2, index:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 61
    mul-int/lit8 v4, v2, 0xa

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int v2, v4, v5

    .line 63
    :cond_0
    sget-object v4, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    int-to-short v5, v1

    aput-short v5, v4, v2

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0           #c:Ljava/lang/String;
    .end local v2           #index:I
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    .line 52
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    .line 68
    const/4 v4, 0x1

    .line 70
    .local v4, success:Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 71
    .local v5, times:J
    new-instance v2, Ljava/io/File;

    const-string v8, "/etc/telocation.td"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, file:Ljava/io/File;
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v8, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    .line 73
    sget-object v8, Lmiui/telephony/phonenumber/TelocationConstants;->FILE_TAG:[B

    array-length v8, v8

    new-array v3, v8, [B

    .line 74
    .local v3, fileTag:[B
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 75
    sget-object v8, Lmiui/telephony/phonenumber/TelocationConstants;->FILE_TAG:[B

    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 76
    const-string v8, "ChineseTelocation"

    const-string v9, "Unknow file type for /etc/telocation.td, NO mobile telocation supported!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 77
    const/4 v4, 0x0

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_1
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 106
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileTag:[B
    .end local v5           #times:J
    :goto_0
    iput-object v12, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    .line 109
    :cond_0
    return-void

    .line 80
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileTag:[B
    .restart local v5       #times:J
    :cond_1
    :try_start_3
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    new-array v0, v8, [B

    .line 81
    .local v0, digestBytes:[B
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 82
    const-string v8, "1469b751a02f88d66bf98dc1ee131904f4073126"

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 83
    const-string v8, "ChineseTelocation"

    const-string v9, "Unmatched digest for /etc/telocation.td, NO mobile telocation supported!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 84
    const/4 v4, 0x0

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_4
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v8

    goto :goto_0

    .line 87
    :cond_2
    :try_start_6
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 88
    .local v7, version:I
    const/4 v8, 0x1

    if-eq v8, v7, :cond_3

    .line 89
    const-string v8, "ChineseTelocation"

    const-string v9, "Unmatched version for /etc/telocation.td, NO mobile telocation supported!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 90
    const/4 v4, 0x0

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_7
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v8

    goto :goto_0

    .line 93
    :cond_3
    :try_start_9
    const-string v8, "ChineseTelocation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]ms to load data file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_a
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_0

    .line 104
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 94
    .end local v0           #digestBytes:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileTag:[B
    .end local v5           #times:J
    .end local v7           #version:I
    :catch_3
    move-exception v1

    .line 95
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_c
    const-string v8, "ChineseTelocation"

    const-string v9, "Can\'t find /etc/telocation.td, NO mobile telocation supported!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 96
    const/4 v4, 0x0

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_d
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 104
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 97
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    :try_start_e
    const-string v8, "ChineseTelocation"

    const-string v9, "Can\'t read /etc/telocation.td, NO mobile telocation supported!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 99
    const/4 v4, 0x0

    .line 101
    if-nez v4, :cond_0

    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_0

    .line 103
    :try_start_f
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    :try_start_10
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_0

    .line 104
    :catch_6
    move-exception v8

    goto/16 :goto_0

    .line 101
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-nez v4, :cond_4

    iget-object v9, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v9, :cond_4

    .line 103
    :try_start_11
    iget-object v9, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 106
    :goto_1
    iput-object v12, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    .line 101
    :cond_4
    throw v8

    .line 104
    .restart local v0       #digestBytes:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileTag:[B
    .restart local v5       #times:J
    .restart local v7       #version:I
    :catch_7
    move-exception v8

    goto/16 :goto_0

    :catch_8
    move-exception v8

    goto/16 :goto_0

    .end local v7           #version:I
    :catch_9
    move-exception v8

    goto/16 :goto_0

    .end local v0           #digestBytes:[B
    :catch_a
    move-exception v8

    goto/16 :goto_0

    :catch_b
    move-exception v8

    goto/16 :goto_0

    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileTag:[B
    .end local v5           #times:J
    .restart local v1       #e:Ljava/io/IOException;
    :catch_c
    move-exception v8

    goto/16 :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catch_d
    move-exception v9

    goto :goto_1
.end method

.method static synthetic access$000(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    return-void
.end method

.method private convertUniqIdToIndex(I)I
    .locals 5
    .parameter "id"

    .prologue
    const v2, 0x493e0

    .line 225
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_0

    move v1, p1

    .line 240
    :goto_0
    return v1

    .line 227
    :cond_0
    if-lt p1, v2, :cond_1

    const v1, 0xdbb9f

    if-gt p1, v1, :cond_1

    .line 228
    sub-int/2addr p1, v2

    .line 229
    shl-int/lit8 v1, p1, 0x1

    sget v2, Lmiui/telephony/phonenumber/ChineseTelocation;->FILE_HEADER_SIZE:I

    add-int v0, v1, v2

    .line 230
    .local v0, offset:I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 232
    int-to-long v1, v0

    :try_start_0
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 233
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 234
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readShort()S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 240
    .end local v0           #offset:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;
    .locals 8
    .parameter "id"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 287
    const/4 v4, 0x0

    .line 289
    .local v4, location:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 290
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 293
    .restart local v4       #location:Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_4

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 294
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p4, v6, :cond_1

    .line 299
    const/4 v5, 0x1

    .line 300
    .local v5, matched:Z
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p3, v0

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 303
    const/4 v5, 0x0

    .line 307
    :cond_2
    if-eqz v5, :cond_1

    .line 308
    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #location:Ljava/lang/String;
    goto :goto_0

    .line 300
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len:I
    .end local v5           #matched:Z
    :cond_4
    if-nez v4, :cond_5

    .line 313
    const-string v4, ""

    .line 315
    :cond_5
    return-object v4
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 193
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 194
    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 196
    :cond_0
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    .line 197
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 199
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$1;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 208
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$2;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$2;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    .line 220
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    return-void
.end method

.method private updateCustomLocation()V
    .locals 12

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 142
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 143
    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-eqz v0, :cond_5

    .line 144
    const/4 v6, 0x0

    .line 146
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_4

    .line 154
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 156
    .local v11, type:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, location:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    const/4 v10, 0x0

    .line 165
    .local v10, start:I
    const-string v0, "+86"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const/4 v10, 0x3

    .line 170
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v10, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    .line 171
    .local v7, id:I
    if-eqz v7, :cond_0

    .line 172
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    .end local v7           #id:I
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #start:I
    .end local v11           #type:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    throw v0

    .line 167
    .restart local v8       #location:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #start:I
    .restart local v11       #type:I
    :cond_3
    :try_start_1
    const-string v0, "0086"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const/4 v10, 0x4

    goto :goto_1

    .line 176
    .end local v10           #start:I
    :pswitch_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #type:I
    :cond_4
    if-eqz v6, :cond_5

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    return-void

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTelocationSetting()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    .line 137
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 138
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAreaCode(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 341
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, p4, v1}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 342
    .local v0, id:I
    sget-object v1, Lmiui/telephony/phonenumber/TelocationConstants;->AREA_CODES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation;->convertUniqIdToIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "countryCode"
    .parameter "number"
    .parameter "locale"

    .prologue
    .line 351
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 356
    :cond_0
    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_1

    .line 357
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    .line 360
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 362
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 367
    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 381
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "withAreaCode"

    .prologue
    .line 319
    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 324
    :cond_0
    iget-boolean v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v2, :cond_2

    .line 325
    const/4 v1, 0x0

    .line 337
    :cond_1
    :goto_0
    return-object v1

    .line 328
    :cond_2
    const/4 v0, -0x1

    .line 329
    .local v0, id:I
    if-eqz p5, :cond_3

    .line 330
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p3, p4, v2}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 333
    :cond_3
    invoke-direct {p0, v0, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocation;->findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 335
    sget-object v2, Lmiui/telephony/phonenumber/TelocationConstants;->AREA_LOCATIONS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation;->convertUniqIdToIndex(I)I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_0
.end method

.method getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 6
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "enableMobile"

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    const/16 v4, 0x30

    .line 244
    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 245
    add-int/lit8 p2, p2, 0x1

    .line 246
    add-int/lit8 p3, p3, -0x1

    .line 248
    :cond_0
    const/4 v2, 0x1

    if-gt p3, v2, :cond_2

    move v0, v1

    .line 283
    :cond_1
    :goto_0
    return v0

    .line 253
    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 277
    const/4 v2, 0x2

    if-le p3, v2, :cond_4

    .line 278
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 280
    .local v0, index:I
    sget-object v1, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    aget-short v0, v1, v0

    goto :goto_0

    .line 257
    .end local v0           #index:I
    :pswitch_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 258
    sget-object v1, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    aget-short v0, v1, v5

    goto :goto_0

    .line 259
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x6

    if-le p3, v2, :cond_4

    .line 260
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const v3, 0x186a0

    mul-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit16 v3, v3, 0x2710

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 264
    .restart local v0       #index:I
    const v2, 0x1388d

    if-ne v0, v2, :cond_1

    if-le p3, v5, :cond_1

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, p2, 0x9

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 274
    .end local v0           #index:I
    :pswitch_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 275
    .restart local v0       #index:I
    sget-object v1, Lmiui/telephony/phonenumber/ChineseTelocation;->AREA_CODES_INDEX:[S

    aget-short v0, v1, v0

    goto/16 :goto_0

    .end local v0           #index:I
    :cond_4
    :pswitch_2
    move v0, v1

    .line 283
    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 3
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 346
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 347
    .local v0, id:I
    sget-object v1, Lmiui/telephony/phonenumber/TelocationConstants;->AREA_CODES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation;->convertUniqIdToIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method
