.class Landroid/telephony/PhoneNumberUtils$Injector;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendNonSeparator(Ljava/lang/StringBuilder;C)V
    .locals 2
    .parameter "sb"
    .parameter "c"

    .prologue
    .line 64
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 65
    .local v0, digit:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    return-void
.end method

.method static getEffectiveLength(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->callIndexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
