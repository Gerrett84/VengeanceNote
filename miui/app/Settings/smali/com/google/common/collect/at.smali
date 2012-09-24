.class final Lcom/google/common/collect/at;
.super Lcom/google/common/collect/ao;
.source "RegularImmutableTable.java"


# instance fields
.field private final pf:Lcom/google/common/collect/ImmutableMap;


# virtual methods
.method public dJ()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/collect/at;->pf:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic dK()Ljava/util/Set;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/common/collect/ao;->kk()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
