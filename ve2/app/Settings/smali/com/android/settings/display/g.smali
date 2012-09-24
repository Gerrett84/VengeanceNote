.class final Lcom/android/settings/display/g;
.super Ljava/lang/Object;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aO(I)[Lcom/android/settings/display/BrightnessActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 258
    new-array v0, p1, [Lcom/android/settings/display/BrightnessActivity$SavedState;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/display/g;->d(Landroid/os/Parcel;)Lcom/android/settings/display/BrightnessActivity$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Lcom/android/settings/display/BrightnessActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 254
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/display/BrightnessActivity$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/display/g;->aO(I)[Lcom/android/settings/display/BrightnessActivity$SavedState;

    move-result-object v0

    return-object v0
.end method
