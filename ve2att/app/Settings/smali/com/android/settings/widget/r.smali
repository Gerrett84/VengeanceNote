.class Lcom/android/settings/widget/r;
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
    .line 327
    iput-object p1, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    if-eqz p2, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->at()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->au()V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public e(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->av()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/widget/r;->MT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->aw()V

    goto :goto_0
.end method
