.class public final Lcom/google/common/collect/T;
.super Lcom/google/common/collect/O;
.source "ImmutableBiMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/common/collect/O;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/O;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/T;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/T;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/O;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/O;

    .line 151
    return-object p0
.end method

.method public bridge synthetic hw()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/T;->ih()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public ih()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/common/collect/O;->hw()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->eD()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    goto :goto_0
.end method
