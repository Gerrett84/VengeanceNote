.class Lcom/google/common/collect/e;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# static fields
.field static final bW:Ljava/lang/reflect/Field;

.field static final bX:Ljava/lang/reflect/Field;

.field static final bY:Ljava/lang/reflect/Field;

.field static final bZ:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1905
    const-string v0, "segmentShift"

    invoke-static {v0}, Lcom/google/common/collect/e;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/e;->bW:Ljava/lang/reflect/Field;

    .line 1906
    const-string v0, "segmentMask"

    invoke-static {v0}, Lcom/google/common/collect/e;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/e;->bX:Ljava/lang/reflect/Field;

    .line 1907
    const-string v0, "segments"

    invoke-static {v0}, Lcom/google/common/collect/e;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/e;->bY:Ljava/lang/reflect/Field;

    .line 1908
    const-string v0, "strategy"

    invoke-static {v0}, Lcom/google/common/collect/e;->e(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/e;->bZ:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1903
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static e(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter

    .prologue
    .line 1912
    :try_start_0
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1913
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    return-object v0

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
