.class Lcom/google/common/collect/s;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final nx:Lcom/google/common/collect/ag;

.field volatile ny:Lcom/google/common/collect/az;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eU()Lcom/google/common/collect/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/s;->ny:Lcom/google/common/collect/az;

    .line 970
    iput-object p1, p0, Lcom/google/common/collect/s;->key:Ljava/lang/Object;

    .line 971
    iput p2, p0, Lcom/google/common/collect/s;->hash:I

    .line 972
    iput-object p3, p0, Lcom/google/common/collect/s;->nx:Lcom/google/common/collect/ag;

    .line 973
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/az;)V
    .locals 1
    .parameter

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/common/collect/s;->ny:Lcom/google/common/collect/az;

    .line 1048
    iput-object p1, p0, Lcom/google/common/collect/s;->ny:Lcom/google/common/collect/az;

    .line 1049
    invoke-interface {v0, p1}, Lcom/google/common/collect/az;->a(Lcom/google/common/collect/az;)V

    .line 1050
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 999
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dm()J
    .locals 1

    .prologue
    .line 984
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 994
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dp()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/common/collect/s;->ny:Lcom/google/common/collect/az;

    return-object v0
.end method

.method public dq()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/common/collect/s;->hash:I

    return v0
.end method

.method public dr()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/s;->nx:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/collect/s;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public i(J)V
    .locals 1
    .parameter

    .prologue
    .line 989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
