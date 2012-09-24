.class abstract Lcom/google/common/collect/ao;
.super Lcom/google/common/collect/ai;
.source "RegularImmutableTable.java"


# static fields
.field private static final Ky:Lcom/google/common/base/l;


# instance fields
.field private final Kx:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/common/collect/V;

    invoke-direct {v0}, Lcom/google/common/collect/V;-><init>()V

    sput-object v0, Lcom/google/common/collect/ao;->Ky:Lcom/google/common/base/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic dK()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ao;->kk()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final kk()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/ao;->Kx:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method
