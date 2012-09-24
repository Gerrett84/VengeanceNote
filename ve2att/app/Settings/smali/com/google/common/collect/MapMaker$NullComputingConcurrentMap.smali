.class final Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;
.super Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.source "MapMaker.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final computingFunction:Lcom/google/common/base/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 925
    invoke-static {p2}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/l;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/l;

    .line 926
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 939
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/l;

    invoke-interface {v0, p1}, Lcom/google/common/base/l;->l(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    throw v0

    .line 944
    :catch_1
    move-exception v0

    .line 945
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 931
    .line 932
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    return-object v0
.end method
