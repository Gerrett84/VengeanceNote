.class Lcom/google/common/collect/j;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/D;


# instance fields
.field final jc:Lcom/google/common/collect/w;

.field final jd:Lcom/google/common/collect/w;

.field final synthetic je:Lcom/google/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/w;Lcom/google/common/collect/w;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/common/collect/j;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/google/common/collect/j;->jc:Lcom/google/common/collect/w;

    .line 645
    iput-object p3, p0, Lcom/google/common/collect/j;->jd:Lcom/google/common/collect/w;

    .line 646
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/w;)Lcom/google/common/collect/D;
    .locals 3
    .parameter

    .prologue
    .line 662
    new-instance v0, Lcom/google/common/collect/j;

    iget-object v1, p0, Lcom/google/common/collect/j;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/common/collect/j;->jc:Lcom/google/common/collect/w;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/j;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/w;Lcom/google/common/collect/w;)V

    return-object v0
.end method

.method public br()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 666
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/j;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/google/common/collect/j;->jc:Lcom/google/common/collect/w;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->d(Lcom/google/common/collect/w;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 674
    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/j;->ce()V

    throw v0
.end method

.method ce()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/common/collect/j;->je:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/A;

    iget-object v1, p0, Lcom/google/common/collect/j;->jd:Lcom/google/common/collect/w;

    invoke-interface {v0, v1}, Lcom/google/common/collect/A;->d(Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/j;->jc:Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->b()Lcom/google/common/collect/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/D;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 656
    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/j;->ce()V

    throw v0
.end method
