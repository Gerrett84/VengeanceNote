.class final Lcom/android/settings/aM;
.super Ljava/lang/Object;
.source "AccessibilityEnableScriptInjectionPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public L(I)[Lcom/android/settings/dL;
    .locals 1
    .parameter

    .prologue
    .line 179
    new-array v0, p1, [Lcom/android/settings/dL;

    return-object v0
.end method

.method public c(Landroid/os/Parcel;)Lcom/android/settings/dL;
    .locals 1
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/android/settings/dL;

    invoke-direct {v0, p1}, Lcom/android/settings/dL;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/aM;->c(Landroid/os/Parcel;)Lcom/android/settings/dL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/aM;->L(I)[Lcom/android/settings/dL;

    move-result-object v0

    return-object v0
.end method
