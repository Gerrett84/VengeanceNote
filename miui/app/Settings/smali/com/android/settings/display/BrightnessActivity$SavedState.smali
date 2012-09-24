.class Lcom/android/settings/display/BrightnessActivity$SavedState;
.super Ljava/lang/Object;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final serialVersionUID:J = -0x25be8c40f17ab62dL


# instance fields
.field automatic:Z

.field curBrightness:I

.field oldAutomatic:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/android/settings/display/g;

    invoke-direct {v0}, Lcom/android/settings/display/g;-><init>()V

    sput-object v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    .line 277
    return-void

    :cond_0
    move v0, v2

    .line 272
    goto :goto_0

    :cond_1
    move v1, v2

    .line 274
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return-void

    :cond_0
    move v0, v2

    .line 281
    goto :goto_0

    :cond_1
    move v1, v2

    .line 283
    goto :goto_1
.end method
