.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Set;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1252
    .line 1253
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    .line 1256
    :cond_1
    return v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 1277
    :cond_0
    :goto_0
    return v1

    .line 1266
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 1267
    check-cast p1, Ljava/util/Set;

    .line 1270
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1271
    :catch_1
    move-exception v0

    goto :goto_0
.end method
