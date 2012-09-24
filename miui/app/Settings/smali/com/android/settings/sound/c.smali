.class final Lcom/android/settings/sound/c;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(I)[Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 345
    new-array v0, p1, [Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 341
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/c;->b(Landroid/os/Parcel;)Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/c;->B(I)[Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    move-result-object v0

    return-object v0
.end method
