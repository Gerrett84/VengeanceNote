.class public final Lcom/google/common/collect/W;
.super Ljava/lang/Object;
.source "ObjectArrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 169
    add-int/lit8 v1, v0, 0x1

    aput-object v3, p1, v0

    move v0, v1

    goto :goto_0

    .line 171
    :cond_0
    return-object p1
.end method

.method static a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 138
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 139
    invoke-static {p1, v0}, Lcom/google/common/collect/W;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 141
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/W;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 142
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 143
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 145
    :cond_1
    return-object p1
.end method

.method public static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/google/common/collect/as;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/W;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
