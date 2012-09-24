.class Lcom/google/common/collect/y;
.super Lcom/google/common/base/i;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/D;


# instance fields
.field final pu:Lcom/google/common/collect/w;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/w;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1079
    sget-object v0, Lcom/google/common/collect/H;->Jh:Lcom/google/common/base/c;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/i;-><init>(Ljava/lang/Object;Lcom/google/common/base/c;)V

    .line 1080
    iput-object p2, p0, Lcom/google/common/collect/y;->pu:Lcom/google/common/collect/w;

    .line 1081
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/w;)Lcom/google/common/collect/D;
    .locals 2
    .parameter

    .prologue
    .line 1089
    new-instance v0, Lcom/google/common/collect/y;

    invoke-virtual {p0}, Lcom/google/common/collect/y;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/y;-><init>(Ljava/lang/Object;Lcom/google/common/collect/w;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/common/collect/y;->pu:Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->c()V

    .line 1085
    return-void
.end method

.method public br()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/google/common/collect/y;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
