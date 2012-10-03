.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 525
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cM:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->cM:Z

    if-eq v2, v3, :cond_2

    .line 527
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cM:Z

    if-eqz v2, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 527
    goto :goto_0

    .line 529
    :cond_2
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cL:Z

    iget-boolean v3, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->cL:Z

    if-eq v2, v3, :cond_4

    .line 531
    iget-boolean v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cL:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 533
    :cond_4
    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 536
    iget-wide v2, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->cN:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 538
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 523
    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->a(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
