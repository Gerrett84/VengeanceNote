.class public Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"


# instance fields
.field public final paint:Landroid/graphics/Paint;

.field public final uG:F


# direct methods
.method protected constructor <init>(FLandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->uG:F

    .line 47
    iput-object p2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .line 48
    return-void
.end method
