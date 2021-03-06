.class public Landroid/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_IPC_SIZE:I = 0x40000


# instance fields
.field private mIsLastSlice:Z

.field private mNumItems:I

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IZ)V
    .locals 0
    .parameter "p"
    .parameter "numItems"
    .parameter "lastSlice"

    .prologue
    .line 50
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 52
    iput p2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 53
    iput-boolean p3, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;IZLandroid/content/pm/ParceledListSlice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;IZ)V

    return-void
.end method


# virtual methods
.method public append(Landroid/os/Parcelable;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, item:Landroid/os/Parcelable;,"TT;"
    const/4 v0, 0x1

    .line 90
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParceledListSlice has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-interface {p1, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 97
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/high16 v2, 0x4

    if-le v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isLastSlice()Z
    .locals 1

    .prologue
    .line 140
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    iget-boolean v0, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    return v0
.end method

.method public populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, item:Landroid/os/Parcelable;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    if-ge v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Landroid/os/Parcelable;,"TT;"
    check-cast v1, Landroid/os/Parcelable;

    .line 116
    .restart local v1       #item:Landroid/os/Parcelable;,"TT;"
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 122
    return-object v1
.end method

.method public setLastSlice(Z)V
    .locals 0
    .parameter "lastSlice"

    .prologue
    .line 131
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    iput-boolean p1, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .local p0, this:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v2, 0x0

    .line 68
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean v1, p0, Landroid/content/pm/ParceledListSlice;->mIsLastSlice:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v1, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    if-lez v1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 73
    .local v0, parcelSize:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 77
    .end local v0           #parcelSize:I
    :cond_0
    iput v2, p0, Landroid/content/pm/ParceledListSlice;->mNumItems:I

    .line 78
    iget-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/ParceledListSlice;->mParcel:Landroid/os/Parcel;

    .line 80
    return-void

    :cond_1
    move v1, v2

    .line 69
    goto :goto_0
.end method
