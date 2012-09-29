.class public final enum Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# static fields
.field public static final enum Ka:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Kb:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Kc:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private static final synthetic Kd:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0b0150

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0b0371

    const v4, 0x7f0b0373

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Ka:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 129
    new-instance v6, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f0b0374

    const v10, 0x7f0b0376

    const v11, 0x7f0b015a

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kb:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 133
    new-instance v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f0b0377

    const v13, 0x7f0b0378

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kc:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Ka:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kb:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kc:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kd:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 142
    iput p4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 143
    iput p5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 123
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Kd:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
