.class Lcom/google/common/collect/o;
.super Lcom/google/common/base/a;
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
    .line 1054
    sget-object v0, Lcom/google/common/collect/H;->Jh:Lcom/google/common/base/c;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/a;-><init>(Ljava/lang/Object;Lcom/google/common/base/c;)V

    .line 1055
    iput-object p2, p0, Lcom/google/common/collect/o;->pu:Lcom/google/common/collect/w;

    .line 1056
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/w;)Lcom/google/common/collect/D;
    .locals 2
    .parameter

    .prologue
    .line 1064
    new-instance v0, Lcom/google/common/collect/o;

    invoke-virtual {p0}, Lcom/google/common/collect/o;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/o;-><init>(Ljava/lang/Object;Lcom/google/common/collect/w;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/o;->pu:Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->c()V

    .line 1060
    return-void
.end method

.method public br()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/google/common/collect/o;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
