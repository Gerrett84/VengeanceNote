.class public abstract Lcom/google/common/collect/ImmutableBiMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lcom/google/common/collect/q;


# static fields
.field private static final qt:Lcom/google/common/collect/ImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/ImmutableBiMap;->qt:Lcom/google/common/collect/ImmutableBiMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static eD()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/common/collect/ImmutableBiMap;->qt:Lcom/google/common/collect/ImmutableBiMap;

    return-object v0
.end method

.method static synthetic eF()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/collect/ImmutableBiMap;->qt:Lcom/google/common/collect/ImmutableBiMap;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dQ()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract dP()Lcom/google/common/collect/ImmutableMap;
.end method

.method public abstract dQ()Lcom/google/common/collect/ImmutableBiMap;
.end method

.method public bridge synthetic dR()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->eE()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dp()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->eE()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public eB()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public eC()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->eC()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public eE()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dQ()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->eC()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->eC()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->dP()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->eE()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
