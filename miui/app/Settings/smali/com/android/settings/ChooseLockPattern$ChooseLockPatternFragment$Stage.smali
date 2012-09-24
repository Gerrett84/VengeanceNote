.class public final enum Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# static fields
.field public static final enum iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iK:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iL:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iN:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iO:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum iP:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private static final synthetic iQ:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field final leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 245
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0b0384

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->W:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ad:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 249
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0b0397

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->aa:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ag:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iK:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 252
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0b0387

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Y:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ad:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iL:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 256
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0b0388

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Y:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ac:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 259
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0b0389

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->W:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->af:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iN:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 263
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0b0382

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->W:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->af:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iO:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 267
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0b038a

    sget-object v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->W:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ae:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iP:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 243
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iK:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iL:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iM:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iN:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iO:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iP:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iQ:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 283
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 284
    iput-object p4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 285
    iput-object p5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 286
    iput p6, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 287
    iput-boolean p7, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 288
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 243
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->iQ:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
