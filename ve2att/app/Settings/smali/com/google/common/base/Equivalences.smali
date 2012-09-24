.class public final Lcom/google/common/base/Equivalences;
.super Ljava/lang/Object;
.source "Equivalences.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/base/Equivalences$Equals;->HZ:Lcom/google/common/base/Equivalences$Equals;

    return-object v0
.end method

.method public static me()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/common/base/Equivalences$Identity;->Ow:Lcom/google/common/base/Equivalences$Identity;

    return-object v0
.end method
