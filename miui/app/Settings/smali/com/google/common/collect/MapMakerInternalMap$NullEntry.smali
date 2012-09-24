.class final enum Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/ag;


# static fields
.field private static final synthetic yA:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

.field public static final enum yz:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 772
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yz:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    .line 771
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yz:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yA:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
    .locals 1
    .parameter

    .prologue
    .line 771
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->yA:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    return-void
.end method

.method public ab()Lcom/google/common/collect/ag;
    .locals 0

    .prologue
    .line 823
    return-object p0
.end method

.method public ac()Lcom/google/common/collect/ag;
    .locals 0

    .prologue
    .line 831
    return-object p0
.end method

.method public b(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    return-void
.end method

.method public b(Lcom/google/common/collect/az;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    return-void
.end method

.method public c(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    return-void
.end method

.method public d(Lcom/google/common/collect/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    return-void
.end method

.method public dm()J
    .locals 2

    .prologue
    .line 799
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dn()Lcom/google/common/collect/ag;
    .locals 0

    .prologue
    .line 807
    return-object p0
.end method

.method public do()Lcom/google/common/collect/ag;
    .locals 0

    .prologue
    .line 815
    return-object p0
.end method

.method public dp()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq()I
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public dr()Lcom/google/common/collect/ag;
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(J)V
    .locals 0
    .parameter

    .prologue
    .line 803
    return-void
.end method
