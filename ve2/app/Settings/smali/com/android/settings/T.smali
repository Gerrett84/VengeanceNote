.class final Lcom/android/settings/T;
.super Ljava/lang/Object;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/settings/ae;
    .locals 1
    .parameter

    .prologue
    .line 200
    new-instance v0, Lcom/android/settings/ae;

    invoke-direct {v0, p1}, Lcom/android/settings/ae;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/T;->a(Landroid/os/Parcel;)Lcom/android/settings/ae;

    move-result-object v0

    return-object v0
.end method

.method public j(I)[Lcom/android/settings/ae;
    .locals 1
    .parameter

    .prologue
    .line 204
    new-array v0, p1, [Lcom/android/settings/ae;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/T;->j(I)[Lcom/android/settings/ae;

    move-result-object v0

    return-object v0
.end method
