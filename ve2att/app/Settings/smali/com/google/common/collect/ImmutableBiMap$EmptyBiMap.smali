.class Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "ImmutableBiMap.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method dL()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->ls()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public dM()Lcom/google/common/collect/ImmutableBiMap;
    .locals 0

    .prologue
    .line 292
    return-object p0
.end method

.method public bridge synthetic dN()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->ez()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dl()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->ez()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->ew()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->ex()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->eA()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->ez()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
