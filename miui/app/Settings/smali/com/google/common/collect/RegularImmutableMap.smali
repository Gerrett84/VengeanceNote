.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient mask:I

.field private final transient ql:[Lcom/google/common/collect/av;

.field private final transient qm:[Lcom/google/common/collect/av;

.field private final transient qn:I

.field private transient qo:Lcom/google/common/collect/ImmutableSet;

.field private transient qp:Lcom/google/common/collect/ImmutableSet;

.field private transient qq:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 49
    array-length v6, p1

    .line 50
    invoke-direct {p0, v6}, Lcom/google/common/collect/RegularImmutableMap;->S(I)[Lcom/google/common/collect/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    .line 52
    invoke-static {v6}, Lcom/google/common/collect/RegularImmutableMap;->R(I)I

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->S(I)[Lcom/google/common/collect/av;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->qm:[Lcom/google/common/collect/av;

    .line 54
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    move v4, v2

    move v0, v2

    .line 57
    :goto_0
    if-ge v4, v6, :cond_2

    .line 60
    aget-object v3, p1, v4

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 63
    add-int v5, v0, v8

    .line 64
    invoke-static {v8}, Lcom/google/common/collect/r;->H(I)I

    move-result v0

    iget v8, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v8, v0

    .line 65
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qm:[Lcom/google/common/collect/av;

    aget-object v0, v0, v8

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3, v0}, Lcom/google/common/collect/RegularImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/av;)Lcom/google/common/collect/av;

    move-result-object v3

    .line 69
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->qm:[Lcom/google/common/collect/av;

    aput-object v3, v9, v8

    .line 70
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    aput-object v3, v8, v4

    move-object v3, v0

    .line 71
    :goto_1
    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v3}, Lcom/google/common/collect/av;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_2
    const-string v8, "duplicate key: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-static {v0, v8, v9}, Lcom/google/common/base/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v3}, Lcom/google/common/collect/av;->eI()Lcom/google/common/collect/av;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 72
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_0

    .line 76
    :cond_2
    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qn:I

    .line 77
    return-void
.end method

.method private static R(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    .line 82
    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "table too large: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/c;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0
.end method

.method private S(I)[Lcom/google/common/collect/av;
    .locals 1
    .parameter

    .prologue
    .line 93
    new-array v0, p1, [Lcom/google/common/collect/av;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/av;)Lcom/google/common/collect/av;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    if-nez p2, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/av;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/av;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/RegularImmutableMap;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qn:I

    return v0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public dR()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qq:Lcom/google/common/collect/ImmutableCollection;

    .line 250
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qq:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public eB()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qo:Lcom/google/common/collect/ImmutableSet;

    .line 194
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qo:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public eC()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qp:Lcom/google/common/collect/ImmutableSet;

    .line 220
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->qp:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->eB()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/r;->H(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->qm:[Lcom/google/common/collect/av;

    aget-object v1, v2, v1

    .line 148
    :goto_1
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/google/common/collect/av;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1}, Lcom/google/common/collect/av;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v1}, Lcom/google/common/collect/av;->eI()Lcom/google/common/collect/av;

    move-result-object v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->eC()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/a;->e(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/google/common/collect/a;->cF:Lcom/google/common/base/m;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->ql:[Lcom/google/common/collect/av;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/m;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->dR()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
