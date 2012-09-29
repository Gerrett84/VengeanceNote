.class Lcom/google/common/collect/c;
.super Lcom/google/common/collect/K;
.source "RegularImmutableMap.java"


# instance fields
.field final synthetic dh:Lcom/google/common/collect/RegularImmutableMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap$Values;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/common/collect/c;->dh:Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/K;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/c;->dh:Lcom/google/common/collect/RegularImmutableMap$Values;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/av;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/common/collect/av;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
