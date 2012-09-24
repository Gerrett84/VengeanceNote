.class final enum Lcom/google/common/collect/MapMaker$Strength$3;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
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
    .line 414
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/common/collect/C;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/C;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/m;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/m;-><init>(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)V

    goto :goto_0
.end method

.method b(Lcom/google/common/collect/w;Ljava/lang/Object;)Lcom/google/common/collect/D;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/collect/h;

    invoke-direct {v0, p2}, Lcom/google/common/collect/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
