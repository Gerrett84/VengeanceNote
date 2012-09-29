.class Lcom/google/common/collect/E;
.super Lcom/google/common/collect/t;
.source "MapMakerInternalMap.java"


# instance fields
.field dY:Lcom/google/common/collect/ag;

.field dZ:Lcom/google/common/collect/ag;

.field final synthetic qw:Lcom/google/common/collect/am;


# direct methods
.method constructor <init>(Lcom/google/common/collect/am;)V
    .locals 0
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/google/common/collect/E;->qw:Lcom/google/common/collect/am;

    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/google/common/collect/E;->dY:Lcom/google/common/collect/ag;

    .line 3171
    iput-object p0, p0, Lcom/google/common/collect/E;->dZ:Lcom/google/common/collect/ag;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/google/common/collect/E;->dY:Lcom/google/common/collect/ag;

    .line 3169
    return-void
.end method

.method public af()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/common/collect/E;->dY:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public ag()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/common/collect/E;->dZ:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/google/common/collect/E;->dZ:Lcom/google/common/collect/ag;

    .line 3181
    return-void
.end method
