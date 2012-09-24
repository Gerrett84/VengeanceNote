.class Lcom/android/settings/aS;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic eC:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 544
    iget-object v0, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->d(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->c(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->e(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->bc()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->bc()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->bc()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 550
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->bc()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 551
    invoke-virtual {v0, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 552
    invoke-virtual {v0, v3, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 553
    invoke-virtual {v0, v2, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 554
    invoke-virtual {v0, v3, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 555
    iget-object v1, p0, Lcom/android/settings/aS;->eC:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 556
    return-void
.end method
