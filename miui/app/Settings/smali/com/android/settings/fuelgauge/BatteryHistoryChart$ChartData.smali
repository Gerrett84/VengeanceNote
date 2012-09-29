.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# instance fields
.field mColors:[I

.field nS:[Landroid/graphics/Paint;

.field nT:I

.field nU:[I

.field nV:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method K(I)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nV:I

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->a(II)V

    .line 84
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nV:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nU:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nU:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    .line 75
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    .line 76
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nV:I

    .line 78
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Canvas;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    .line 88
    add-int v9, p2, p3

    move v6, v0

    move v5, v0

    .line 89
    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    if-ge v6, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nU:[I

    aget v1, v1, v6

    .line 91
    const v2, 0xffff

    and-int v7, v1, v2

    .line 92
    const/high16 v2, -0x1

    and-int/2addr v1, v2

    shr-int/lit8 v8, v1, 0x10

    .line 93
    if-eqz v5, :cond_0

    .line 94
    int-to-float v1, v0

    int-to-float v2, p2

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nS:[Landroid/graphics/Paint;

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v8

    move v0, v7

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method init(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    if-lez p1, :cond_0

    .line 64
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nU:[I

    .line 68
    :goto_0
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nT:I

    .line 69
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nV:I

    .line 70
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nU:[I

    goto :goto_0
.end method

.method setColors([I)V
    .locals 3
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 54
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nS:[Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nS:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nS:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->nS:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
