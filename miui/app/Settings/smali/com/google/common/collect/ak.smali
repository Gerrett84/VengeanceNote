.class final Lcom/google/common/collect/ak;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/l;


# instance fields
.field final synthetic JJ:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/ak;->JJ:Ljava/util/Collection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/common/collect/ak;->JJ:Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    :cond_0
    return-object p1
.end method
