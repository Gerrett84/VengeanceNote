.class Lcom/android/settings/dL;
.super Landroid/preference/Preference$BaseSavedState;
.source "AccessibilityEnableScriptInjectionPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private ng:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/android/settings/aM;

    invoke-direct {v0}, Lcom/android/settings/aM;-><init>()V

    sput-object v0, Lcom/android/settings/dL;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/dL;->ng:Z

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dL;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/dL;->ng:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/dL;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/settings/dL;->ng:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/dL;->ng:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
