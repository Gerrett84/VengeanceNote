.class final Lcom/google/common/collect/al;
.super Lcom/google/common/collect/F;
.source "Iterables.java"


# instance fields
.field final synthetic Kt:Ljava/lang/Iterable;

.field final synthetic kL:Lcom/google/common/base/l;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/google/common/collect/al;->Kt:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/al;->kL:Lcom/google/common/base/l;

    invoke-direct {p0}, Lcom/google/common/collect/F;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/common/collect/al;->Kt:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/al;->kL:Lcom/google/common/base/l;

    invoke-static {v0, v1}, Lcom/google/common/collect/w;->a(Ljava/util/Iterator;Lcom/google/common/base/l;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
