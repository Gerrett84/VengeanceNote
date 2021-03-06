.class Landroid/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 835
    new-instance v0, Landroid/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 797
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 809
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 810
    iput p2, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    .line 811
    iput p3, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    .line 812
    iput p4, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    .line 813
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 797
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 797
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 797
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/DatePicker$SavedState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 797
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 827
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    return-void
.end method
