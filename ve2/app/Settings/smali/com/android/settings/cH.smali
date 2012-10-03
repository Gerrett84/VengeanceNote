.class final Lcom/android/settings/cH;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aI(I)[Lcom/android/settings/P;
    .locals 1
    .parameter

    .prologue
    .line 1459
    new-array v0, p1, [Lcom/android/settings/P;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1451
    invoke-virtual {p0, p1}, Lcom/android/settings/cH;->d(Landroid/os/Parcel;)Lcom/android/settings/P;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Lcom/android/settings/P;
    .locals 1
    .parameter

    .prologue
    .line 1454
    new-instance v0, Lcom/android/settings/P;

    invoke-direct {v0, p1}, Lcom/android/settings/P;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1451
    invoke-virtual {p0, p1}, Lcom/android/settings/cH;->aI(I)[Lcom/android/settings/P;

    move-result-object v0

    return-object v0
.end method
