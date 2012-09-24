.class public Lcom/android/settings/w;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# instance fields
.field private ch:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/w;->ch:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method private a(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/w;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 76
    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 77
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 79
    return-object v2
.end method

.method private b(Ljava/io/File;)V
    .locals 10
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/w;->a(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    :goto_0
    if-lez v0, :cond_0

    .line 90
    add-int/lit8 v1, v0, -0x1

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_0

    .line 95
    new-instance v0, Lcom/android/settings/cl;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/cl;-><init>(Lcom/android/settings/w;Landroid/os/Parcel;)V

    .line 96
    iget-object v0, v0, Lcom/android/settings/cl;->BF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v5, p0, Lcom/android/settings/w;->ch:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/aF;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const/4 v8, 0x2

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v6, p0, v3, v7, v0}, Lcom/android/settings/aF;-><init>(Lcom/android/settings/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    .line 102
    goto :goto_0
.end method


# virtual methods
.method public E()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/w;->ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "data/system/usagestats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    array-length v0, v2

    .line 39
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 40
    aget-object v0, v2, v1

    const-string v3, "usage-2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "data/system/usagestats"

    aget-object v4, v2, v1

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/w;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 45
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/w;->ch:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method readFully(Ljava/io/FileInputStream;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 56
    new-array v0, v0, [B

    move v1, v2

    .line 58
    :cond_0
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 59
    if-gtz v3, :cond_1

    .line 60
    return-object v0

    .line 62
    :cond_1
    add-int/2addr v1, v3

    .line 63
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 64
    array-length v4, v0

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_0

    .line 65
    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 66
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 67
    goto :goto_0
.end method
