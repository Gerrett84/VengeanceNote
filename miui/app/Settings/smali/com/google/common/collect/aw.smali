.class final Lcom/google/common/collect/aw;
.super Lcom/google/common/collect/s;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field on:Lcom/google/common/collect/ag;

.field oo:Lcom/google/common/collect/ag;

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aw;->time:J

    .line 1083
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->on:Lcom/google/common/collect/ag;

    .line 1096
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aw;->oo:Lcom/google/common/collect/ag;

    .line 1067
    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/google/common/collect/aw;->on:Lcom/google/common/collect/ag;

    .line 1094
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/google/common/collect/aw;->oo:Lcom/google/common/collect/ag;

    .line 1107
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/google/common/collect/aw;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/common/collect/aw;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/aw;->oo:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    iput-wide p1, p0, Lcom/google/common/collect/aw;->time:J

    .line 1081
    return-void
.end method
