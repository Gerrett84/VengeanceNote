.class final enum Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
.super Ljava/lang/Enum;
.source "PowerUsageDetail.java"


# static fields
.field public static final enum vH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vJ:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vK:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vM:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum vN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private static final synthetic vO:[Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 63
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 64
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vJ:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vK:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 66
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 67
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vM:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 68
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vJ:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vK:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vM:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vO:[Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->vO:[Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    return-object v0
.end method
