.class Lcom/android/settings/widget/r;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/h;


# instance fields
.field final synthetic IQ:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 328
    if-eqz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->ax()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->ay()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public e(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->az()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->e(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/r;->IQ:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/d;->aA()V

    goto :goto_0
.end method
