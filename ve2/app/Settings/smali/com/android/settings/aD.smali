.class public Lcom/android/settings/aD;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public nX:J

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    const/4 v5, 0x1

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/aD;->label:Ljava/lang/CharSequence;

    .line 1287
    iput-wide p2, p0, Lcom/android/settings/aD;->start:J

    .line 1288
    iput-wide p4, p0, Lcom/android/settings/aD;->nX:J

    .line 1289
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p1, p0, Lcom/android/settings/aD;->label:Ljava/lang/CharSequence;

    .line 1283
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/aD;)I
    .locals 4
    .parameter

    .prologue
    .line 1307
    iget-wide v0, p0, Lcom/android/settings/aD;->start:J

    iget-wide v2, p1, Lcom/android/settings/aD;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1276
    check-cast p1, Lcom/android/settings/aD;

    invoke-virtual {p0, p1}, Lcom/android/settings/aD;->a(Lcom/android/settings/aD;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1298
    instance-of v1, p1, Lcom/android/settings/aD;

    if-eqz v1, :cond_0

    .line 1299
    check-cast p1, Lcom/android/settings/aD;

    .line 1300
    iget-wide v1, p0, Lcom/android/settings/aD;->start:J

    iget-wide v3, p1, Lcom/android/settings/aD;->start:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/settings/aD;->nX:J

    iget-wide v3, p1, Lcom/android/settings/aD;->nX:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1302
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/settings/aD;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
