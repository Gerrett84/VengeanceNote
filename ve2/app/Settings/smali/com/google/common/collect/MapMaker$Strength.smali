.class abstract enum Lcom/google/common/collect/MapMaker$Strength;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# static fields
.field public static final enum Cm:Lcom/google/common/collect/MapMaker$Strength;

.field public static final enum Cn:Lcom/google/common/collect/MapMaker$Strength;

.field public static final enum Co:Lcom/google/common/collect/MapMaker$Strength;

.field private static final synthetic Cp:[Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$1;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMaker$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->Cm:Lcom/google/common/collect/MapMaker$Strength;

    .line 371
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMaker$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->Cn:Lcom/google/common/collect/MapMaker$Strength;

    .line 400
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$3;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMaker$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->Co:Lcom/google/common/collect/MapMaker$Strength;

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->Cm:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->Cn:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->Co:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->Cp:[Lcom/google/common/collect/MapMaker$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter

    .prologue
    .line 341
    const-class v0, Lcom/google/common/collect/MapMaker$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->Cp:[Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/A;Ljava/lang/Object;ILcom/google/common/collect/w;)Lcom/google/common/collect/w;
.end method

.method abstract b(Lcom/google/common/collect/w;Ljava/lang/Object;)Lcom/google/common/collect/D;
.end method

.method abstract equal(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract f(Ljava/lang/Object;)I
.end method
