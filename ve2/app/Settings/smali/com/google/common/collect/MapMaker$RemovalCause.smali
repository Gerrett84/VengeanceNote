.class abstract enum Lcom/google/common/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# static fields
.field public static final enum ul:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum um:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum un:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum uo:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum up:Lcom/google/common/collect/MapMaker$RemovalCause;

.field private static final synthetic uq:[Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 776
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$1;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->ul:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 789
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$2;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->um:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 801
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$3;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->un:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 812
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$4;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 823
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$5;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 771
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->ul:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->um:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->un:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->uo:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->up:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:[Lcom/google/common/collect/MapMaker$RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/U;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$RemovalCause;
    .locals 1
    .parameter

    .prologue
    .line 771
    const-class v0, Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$RemovalCause;
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->uq:[Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method
