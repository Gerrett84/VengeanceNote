.class public Lcom/android/internal/telephony/gsm/MiuiSpnOverride;
.super Ljava/lang/Object;
.source "MiuiSpnOverride.java"


# static fields
.field public static final EQ_OPERATOR_CM:Ljava/lang/String; = "46000"

.field public static final EQ_OPERATOR_CT:Ljava/lang/String; = "46003"

.field public static final EQ_OPERATOR_CU:Ljava/lang/String; = "46001"

.field public static final MCC_CHINA:Ljava/lang/String; = "460"

.field public static final MCC_NONE:Ljava/lang/String; = "000"

.field public static final MCC_TAIWAN:Ljava/lang/String; = "466"

.field private static final sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

.field static final sInstance:Lcom/android/internal/telephony/gsm/MiuiSpnOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sInstance:Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/MiuiSpnOverride;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sInstance:Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    return-object v0
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->sImpl:Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
