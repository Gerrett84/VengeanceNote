.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)I
    .locals 1
    .parameter

    .prologue
    .line 64
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static compare(BB)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static lf()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->an:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method
