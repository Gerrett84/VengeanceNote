.class final Landroid/content/pm/BaseThemeInfo$1;
.super Ljava/lang/Object;
.source "BaseThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/BaseThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/BaseThemeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/BaseThemeInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 201
    new-instance v0, Landroid/content/pm/BaseThemeInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/BaseThemeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/content/pm/BaseThemeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/BaseThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/BaseThemeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 205
    new-array v0, p1, [Landroid/content/pm/BaseThemeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/content/pm/BaseThemeInfo$1;->newArray(I)[Landroid/content/pm/BaseThemeInfo;

    move-result-object v0

    return-object v0
.end method
