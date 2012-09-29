.class final enum Lcom/android/settings/wifi/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"


# static fields
.field public static final enum IV:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public static final enum IW:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public static final enum IX:Lcom/android/settings/wifi/AccessPoint$PskType;

.field public static final enum IY:Lcom/android/settings/wifi/AccessPoint$PskType;

.field private static final synthetic IZ:[Lcom/android/settings/wifi/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IV:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 63
    new-instance v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IW:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 64
    new-instance v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IX:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 65
    new-instance v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IY:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/wifi/AccessPoint$PskType;

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->IV:Lcom/android/settings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->IW:Lcom/android/settings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->IX:Lcom/android/settings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->IY:Lcom/android/settings/wifi/AccessPoint$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IZ:[Lcom/android/settings/wifi/AccessPoint$PskType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->IZ:[Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/AccessPoint$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/AccessPoint$PskType;

    return-object v0
.end method
