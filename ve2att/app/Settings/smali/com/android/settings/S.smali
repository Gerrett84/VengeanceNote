.class public Lcom/android/settings/S;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    iget-wide v0, p1, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    iget-wide v2, p2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    sub-long/2addr v0, v2

    .line 89
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/S;->a(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method
