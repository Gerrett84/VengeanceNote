.class final enum Lcom/google/common/collect/MapMaker$Strength$1;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/x;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/common/collect/F;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/F;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/E;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/E;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)V

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/w;Ljava/lang/Object;)Lcom/google/common/collect/D;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    new-instance v0, Lcom/google/common/collect/o;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/o;-><init>(Ljava/lang/Object;Lcom/google/common/collect/w;)V

    return-object v0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 347
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
