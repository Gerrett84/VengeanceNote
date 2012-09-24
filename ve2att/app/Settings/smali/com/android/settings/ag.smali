.class final Lcom/android/settings/ag;
.super Ljava/lang/Object;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/settings/ar;
    .locals 1
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/android/settings/ar;

    invoke-direct {v0, p1}, Lcom/android/settings/ar;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/ag;->a(Landroid/os/Parcel;)Lcom/android/settings/ar;

    move-result-object v0

    return-object v0
.end method

.method public m(I)[Lcom/android/settings/ar;
    .locals 1
    .parameter

    .prologue
    .line 179
    new-array v0, p1, [Lcom/android/settings/ar;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/ag;->m(I)[Lcom/android/settings/ar;

    move-result-object v0

    return-object v0
.end method
