.class Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableCollection.java"


# static fields
.field private static final vQ:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->vQ:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/d;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public dz()Lcom/google/common/collect/ap;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/collect/w;->oR:Lcom/google/common/collect/ap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->dz()Lcom/google/common/collect/ap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->vQ:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 199
    array-length v0, p1

    if-lez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 202
    :cond_0
    return-object p1
.end method
