.class Lcom/google/common/collect/s;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/k;


# instance fields
.field final sJ:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic sK:Lcom/google/common/collect/f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/common/collect/s;->sK:Lcom/google/common/collect/f;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/s;->sJ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/collect/s;->sJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/google/common/collect/s;->l(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
