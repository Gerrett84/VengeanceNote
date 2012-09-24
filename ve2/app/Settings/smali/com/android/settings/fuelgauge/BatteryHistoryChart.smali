.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# instance fields
.field dW:I

.field rG:J

.field uA:Ljava/lang/String;

.field uB:Ljava/lang/String;

.field uC:Ljava/lang/String;

.field uD:Ljava/lang/String;

.field uE:I

.field uF:I

.field uG:I

.field uH:I

.field uI:Z

.field uJ:I

.field uK:I

.field uL:I

.field uM:I

.field uN:I

.field uO:I

.field uP:I

.field uQ:I

.field uR:I

.field uS:I

.field uT:I

.field uU:J

.field uV:J

.field uW:I

.field uX:I

.field uY:Z

.field uZ:Z

.field final ub:Landroid/graphics/Paint;

.field final uc:Landroid/graphics/Paint;

.field final ud:Landroid/graphics/Paint;

.field final ue:Landroid/graphics/Paint;

.field final uf:Landroid/graphics/Paint;

.field final ug:Landroid/graphics/Paint;

.field final uh:Landroid/graphics/Paint;

.field final ui:Landroid/graphics/Paint;

.field final uj:Landroid/graphics/Paint;

.field final uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field final ul:Landroid/text/TextPaint;

.field final um:Landroid/graphics/Path;

.field final un:Landroid/graphics/Path;

.field final uo:Landroid/graphics/Path;

.field final up:Landroid/graphics/Path;

.field final uq:Landroid/graphics/Path;

.field final ur:Landroid/graphics/Path;

.field final us:Landroid/graphics/Path;

.field final ut:Landroid/graphics/Path;

.field final uu:Landroid/graphics/Path;

.field uv:Landroid/os/BatteryStats;

.field uw:Ljava/lang/String;

.field ux:Ljava/lang/String;

.field uy:Ljava/lang/String;

.field uz:Ljava/lang/String;

