.class Lcom/google/common/collect/ImmutableCollection$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/ImmutableCollection;->sJ:Lcom/google/common/collect/ImmutableCollection;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/as;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method
