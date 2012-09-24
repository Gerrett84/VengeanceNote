.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "RegularImmutableMap.java"

# interfaces
.implements Lcom/google/common/collect/av;


# instance fields
.field final next:Lcom/google/common/collect/av;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/av;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/av;

    .line 118
    return-void
.end method


# virtual methods
.method public eD()Lcom/google/common/collect/av;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/av;

    return-object v0
.end method
