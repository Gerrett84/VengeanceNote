.class final enum Lcom/android/settings/ScanState;
.super Ljava/lang/Enum;
.source "VirusScanService.java"


# static fields
.field public static final enum bJ:Lcom/android/settings/ScanState;

.field public static final enum bK:Lcom/android/settings/ScanState;

.field public static final enum bL:Lcom/android/settings/ScanState;

.field public static final enum bM:Lcom/android/settings/ScanState;

.field public static final enum bN:Lcom/android/settings/ScanState;

.field private static final synthetic bO:[Lcom/android/settings/ScanState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_WAITING"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    .line 20
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_SCANNING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->bK:Lcom/android/settings/ScanState;

    .line 21
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_PASSED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->bL:Lcom/android/settings/ScanState;

    .line 22
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_RISK"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->bM:Lcom/android/settings/ScanState;

    .line 23
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_UNINSTALLED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->bN:Lcom/android/settings/ScanState;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/ScanState;

    sget-object v1, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/ScanState;->bK:Lcom/android/settings/ScanState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ScanState;->bL:Lcom/android/settings/ScanState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/ScanState;->bM:Lcom/android/settings/ScanState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/ScanState;->bN:Lcom/android/settings/ScanState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/ScanState;->bO:[Lcom/android/settings/ScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ScanState;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ScanState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/settings/ScanState;->bO:[Lcom/android/settings/ScanState;

    invoke-virtual {v0}, [Lcom/android/settings/ScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ScanState;

    return-object v0
.end method
