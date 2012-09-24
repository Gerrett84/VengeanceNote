.class final Lcom/google/common/collect/J;
.super Lcom/google/common/collect/v;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/google/common/collect/J;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/google/common/collect/v;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1732
    invoke-super {p0}, Lcom/google/common/collect/v;->gh()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/u;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
