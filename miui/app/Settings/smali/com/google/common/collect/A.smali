.class Lcom/google/common/collect/A;
.super Lcom/google/common/collect/t;
.source "MapMakerInternalMap.java"


# instance fields
.field on:Lcom/google/common/collect/ag;

.field oo:Lcom/google/common/collect/ag;

.field final synthetic pi:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/google/common/collect/A;->pi:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/A;->on:Lcom/google/common/collect/ag;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/A;->oo:Lcom/google/common/collect/ag;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/google/common/collect/A;->on:Lcom/google/common/collect/ag;

    .line 3305
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 3316
    iput-object p1, p0, Lcom/google/common/collect/A;->oo:Lcom/google/common/collect/ag;

    .line 3317
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/google/common/collect/A;->on:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/google/common/collect/A;->oo:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 3293
    return-void
.end method
