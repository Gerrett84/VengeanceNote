.class final Lcom/google/common/collect/V;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Lcom/google/common/base/l;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/google/common/collect/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/google/common/collect/i;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/V;->a(Lcom/google/common/collect/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
