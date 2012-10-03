.class final Lcom/google/common/collect/y;
.super Lcom/google/common/collect/ao;
.source "RegularImmutableTable.java"


# instance fields
.field private final pb:Lcom/google/common/collect/ImmutableBiMap;

.field private final pc:Lcom/google/common/collect/ImmutableBiMap;

.field private final pd:[[Ljava/lang/Object;

.field private volatile transient pe:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method private dI()Lcom/google/common/collect/ImmutableMap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->lt()Lcom/google/common/collect/O;

    move-result-object v3

    move v0, v1

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/y;->pd:[[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/google/common/collect/y;->pd:[[Ljava/lang/Object;

    aget-object v4, v2, v0

    .line 412
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->lt()Lcom/google/common/collect/O;

    move-result-object v5

    move v2, v1

    .line 413
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 414
    aget-object v6, v4, v2

    .line 415
    if-eqz v6, :cond_0

    .line 416
    iget-object v7, p0, Lcom/google/common/collect/y;->pc:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableBiMap;->dM()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/google/common/collect/O;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/O;

    .line 413
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/y;->pb:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap;->dM()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/common/collect/O;->hs()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/common/collect/O;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/O;

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v3}, Lcom/google/common/collect/O;->hs()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dJ()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/collect/y;->pe:Lcom/google/common/collect/ImmutableMap;

    .line 427
    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/google/common/collect/y;->dI()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y;->pe:Lcom/google/common/collect/ImmutableMap;

    .line 430
    :cond_0
    return-object v0
.end method

.method public bridge synthetic dK()Ljava/util/Set;
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/google/common/collect/ao;->kk()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
