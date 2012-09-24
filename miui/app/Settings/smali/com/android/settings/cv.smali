.class Lcom/android/settings/cv;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# instance fields
.field final Fw:Ljava/util/ArrayList;

.field final synthetic qc:Lcom/android/settings/H;


# direct methods
.method constructor <init>(Lcom/android/settings/H;Landroid/os/Parcel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    iput-object p1, p0, Lcom/android/settings/cv;->qc:Lcom/android/settings/H;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cv;->Fw:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v2, v1

    .line 113
    :goto_0
    if-ge v2, v3, :cond_1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move v0, v1

    .line 118
    :goto_1
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cv;->Fw:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method
