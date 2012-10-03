.class public Lmiui/util/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final DENSITIES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/DisplayUtils;->DENSITIES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x40t 0x1t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getBestDensityOrder(I)[I
    .locals 6
    .parameter "currentDensity"

    .prologue
    .line 63
    const/4 v4, 0x1

    .line 64
    .local v4, newDensity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 65
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v5, v5, v1

    if-ne p0, v5, :cond_2

    .line 66
    const/4 v4, 0x0

    .line 70
    :cond_0
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    array-length v5, v5

    add-int/2addr v5, v4

    new-array v0, v5, [I

    .line 71
    .local v0, densities:[I
    const/4 v5, 0x0

    aput p0, v0, v5

    .line 72
    move v1, v4

    const/4 v2, 0x1

    .local v2, j:I
    :goto_1
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 73
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v5, v5, v1

    if-eq p0, v5, :cond_1

    .line 74
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    sget-object v5, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v5, v5, v1

    aput v5, v0, v2

    move v2, v3

    .line 72
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v0           #densities:[I
    .end local v2           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .restart local v0       #densities:[I
    .restart local v2       #j:I
    :cond_3
    return-object v0
.end method

.method public static getDensityName(I)Ljava/lang/String;
    .locals 4
    .parameter "density"

    .prologue
    .line 23
    sparse-switch p0, :sswitch_data_0

    .line 37
    sget-object v2, Lmiui/util/DisplayUtils;->DENSITIES:[I

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 38
    .local v1, min:I
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_0
    if-lez v0, :cond_1

    .line 39
    sget-object v2, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v2, v2, v0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v3, v3, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 40
    move v1, v0

    .line 38
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    .end local v0           #j:I
    .end local v1           #min:I
    :sswitch_0
    const-string/jumbo v2, "ldpi"

    .line 43
    :goto_1
    return-object v2

    .line 27
    :sswitch_1
    const-string/jumbo v2, "mdpi"

    goto :goto_1

    .line 29
    :sswitch_2
    const-string v2, "hdpi"

    goto :goto_1

    .line 31
    :sswitch_3
    const-string/jumbo v2, "xhdpi"

    goto :goto_1

    .line 33
    :sswitch_4
    const-string/jumbo v2, "nodpi"

    goto :goto_1

    .line 35
    :sswitch_5
    const-string v2, ""

    goto :goto_1

    .line 43
    .restart local v0       #j:I
    .restart local v1       #min:I
    :cond_1
    sget-object v2, Lmiui/util/DisplayUtils;->DENSITIES:[I

    aget v2, v2, v1

    invoke-static {v2}, Lmiui/util/DisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 23
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_4
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 3
    .parameter "density"

    .prologue
    .line 47
    invoke-static {p0}, Lmiui/util/DisplayUtils;->getDensityName(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, name:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getDrawbleDensityFolder(I)Ljava/lang/String;
    .locals 2
    .parameter "density"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmiui/util/DisplayUtils;->getDrawbleDensityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawbleDensityName(I)Ljava/lang/String;
    .locals 2
    .parameter "density"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmiui/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
