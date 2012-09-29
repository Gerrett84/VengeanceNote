.class public abstract Lcom/google/common/collect/ai;
.super Ljava/lang/Object;
.source "ImmutableTable.java"

# interfaces
.implements Lcom/google/common/collect/I;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dN()Lcom/google/common/collect/ImmutableMap;
.end method

.method public bridge synthetic dO()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->ko()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 317
    if-ne p1, p0, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    .line 319
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/I;

    if-eqz v0, :cond_1

    .line 320
    check-cast p1, Lcom/google/common/collect/I;

    .line 321
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->ko()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/I;->dO()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->ko()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract ko()Lcom/google/common/collect/ImmutableSet;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->dN()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
