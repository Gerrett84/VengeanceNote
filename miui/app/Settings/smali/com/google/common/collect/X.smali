.class final Lcom/google/common/collect/X;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field final CT:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/google/common/collect/X;->CT:Ljava/lang/Throwable;

    .line 215
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    return-object p0
.end method

.method public a(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public dc()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public dd()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public de()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/collect/X;->CT:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method
