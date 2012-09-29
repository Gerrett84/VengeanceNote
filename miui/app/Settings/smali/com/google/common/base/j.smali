.class Lcom/google/common/base/j;
.super Lcom/google/common/base/m;
.source "Joiner.java"


# instance fields
.field final synthetic AI:Ljava/lang/String;

.field final synthetic AJ:Lcom/google/common/base/m;


# virtual methods
.method o(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 265
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/common/base/j;->AI:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/j;->AJ:Lcom/google/common/base/m;

    invoke-virtual {v0, p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
