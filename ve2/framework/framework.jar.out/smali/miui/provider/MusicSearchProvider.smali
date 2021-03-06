.class public Lmiui/provider/MusicSearchProvider;
.super Ljava/lang/Object;
.source "MusicSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/MusicSearchProvider$MusicMeta;,
        Lmiui/provider/MusicSearchProvider$MusicSearchResult;
    }
.end annotation


# static fields
.field public static final INDEX_ALBUM:I = 0x2

.field public static final INDEX_ARTIST:I = 0x1

.field public static final INDEX_TRACK:I = 0x0

.field public static final KEY_RESULT:Ljava/lang/String; = "result_key"

.field public static final PATH:Ljava/lang/String; = "search"

.field public static final QUERY_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final QUERY_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final SEARCH_COLS:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = null

.field public static final TYPE_ALL:I = 0x3

.field public static final TYPE_MEDIA_PROVIDER:I = 0x1

.field public static final TYPE_ONLINE:I = 0x2

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lmiui/provider/MusicSearchProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/MusicSearchProvider;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "content://com.miui.player/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/MusicSearchProvider;->URI:Landroid/net/Uri;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/MusicSearchProvider;->SEARCH_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public static isValidType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 37
    and-int/lit8 v0, p0, -0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseIntFromUri(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 5
    .parameter "uri"
    .parameter "key"
    .parameter "dft"

    .prologue
    .line 88
    move v2, p2

    .line 89
    .local v2, type:I
    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, param:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 100
    .end local v1           #param:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 94
    .restart local v1       #param:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lmiui/provider/MusicSearchProvider;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static parseLimitFromUri(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 84
    const-string/jumbo v0, "limit"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lmiui/provider/MusicSearchProvider;->parseIntFromUri(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseTypeFromUri(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 80
    const-string/jumbo v0, "type"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lmiui/provider/MusicSearchProvider;->parseIntFromUri(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static query(Landroid/content/Context;I[Ljava/lang/String;I)Lmiui/provider/MusicSearchProvider$MusicSearchResult;
    .locals 9
    .parameter "context"
    .parameter "type"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p1}, Lmiui/provider/MusicSearchProvider;->isValidType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const/4 v8, 0x0

    .line 57
    .local v8, data:Landroid/os/Bundle;
    sget-object v0, Lmiui/provider/MusicSearchProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 58
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string/jumbo v0, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 70
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    if-eqz v8, :cond_2

    const-string/jumbo v0, "result_key"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/provider/MusicSearchProvider$MusicSearchResult;

    :goto_0
    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-object v0, v2

    .line 76
    goto :goto_0
.end method
