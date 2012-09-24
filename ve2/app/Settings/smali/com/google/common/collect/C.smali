.class Lcom/google/common/collect/C;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/w;


# instance fields
.field volatile e:Lcom/google/common/collect/D;

.field final hash:I

.field final internals:Lcom/google/common/collect/A;

.field final key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/A;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    invoke-static {}, Lcom/google/common/collect/MapMaker;->hL()Lcom/google/common/collect/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/D;

    .line 883
    iput-object p1, p0, Lcom/google/common/collect/C;->internals:Lcom/google/common/collect/A;

    .line 884
    iput-object p2, p0, Lcom/google/common/collect/C;->key:Ljava/lang/Object;

    .line 885
    iput p3, p0, Lcom/google/common/collect/C;->hash:I

    .line 886
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/D;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/D;

    .line 904
    return-void
.end method

.method public b()Lcom/google/common/collect/D;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/D;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/common/collect/C;->internals:Lcom/google/common/collect/A;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/A;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 907
    return-void
.end method

.method public d()Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/google/common/collect/C;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/collect/C;->key:Ljava/lang/Object;

    return-object v0
.end method
