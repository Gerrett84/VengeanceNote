.class Lcom/google/common/collect/m;
.super Lcom/google/common/collect/C;
.source "MapMaker.java"


# instance fields
.field final df:Lcom/google/common/collect/w;


# direct methods
.method constructor <init>(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/C;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V

    .line 921
    iput-object p4, p0, Lcom/google/common/collect/m;->df:Lcom/google/common/collect/w;

    .line 922
    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/common/collect/m;->df:Lcom/google/common/collect/w;

    return-object v0
.end method
