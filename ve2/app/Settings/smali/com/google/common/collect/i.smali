.class final Lcom/google/common/collect/i;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field ih:I

.field ii:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v0, p0, Lcom/google/common/collect/i;->ih:I

    .line 146
    iput v0, p0, Lcom/google/common/collect/i;->ii:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/d;Lcom/google/common/base/k;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-nez p2, :cond_1

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/google/common/collect/d;Lcom/google/common/collect/i;Lcom/google/common/base/k;)V

    return-object v0
.end method

.method bJ()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/google/common/collect/i;->ih:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/i;->ih:I

    goto :goto_0
.end method

.method bK()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/google/common/collect/i;->ii:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/i;->ii:I

    goto :goto_0
.end method
