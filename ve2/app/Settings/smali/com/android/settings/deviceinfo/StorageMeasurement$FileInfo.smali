.class Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final aS:Ljava/lang/String;

.field final aT:J

.field final mSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->aS:Ljava/lang/String;

    .line 533
    iput-wide p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    .line 534
    iput-wide p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->aT:J

    .line 535
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I
    .locals 4
    .parameter

    .prologue
    .line 539
    if-eq p0, p1, :cond_0

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 526
    check-cast p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->aS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->aT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
