.class Lcom/android/settings/bC;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public vE:[I

.field public vF:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 1389
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/android/settings/bC;->vE:[I

    .line 1391
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/bC;)I
    .locals 4
    .parameter

    .prologue
    .line 1402
    iget-wide v0, p1, Lcom/android/settings/bC;->vF:J

    iget-wide v2, p0, Lcom/android/settings/bC;->vF:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public aa(I)V
    .locals 3
    .parameter

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/settings/bC;->vE:[I

    invoke-static {v0, p1}, Lcom/android/settings/DataUsageSummary;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bC;->vE:[I

    array-length v0, v0

    .line 1396
    iget-object v1, p0, Lcom/android/settings/bC;->vE:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bC;->vE:[I

    .line 1397
    iget-object v1, p0, Lcom/android/settings/bC;->vE:[I

    aput p1, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1385
    check-cast p1, Lcom/android/settings/bC;

    invoke-virtual {p0, p1}, Lcom/android/settings/bC;->a(Lcom/android/settings/bC;)I

    move-result v0

    return v0
.end method
