.class public Lcom/android/settings/provider/b;
.super Ljava/lang/Object;
.source "MiuiSettingsUtil.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static Fp:Z

.field private static Fq:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://miui_settings/miui_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static L(Landroid/content/Context;)[I
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/provider/b;->c(Landroid/content/Context;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static M(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    sget-object v1, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    sget-object v1, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 135
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/provider/b;->Fp:Z

    .line 137
    new-instance v1, Lcom/android/settings/provider/a;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/provider/a;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/provider/a;->start()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "key=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "count"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr p4, v1

    move v1, v6

    .line 111
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 114
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 115
    const-string v3, "count"

    add-int/lit8 v4, p4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    :goto_2
    return-void

    .line 119
    :cond_0
    const-string v1, "key"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "search_key"

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "key_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    sget-object v1, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/provider/c;

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/android/settings/provider/c;

    invoke-direct {v0}, Lcom/android/settings/provider/c;-><init>()V

    .line 151
    iput-object p0, v0, Lcom/android/settings/provider/c;->key:Ljava/lang/String;

    .line 152
    iput-object p1, v0, Lcom/android/settings/provider/c;->Io:Ljava/lang/String;

    .line 153
    iput p2, v0, Lcom/android/settings/provider/c;->index:I

    .line 154
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings/provider/c;->count:I

    .line 156
    :cond_0
    iget v1, v0, Lcom/android/settings/provider/c;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/provider/c;->count:I

    .line 157
    sget-object v1, Lcom/android/settings/provider/b;->Fq:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/provider/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private static c(Landroid/content/Context;I)[I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x9

    .line 69
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v1, :cond_3

    .line 70
    const/16 v0, 0xa

    move v1, v0

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    const-string v5, "count desc "

    .line 74
    sget-object v2, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 75
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "key_index"

    aput-object v4, v2, v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [I

    move v0, v6

    .line 83
    :goto_1
    const-string v1, "key_index"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 84
    add-int/lit8 v1, v0, 0x1

    aput v4, v3, v0

    .line 85
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    return-object v3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/android/settings/provider/b;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method
