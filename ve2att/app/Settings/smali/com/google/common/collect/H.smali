.class Lcom/google/common/collect/H;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/l;


# instance fields
.field final ve:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic vf:Lcom/google/common/collect/b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/collect/H;->vf:Lcom/google/common/collect/b;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/H;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/collect/H;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/common/collect/H;->k(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
