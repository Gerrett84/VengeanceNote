.class Lcom/google/common/collect/z;
.super Lcom/google/common/collect/B;
.source "MapMakerInternalMap.java"


# instance fields
.field final synthetic pi:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/common/collect/z;->pi:Lcom/google/common/collect/ab;

    invoke-direct {p0, p2}, Lcom/google/common/collect/B;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected e(Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 2
    .parameter

    .prologue
    .line 3402
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3403
    iget-object v1, p0, Lcom/google/common/collect/z;->pi:Lcom/google/common/collect/ab;

    iget-object v1, v1, Lcom/google/common/collect/ab;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3399
    check-cast p1, Lcom/google/common/collect/ag;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->e(Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method
