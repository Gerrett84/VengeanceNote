.class Lcom/google/common/collect/p;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/D;


# instance fields
.field final pV:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Lcom/google/common/collect/p;->pV:Ljava/lang/String;

    .line 803
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/w;)Lcom/google/common/collect/D;
    .locals 0
    .parameter

    .prologue
    .line 809
    return-object p0
.end method

.method public br()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 812
    new-instance v0, Lcom/google/common/collect/NullOutputException;

    iget-object v1, p0, Lcom/google/common/collect/p;->pV:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    return-object v0
.end method
