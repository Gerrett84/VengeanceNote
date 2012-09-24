.class public Lcom/android/settings/aS;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public pI:J

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/aS;->label:Ljava/lang/CharSequence;

    .line 1317
    iput-wide p2, p0, Lcom/android/settings/aS;->start:J

    .line 1318
    iput-wide p4, p0, Lcom/android/settings/aS;->pI:J

    .line 1319
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 1311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput-object p1, p0, Lcom/android/settings/aS;->label:Ljava/lang/CharSequence;

    .line 1313
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/aS;)I
    .locals 4
    .parameter

    .prologue
    .line 1337
    iget-wide v0, p0, Lcom/android/settings/aS;->start:J

    iget-wide v2, p1, Lcom/android/settings/aS;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1306
    check-cast p1, Lcom/android/settings/aS;

    invoke-virtual {p0, p1}, Lcom/android/settings/aS;->a(Lcom/android/settings/aS;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1328
    instance-of v1, p1, Lcom/android/settings/aS;

    if-eqz v1, :cond_0

    .line 1329
    check-cast p1, Lcom/android/settings/aS;

    .line 1330
    iget-wide v1, p0, Lcom/android/settings/aS;->start:J

    iget-wide v3, p1, Lcom/android/settings/aS;->start:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/settings/aS;->pI:J

    iget-wide v3, p1, Lcom/android/settings/aS;->pI:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1332
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/settings/aS;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
