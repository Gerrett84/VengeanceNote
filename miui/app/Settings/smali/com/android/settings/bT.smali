.class public Lcom/android/settings/bT;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/aU;Lcom/android/settings/aU;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 373
    iget-object v0, p1, Lcom/android/settings/aU;->nA:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p2, Lcom/android/settings/aU;->nA:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 374
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 371
    check-cast p1, Lcom/android/settings/aU;

    check-cast p2, Lcom/android/settings/aU;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bT;->a(Lcom/android/settings/aU;Lcom/android/settings/aU;)I

    move-result v0

    return v0
.end method
