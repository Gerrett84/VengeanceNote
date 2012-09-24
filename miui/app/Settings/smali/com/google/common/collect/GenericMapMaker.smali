.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# instance fields
.field removalListener:Lcom/google/common/collect/o;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dA()Lcom/google/common/collect/o;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/o;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->PO:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/g;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/o;

    return-object v0
.end method
