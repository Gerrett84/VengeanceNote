.class final Lcom/google/common/collect/C;
.super Lcom/google/common/collect/ac;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic ed:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3816
    iput-object p1, p0, Lcom/google/common/collect/C;->ed:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3816
    invoke-virtual {p0}, Lcom/google/common/collect/C;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/google/common/collect/C;->jc()Lcom/google/common/collect/j;

    move-result-object v0

    return-object v0
.end method
