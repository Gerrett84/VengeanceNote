.class final Lcom/google/common/collect/Z;
.super Lcom/google/common/collect/ap;
.source "Iterators.java"


# instance fields
.field final synthetic DD:Ljava/lang/Object;

.field done:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/google/common/collect/Z;->DD:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1091
    iget-boolean v0, p0, Lcom/google/common/collect/Z;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/google/common/collect/Z;->done:Z

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1098
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Z;->done:Z

    .line 1099
    iget-object v0, p0, Lcom/google/common/collect/Z;->DD:Ljava/lang/Object;

    return-object v0
.end method
