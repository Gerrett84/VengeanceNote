.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    if-ne p1, p2, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->e(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract d(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method protected abstract e(Ljava/lang/Object;)I
.end method
