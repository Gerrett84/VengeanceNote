.class abstract Lcom/google/common/collect/K;
.super Lcom/google/common/collect/Q;
.source "AbstractIndexedListIterator.java"


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/K;-><init>(II)V

    .line 55
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/Q;-><init>()V

    .line 69
    invoke-static {p2, p1}, Lcom/google/common/base/c;->b(II)I

    .line 70
    iput p1, p0, Lcom/google/common/collect/K;->size:I

    .line 71
    iput p2, p0, Lcom/google/common/collect/K;->position:I

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    iget v1, p0, Lcom/google/common/collect/K;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/K;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/K;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/K;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/K;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/K;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/K;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/common/collect/K;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
