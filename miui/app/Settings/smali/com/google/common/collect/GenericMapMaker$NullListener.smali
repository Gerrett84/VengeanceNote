.class final enum Lcom/google/common/collect/GenericMapMaker$NullListener;
.super Ljava/lang/Enum;
.source "GenericMapMaker.java"

# interfaces
.implements Lcom/google/common/collect/o;


# static fields
.field public static final enum PR:Lcom/google/common/collect/GenericMapMaker$NullListener;

.field private static final synthetic PS:[Lcom/google/common/collect/GenericMapMaker$NullListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/GenericMapMaker$NullListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->PR:Lcom/google/common/collect/GenericMapMaker$NullListener;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/GenericMapMaker$NullListener;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->PR:Lcom/google/common/collect/GenericMapMaker$NullListener;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->PS:[Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/GenericMapMaker$NullListener;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/GenericMapMaker$NullListener;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->PS:[Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-virtual {v0}, [Lcom/google/common/collect/GenericMapMaker$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$RemovalNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method
