.class Lcom/android/settings/widget/t;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/h;


# instance fields
.field final synthetic MT:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/widget/t;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/widget/t;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 305
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/t;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/widget/t;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->as()V

    .line 308
    :cond_0
    return-void
.end method

.method public e(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    return-void
.end method
