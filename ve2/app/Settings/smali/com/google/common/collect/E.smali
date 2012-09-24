.class Lcom/google/common/collect/E;
.super Lcom/google/common/collect/F;
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
    .line 1036
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/F;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V

    .line 1037
    iput-object p4, p0, Lcom/google/common/collect/E;->df:Lcom/google/common/collect/w;

    .line 1038
    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/E;->df:Lcom/google/common/collect/w;

    return-object v0
.end method
