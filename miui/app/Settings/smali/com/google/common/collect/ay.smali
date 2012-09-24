.class final Lcom/google/common/collect/ay;
.super Lcom/google/common/collect/s;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dV:Lcom/google/common/collect/ag;

.field dW:Lcom/google/common/collect/ag;

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
    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ay;->time:J

    .line 1165
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ay;->on:Lcom/google/common/collect/ag;

    .line 1178
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ay;->oo:Lcom/google/common/collect/ag;

    .line 1193
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ay;->dV:Lcom/google/common/collect/ag;

    .line 1206
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ay;->dW:Lcom/google/common/collect/ag;

    .line 1149
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/google/common/collect/ay;->dV:Lcom/google/common/collect/ag;

    .line 1204
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/common/collect/ay;->dV:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/ay;->dW:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/common/collect/ay;->dW:Lcom/google/common/collect/ag;

    .line 1217
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/common/collect/ay;->on:Lcom/google/common/collect/ag;

    .line 1176
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/google/common/collect/ay;->oo:Lcom/google/common/collect/ag;

    .line 1189
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 1157
    iget-wide v0, p0, Lcom/google/common/collect/ay;->time:J

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/ay;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/common/collect/ay;->oo:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-wide p1, p0, Lcom/google/common/collect/ay;->time:J

    .line 1163
    return-void
.end method
