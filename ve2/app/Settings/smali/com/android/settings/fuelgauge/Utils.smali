.class public Lcom/android/settings/fuelgauge/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;D)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const v4, 0x15180

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-wide v2, 0x408f400000000000L

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 43
    if-le v2, v4, :cond_5

    .line 44
    div-int v0, v2, v4

    .line 45
    mul-int v3, v0, v4

    sub-int/2addr v2, v3

    move v4, v0

    .line 47
    :goto_0
    const/16 v0, 0xe10

    if-le v2, v0, :cond_4

    .line 48
    div-int/lit16 v0, v2, 0xe10

    .line 49
    mul-int/lit16 v3, v0, 0xe10

    sub-int/2addr v2, v3

    move v3, v0

    .line 51
    :goto_1
    const/16 v0, 0x3c

    if-le v2, v0, :cond_3

    .line 52
    div-int/lit8 v0, v2, 0x3c

    .line 53
    mul-int/lit8 v6, v0, 0x3c

    sub-int/2addr v2, v6

    .line 55
    :goto_2
    if-lez v4, :cond_0

    .line 56
    const v6, 0x7f0b043c

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    if-lez v3, :cond_1

    .line 59
    const v4, 0x7f0b043d

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 60
    :cond_1
    if-lez v0, :cond_2

    .line 61
    const v3, 0x7f0b043e

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 63
    :cond_2
    const v0, 0x7f0b043f

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v3, v1

    goto/16 :goto_1

    :cond_5
    move v4, v1

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;D)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 76
    const-wide v0, 0x412e848000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 77
    const-string v0, "%.2f MB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide v2, 0x408f400000000000L

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-wide/high16 v0, 0x4090

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 79
    const-string v0, "%.2f KB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4024

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "%d bytes"

    new-array v1, v2, [Ljava/lang/Object;

    double-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
