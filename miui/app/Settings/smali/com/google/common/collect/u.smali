.class Lcom/google/common/collect/u;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# instance fields
.field final hash:I

.field final nA:Lcom/google/common/collect/ag;

.field volatile nB:Lcom/google/common/collect/az;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1225
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1292
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->eY()Lcom/google/common/collect/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/u;->nB:Lcom/google/common/collect/az;

    .line 1226
    iput p3, p0, Lcom/google/common/collect/u;->hash:I

    .line 1227
    iput-object p4, p0, Lcom/google/common/collect/u;->nA:Lcom/google/common/collect/ag;

    .line 1228
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public af()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ag()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/az;)V
    .locals 1
    .parameter

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/common/collect/u;->nB:Lcom/google/common/collect/az;

    .line 1302
    iput-object p1, p0, Lcom/google/common/collect/u;->nB:Lcom/google/common/collect/az;

    .line 1303
    invoke-interface {v0, p1}, Lcom/google/common/collect/az;->a(Lcom/google/common/collect/az;)V

    .line 1304
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dq()J
    .locals 1

    .prologue
    .line 1238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dr()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ds()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dt()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/common/collect/u;->nB:Lcom/google/common/collect/az;

    return-object v0
.end method

.method public du()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/google/common/collect/u;->hash:I

    return v0
.end method

.method public dv()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/common/collect/u;->nA:Lcom/google/common/collect/ag;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/google/common/collect/u;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(J)V
    .locals 1
    .parameter

    .prologue
    .line 1243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
