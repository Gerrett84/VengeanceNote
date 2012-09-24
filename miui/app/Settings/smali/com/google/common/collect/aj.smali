.class final Lcom/google/common/collect/aj;
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
    .line 3753
    iput-object p1, p0, Lcom/google/common/collect/aj;->ed:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3757
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->jc()Lcom/google/common/collect/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/j;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
