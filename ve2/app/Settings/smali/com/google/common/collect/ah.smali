.class final Lcom/google/common/collect/ah;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/google/common/collect/ah;->value:Ljava/lang/Object;

    .line 254
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ag;)Lcom/google/common/collect/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    return-object p0
.end method

.method public a(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    return-void
.end method

.method public cY()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public cZ()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public da()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/ah;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/collect/ah;->value:Ljava/lang/Object;

    return-object v0
.end method
