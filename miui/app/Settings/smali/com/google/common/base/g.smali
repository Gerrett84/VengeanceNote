.class public final Lcom/google/common/base/g;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "\\$[0-9]+"

    const-string v2, "\\$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 151
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 152
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Ljava/lang/Object;)Lcom/google/common/base/o;
    .locals 3
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/base/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/g;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/o;-><init>(Ljava/lang/String;Lcom/google/common/base/d;)V

    return-object v0
.end method
