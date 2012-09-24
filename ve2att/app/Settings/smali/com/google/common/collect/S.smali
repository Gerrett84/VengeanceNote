.class public final Lcom/google/common/collect/S;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/l;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-static {p0}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/google/common/collect/al;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/al;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/w;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 268
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/w;->b(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
