.class Lcom/android/settings/cw;
.super Ljava/lang/Object;
.source "BandMode.java"


# instance fields
.field private CE:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/cw;->CE:I

    .line 104
    iput p1, p0, Lcom/android/settings/cw;->CE:I

    .line 105
    return-void
.end method


# virtual methods
.method public hu()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/settings/cw;->CE:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/android/settings/BandMode;->hc()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/cw;->CE:I

    aget-object v0, v0, v1

    return-object v0
.end method
