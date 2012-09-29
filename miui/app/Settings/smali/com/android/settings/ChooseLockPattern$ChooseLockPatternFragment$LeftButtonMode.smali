.class final enum Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# static fields
.field public static final enum Z:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum aa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ab:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ad:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field private static final synthetic ae:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0b00e8

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Z:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 198
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0b00e8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->aa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 199
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f0b038d

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ab:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 200
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f0b038d

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 201
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ad:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 196
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Z:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->aa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ab:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ad:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ae:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 210
    iput-boolean p4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 211
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 196
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ae:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
