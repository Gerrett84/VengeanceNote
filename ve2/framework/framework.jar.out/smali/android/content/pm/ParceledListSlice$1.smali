.class final Landroid/content/pm/ParceledListSlice$1;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ParceledListSlice;
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
        "Landroid/content/pm/ParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, numItems:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 151
    .local v0, lastSlice:Z
    :goto_0
    if-lez v2, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 155
    .local v5, parcelSize:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 156
    .local v3, offset:I
    add-int v7, v3, v5

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 159
    .local v4, p:Landroid/os/Parcel;
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    invoke-virtual {v4, p1, v3, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 161
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 163
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v2, v0, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V

    .line 167
    .end local v3           #offset:I
    .end local v4           #p:Landroid/os/Parcel;
    .end local v5           #parcelSize:I
    :goto_1
    return-object v1

    .end local v0           #lastSlice:Z
    :cond_0
    move v0, v6

    .line 149
    goto :goto_0

    .line 165
    .restart local v0       #lastSlice:Z
    :cond_1
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1}, Landroid/content/pm/ParceledListSlice;-><init>()V

    .line 166
    .local v1, list:Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1, v0}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ParceledListSlice;
    .locals 1
    .parameter "size"

    .prologue
    .line 172
    new-array v0, p1, [Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice$1;->newArray(I)[Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method
