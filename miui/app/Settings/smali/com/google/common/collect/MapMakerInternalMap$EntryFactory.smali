.class abstract enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# static fields
.field public static final enum ih:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum ii:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum ij:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum ik:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum il:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum im:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum in:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum io:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum ip:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum iq:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum ir:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum is:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field static final it:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field private static final synthetic iu:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ih:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 360
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ii:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 375
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ij:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 390
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ik:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 407
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->il:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 414
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->im:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 429
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->in:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 444
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->io:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 461
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$9;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ip:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 468
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$10;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->iq:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 483
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$11;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ir:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 498
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->is:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 352
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ih:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ii:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ij:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ik:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->il:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->im:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->in:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->io:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ip:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->iq:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ir:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->is:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->iu:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 525
    new-array v0, v6, [[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-array v1, v7, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ih:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ii:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ij:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ik:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->il:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->im:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->in:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->io:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ip:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->iq:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->ir:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->is:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->it:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/P;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 533
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 534
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->it:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 533
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1
    .parameter

    .prologue
    .line 352
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->iu:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-interface {p2}, Lcom/google/common/collect/ag;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/ag;->dq()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/ag;)Lcom/google/common/collect/ag;
.end method

.method a(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dm()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/ag;->i(J)V

    .line 566
    invoke-interface {p1}, Lcom/google/common/collect/ag;->do()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 567
    invoke-interface {p1}, Lcom/google/common/collect/ag;->dn()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 569
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->j(Lcom/google/common/collect/ag;)V

    .line 570
    return-void
.end method

.method b(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ac()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 577
    invoke-interface {p1}, Lcom/google/common/collect/ag;->ab()Lcom/google/common/collect/ag;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/ag;Lcom/google/common/collect/ag;)V

    .line 579
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->k(Lcom/google/common/collect/ag;)V

    .line 580
    return-void
.end method
