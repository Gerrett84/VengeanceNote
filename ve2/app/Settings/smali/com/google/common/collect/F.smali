.class Lcom/google/common/collect/F;
.super Lcom/google/common/base/a;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/w;


# instance fields
.field volatile e:Lcom/google/common/collect/D;

.field final hash:I

.field final internals:Lcom/google/common/collect/A;


# direct methods
.method constructor <init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    sget-object v0, Lcom/google/common/collect/H;->Jh:Lcom/google/common/base/c;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/a;-><init>(Ljava/lang/Object;Lcom/google/common/base/c;)V

    .line 1013
    invoke-static {}, Lcom/google/common/collect/MapMaker;->hL()Lcom/google/common/collect/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/F;->e:Lcom/google/common/collect/D;

    .line 997
    iput-object p1, p0, Lcom/google/common/collect/F;->internals:Lcom/google/common/collect/A;

    .line 998
    iput p3, p0, Lcom/google/common/collect/F;->hash:I

    .line 999
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/common/collect/F;->internals:Lcom/google/common/collect/A;

    invoke-interface {v0, p0}, Lcom/google/common/collect/A;->d(Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method public a(Lcom/google/common/collect/D;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/common/collect/F;->e:Lcom/google/common/collect/D;

    .line 1021
    return-void
.end method

.method public b()Lcom/google/common/collect/D;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/F;->e:Lcom/google/common/collect/D;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/common/collect/F;->internals:Lcom/google/common/collect/A;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/A;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method public d()Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/common/collect/F;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/common/collect/F;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
