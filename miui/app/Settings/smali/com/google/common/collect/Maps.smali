.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# static fields
.field static final bA:Lcom/google/common/base/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1982
    sget-object v0, Lcom/google/common/collect/a;->cF:Lcom/google/common/base/m;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/m;->am(Ljava/lang/String;)Lcom/google/common/base/f;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->bA:Lcom/google/common/base/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2074
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/a;->e(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    sget-object v1, Lcom/google/common/collect/Maps;->bA:Lcom/google/common/base/f;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/f;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2077
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 722
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
