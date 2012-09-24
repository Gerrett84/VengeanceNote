.class Lcom/google/common/collect/t;
.super Ljava/util/TimerTask;
.source "MapMaker.java"


# instance fields
.field final synthetic je:Lcom/google/common/collect/MapMaker$StrategyImpl;

.field final synthetic tW:Ljava/lang/ref/WeakReference;

.field final synthetic tX:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/common/collect/t;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iput-object p2, p0, Lcom/google/common/collect/t;->tW:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/common/collect/t;->tX:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/collect/t;->tW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/google/common/collect/t;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v1, v1, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Lcom/google/common/collect/t;->tX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    :cond_0
    return-void
.end method
