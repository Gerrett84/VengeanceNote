.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# instance fields
.field final transient GF:Lcom/google/common/collect/ImmutableMap;

.field final transient GG:Lcom/google/common/collect/ImmutableBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 4
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GF:Lcom/google/common/collect/ImmutableMap;

    .line 35
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->lt()Lcom/google/common/collect/O;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->ex()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/O;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/O;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/O;->hs()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableBiMap;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GG:Lcom/google/common/collect/ImmutableBiMap;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GF:Lcom/google/common/collect/ImmutableMap;

    .line 46
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GG:Lcom/google/common/collect/ImmutableBiMap;

    .line 47
    return-void
.end method


# virtual methods
.method dL()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GF:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public dM()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->GG:Lcom/google/common/collect/ImmutableBiMap;

    return-object v0
.end method
