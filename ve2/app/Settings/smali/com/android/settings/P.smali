.class public Lcom/android/settings/P;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final dv:I

.field public dw:Z

.field public dx:Landroid/util/SparseBooleanArray;

.field public dy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1451
    new-instance v0, Lcom/android/settings/cH;

    invoke-direct {v0}, Lcom/android/settings/cH;-><init>()V

    sput-object v0, Lcom/android/settings/P;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 1420
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/P;->dx:Landroid/util/SparseBooleanArray;

    .line 1421
    iput p1, p0, Lcom/android/settings/P;->dv:I

    .line 1422
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 1424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/P;->dx:Landroid/util/SparseBooleanArray;

    .line 1425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/P;->dv:I

    .line 1426
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/P;->dx:Landroid/util/SparseBooleanArray;

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/P;->dy:J

    .line 1428
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/P;)I
    .locals 4
    .parameter

    .prologue
    .line 1448
    iget-wide v0, p1, Lcom/android/settings/P;->dy:J

    iget-wide v2, p0, Lcom/android/settings/P;->dy:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1414
    check-cast p1, Lcom/android/settings/P;

    invoke-virtual {p0, p1}, Lcom/android/settings/P;->a(Lcom/android/settings/P;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1443
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)V
    .locals 2
    .parameter

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/settings/P;->dx:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1432
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1436
    iget v0, p0, Lcom/android/settings/P;->dv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/P;->dx:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1438
    iget-wide v0, p0, Lcom/android/settings/P;->dy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1439
    return-void
.end method
