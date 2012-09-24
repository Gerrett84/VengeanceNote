.class public Lcom/android/settings/widget/k;
.super Ljava/lang/Object;
.source "PieChartView.java"


# instance fields
.field public paint:Landroid/graphics/Paint;

.field public value:J

.field public yR:Landroid/graphics/Path;

.field public yS:Landroid/graphics/Path;

.field public yT:Landroid/graphics/Path;

.field final synthetic yU:Lcom/android/settings/widget/PieChartView;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/PieChartView;JI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/widget/k;->yU:Lcom/android/settings/widget/PieChartView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/k;->yR:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/k;->yS:Landroid/graphics/Path;

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/k;->yT:Landroid/graphics/Path;

    .line 72
    iput-wide p2, p0, Lcom/android/settings/widget/k;->value:J

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/settings/widget/PieChartView;->b(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/k;->paint:Landroid/graphics/Paint;

    .line 74
    return-void
.end method