.field va:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ub:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uc:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ud:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ue:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uf:Landroid/graphics/Paint;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    .line 126
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->um:Landroid/graphics/Path;

    .line 127
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->un:Landroid/graphics/Path;

    .line 128
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uo:Landroid/graphics/Path;

    .line 129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->up:Landroid/graphics/Path;

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    .line 131
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    .line 132
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    .line 134
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    .line 185
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ub:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ub:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uc:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ud:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ud:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ue:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ue:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uf:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uf:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->a([I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 205
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 208
    sget-object v0, Lcom/android/settings/aE;->nY:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 212
    const/4 v3, 0x0

    .line 213
    const/16 v2, 0xf

    .line 214
    const/4 v1, -0x1

    .line 215
    const/4 v0, -0x1

    .line 217
    const/4 v4, 0x0

    .line 218
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v9, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 219
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 220
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v5, v4

    .line 223
    :goto_0
    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 225
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    .line 226
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 228
    packed-switch v7, :pswitch_data_0

    .line 225
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    :pswitch_0
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_2

    .line 234
    :pswitch_1
    invoke-virtual {v5, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_2

    .line 238
    :pswitch_2
    const/4 v1, -0x1

    invoke-virtual {v5, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto :goto_2

    .line 242
    :pswitch_3
    const/4 v0, -0x1

    invoke-virtual {v5, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_2

    .line 247
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    :cond_1
    const/4 v8, 0x0

    .line 251
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 253
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 254
    const/4 v4, 0x0

    move v12, v4

    move v4, v0

    move v0, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move v2, v7

    move-object v7, v3

    move v3, v8

    move v8, v12

    :goto_3
    if-ge v8, v10, :cond_2

    .line 255
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    .line 257
    packed-switch v11, :pswitch_data_1

    .line 254
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 259
    :pswitch_4
    const/4 v3, 0x0

    invoke-virtual {v9, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_4

    .line 263
    :pswitch_5
    const/4 v2, 0x0

    invoke-virtual {v9, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_4

    .line 267
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {v9, v11, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    goto :goto_4

    .line 271
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {v9, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_4

    .line 275
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_4

    .line 279
    :pswitch_9
    invoke-virtual {v9, v11, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_4

    .line 283
    :pswitch_a
    invoke-virtual {v9, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto :goto_4

    .line 287
    :pswitch_b
    invoke-virtual {v9, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_4

    .line 292
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 295
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 297
    const/4 v6, 0x0

    .line 298
    packed-switch v5, :pswitch_data_2

    move-object v5, v6

    .line 312
    :goto_5
    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 314
    if-eqz v3, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 317
    :cond_3
    return-void

    .line 300
    :pswitch_c
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    .line 304
    :pswitch_d
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    .line 308
    :pswitch_e
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_4
    move-object v5, v4

    goto/16 :goto_0

    .line 199
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 257
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 298
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    if-eqz p6, :cond_2

    .line 404
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 405
    if-eqz p13, :cond_0

    .line 406
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 415
    :cond_2
    if-eqz p8, :cond_3

    .line 416
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 418
    :cond_3
    if-eqz p9, :cond_4

    .line 419
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    :cond_4
    if-eqz p10, :cond_5

    .line 422
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 424
    :cond_5
    if-eqz p11, :cond_6

    .line 425
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 427
    :cond_6
    if-eqz p12, :cond_7

    .line 428
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v1, :cond_8

    .line 431
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->C(I)V

    .line 433
    :cond_8
    return-void
.end method

.method a(Landroid/os/BatteryStats;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 341
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uv:Landroid/os/BatteryStats;

    .line 343
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uv:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    .line 345
    iput-wide v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->rG:J

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->rG:J

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v0, v4, v5}, Lcom/android/settings/fuelgauge/Utils;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0b046b

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uw:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b046d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uy:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b046e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uz:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b046f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uA:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0470

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uB:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0471

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uC:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0472

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uD:Ljava/lang/String;

    .line 358
    const/4 v0, -0x1

    .line 359
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uW:I

    .line 360
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uX:I

    .line 363
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move v2, v3

    move v4, v0

    move v5, v3

    move v6, v3

    move v0, v1

    .line 365
    :cond_0
    :goto_0
    invoke-virtual {p1, v7}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 366
    add-int/lit8 v6, v6, 0x1

    .line 367
    iget-byte v8, v7, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v8, v1, :cond_0

    .line 368
    if-eqz v0, :cond_1

    .line 370
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    move v0, v3

    .line 372
    :cond_1
    iget-byte v5, v7, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v5, v4, :cond_2

    if-ne v6, v1, :cond_3

    .line 373
    :cond_2
    iget-byte v4, v7, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 376
    :cond_3
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uV:J

    .line 377
    iget v5, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v2, v5

    move v5, v6

    goto :goto_0

    :cond_4
    move v2, v3

    move v5, v3

    .line 381
    :cond_5
    iput v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uT:I

    .line 382
    const/high16 v0, 0x1000

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uZ:Z

    .line 383
    const/high16 v0, 0x400

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    move v3, v1

    :cond_6
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uY:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ci;->G(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 385
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    .line 387
    :cond_7
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uV:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uV:J

    .line 388
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uV:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/Utils;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ux:Ljava/lang/String;

    .line 389
    return-void

    :cond_9
    move v0, v3

    .line 382
    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v2

    .line 664
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->um:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ub:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 665
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    if-eqz v3, :cond_c

    .line 666
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uw:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    neg-int v4, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 668
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ux:Ljava/lang/String;

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 674
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->un:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->un:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uc:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uo:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 678
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uo:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ud:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 680
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->up:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->up:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ue:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 683
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v3, :cond_3

    .line 684
    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uP:I

    sub-int v3, v2, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 685
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->a(Landroid/graphics/Canvas;II)V

    .line 687
    :cond_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 688
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 690
    :cond_4
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 691
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uf:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 693
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uZ:Z

    if-eqz v3, :cond_6

    .line 694
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 695
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 698
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uY:Z

    if-eqz v3, :cond_7

    .line 699
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 700
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 703
    :cond_7
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 704
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 707
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    if-eqz v3, :cond_d

    .line 708
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v3, :cond_9

    .line 709
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uD:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uP:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 712
    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uZ:Z

    if-eqz v3, :cond_a

    .line 713
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uA:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 716
    :cond_a
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uY:Z

    if-eqz v3, :cond_b

    .line 717
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uB:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 720
    :cond_b
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uC:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uy:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 724
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uz:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 726
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 728
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 730
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/16 v0, 0xa

    if-ge v6, v0, :cond_d

    .line 731
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v6

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    .line 732
    int-to-float v2, v0

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 730
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 671
    :cond_c
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uw:Ljava/lang/String;

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uG:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    iget v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 735
    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uG:I

    .line 395
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ux:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uH:I

    .line 396
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    .line 397
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    .line 398
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 28
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uF:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uE:I

    sub-int/2addr v2, v3

    .line 440
    const/4 v3, 0x1

    const/high16 v4, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    .line 442
    mul-int/lit8 v3, v2, 0x6

    move/from16 v0, p2

    if-le v0, v3, :cond_b

    .line 443
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    .line 444
    mul-int/lit8 v3, v2, 0xf

    move/from16 v0, p2

    if-le v0, v3, :cond_a

    .line 446
    div-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    .line 451
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 465
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    .line 466
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uc:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ud:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ue:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uf:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    if-eqz v3, :cond_f

    .line 477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    add-int/2addr v3, v2

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    .line 479
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    .line 482
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uY:Z

    if-eqz v2, :cond_c

    move v2, v3

    :goto_2
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    .line 483
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uZ:Z

    if-eqz v2, :cond_d

    move v2, v3

    :goto_3
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uP:I

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uP:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v4, :cond_e

    :goto_4
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uQ:I

    .line 486
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v2, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 500
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->um:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->un:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uo:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->up:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 510
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    move-wide/from16 v18, v0

    .line 511
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uV:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uU:J

    sub-long v20, v2, v4

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uW:I

    move/from16 v22, v0

    .line 514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uW:I

    sub-int v23, v2, v3

    .line 516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uQ:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    sub-int v5, v2, v3

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uS:I

    .line 519
    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, -0x1

    .line 520
    const/4 v2, 0x0

    .line 521
    const/4 v8, 0x0

    .line 522
    const/4 v15, 0x0

    .line 523
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 524
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uT:I

    move/from16 v24, v0

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uv:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 527
    new-instance v25, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v17, v2

    .line 528
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uv:Landroid/os/BatteryStats;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    .line 529
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 530
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v18

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v2, v2, v26

    div-long v2, v2, v20

    long-to-int v2, v2

    .line 531
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    add-int/2addr v3, v5

    move-object/from16 v0, v25

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v4, v4, v22

    add-int/lit8 v16, v5, -0x1

    mul-int v4, v4, v16

    div-int v4, v4, v23

    sub-int/2addr v3, v4

    .line 533
    if-eq v9, v2, :cond_9

    .line 535
    if-eq v7, v3, :cond_3

    .line 538
    move-object/from16 v0, v25

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 539
    const/16 v7, 0xe

    if-gt v4, v7, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->up:Landroid/graphics/Path;

    .line 543
    :goto_7
    if-eq v4, v15, :cond_12

    .line 544
    if-eqz v15, :cond_2

    .line 545
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v15, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 547
    :cond_2
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v15, v4

    .line 553
    :goto_8
    if-nez v8, :cond_13

    .line 554
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->um:Landroid/graphics/Path;

    .line 555
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v2

    :goto_9
    move v7, v3

    move v9, v2

    .line 564
    :cond_3
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 566
    :goto_a
    if-eq v3, v10, :cond_4

    .line 567
    if-eqz v3, :cond_15

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_b
    move v10, v3

    .line 575
    :cond_4
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 577
    :goto_c
    if-eq v3, v11, :cond_5

    .line 578
    if-eqz v3, :cond_17

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_d
    move v11, v3

    .line 586
    :cond_5
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    .line 588
    :goto_e
    if-eq v3, v12, :cond_6

    .line 589
    if-eqz v3, :cond_19

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_f
    move v12, v3

    .line 597
    :cond_6
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x400

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    .line 599
    :goto_10
    if-eq v3, v13, :cond_7

    .line 600
    if-eqz v3, :cond_1b

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_11
    move v13, v3

    .line 608
    :cond_7
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 610
    :goto_12
    if-eq v3, v14, :cond_8

    .line 611
    if-eqz v3, :cond_1d

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_13
    move v14, v3

    .line 619
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v3, :cond_9

    .line 621
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v3, v3, 0xf00

    shr-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 624
    const/4 v3, 0x0

    .line 632
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->c(II)V

    .line 648
    :cond_9
    :goto_15
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    move/from16 v16, v2

    goto/16 :goto_6

    .line 449
    :cond_a
    div-int/lit8 v3, v2, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    goto/16 :goto_0

    .line 457
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uI:Z

    .line 458
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uJ:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    .line 459
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uR:I

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ug:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uh:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ui:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uj:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    .line 482
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 483
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 484
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 490
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    .line 492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    .line 493
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uP:I

    .line 494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->dW:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uQ:I

    .line 495
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->va:Z

    if-eqz v2, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uk:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 540
    :cond_10
    const/16 v7, 0x1d

    if-gt v4, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uo:Landroid/graphics/Path;

    goto/16 :goto_7

    .line 541
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->un:Landroid/graphics/Path;

    goto/16 :goto_7

    .line 550
    :cond_12
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 558
    :cond_13
    int-to-float v4, v2

    int-to-float v7, v3

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 564
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 570
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uq:Landroid/graphics/Path;

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uK:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 575
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 581
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ur:Landroid/graphics/Path;

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uL:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 586
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 592
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->us:Landroid/graphics/Path;

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uM:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v12, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 597
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 603
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ut:Landroid/graphics/Path;

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uN:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 608
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 614
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uu:Landroid/graphics/Path;

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->uO:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 625
    :cond_1e
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    .line 626
    const/4 v3, 0x1

    goto/16 :goto_14

    .line 628
    :cond_1f
    move-object/from16 v0, v25

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 630
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_14

    .line 636
    :cond_20
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22

    .line 637
    if-eqz v8, :cond_22

    .line 638
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 641
    const/4 v7, -0x1

    .line 642
    const/4 v8, 0x0

    .line 643
    const/4 v15, 0x0

    .line 644
    const/4 v14, 0x0

    move v12, v14

    move v11, v14

    move v10, v14

    move v9, v7

    move/from16 v2, v16

    goto/16 :goto_15

    :cond_21
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 652
    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 655
    return-void

    :cond_22
    move/from16 v2, v16

    goto/16 :goto_15
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 320
    if-lez p2, :cond_4

    .line 321
    if-nez p1, :cond_1

    .line 322
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 329
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 330
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    .line 331
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x4180

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 338
    :goto_3
    return-void

    .line 324
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 329
    goto :goto_1

    :cond_3
    move v0, v2

    .line 332
    goto :goto_2

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->ul:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
