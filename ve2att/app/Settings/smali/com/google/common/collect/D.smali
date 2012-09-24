.class Lcom/google/common/collect/D;
.super Lcom/google/common/collect/B;
.source "MapMakerInternalMap.java"


# instance fields
.field final synthetic qs:Lcom/google/common/collect/am;


# direct methods
.method constructor <init>(Lcom/google/common/collect/am;Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/google/common/collect/D;->qs:Lcom/google/common/collect/am;

    invoke-direct {p0, p2}, Lcom/google/common/collect/B;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected e(Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 2
    .parameter

    .prologue
    .line 3266
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    .line 3267
    iget-object v1, p0, Lcom/google/common/collect/D;->qs:Lcom/google/common/collect/am;

    iget-object v1, v1, Lcom/google/common/collect/am;->EI:Lcom/google/common/collect/ag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3263
    check-cast p1, Lcom/google/common/collect/ag;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/D;->e(Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method
