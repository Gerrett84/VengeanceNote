.class Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# static fields
.field static final Kr:Ljava/lang/String;

.field static final Ks:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$UnsafeComparator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->Kr:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes;->lj()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->Ks:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method
