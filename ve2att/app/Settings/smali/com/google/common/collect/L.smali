.class final Lcom/google/common/collect/L;
.super Lcom/google/common/collect/s;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field dV:Lcom/google/common/collect/ag;

.field dW:Lcom/google/common/collect/ag;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V

    .line 1118
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/L;->dV:Lcom/google/common/collect/ag;

    .line 1131
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eV()Lcom/google/common/collect/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/L;->dW:Lcom/google/common/collect/ag;

    .line 1114
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/google/common/collect/L;->dV:Lcom/google/common/collect/ag;

    .line 1129
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/common/collect/L;->dV:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/common/collect/L;->dW:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/google/common/collect/L;->dW:Lcom/google/common/collect/ag;

    .line 1142
    return-void
.end method
