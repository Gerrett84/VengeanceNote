.class Lcom/android/settings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field BU:Ljava/lang/String;

.field final Iq:Z

.field Ir:Landroid/content/pm/PackageItemInfo;

.field Is:Ljava/lang/CharSequence;

.field It:I

.field Iu:Ljava/lang/String;

.field Iv:Ljava/lang/String;

.field Iw:Z

.field Ix:Z

.field cN:J

.field mLabel:Ljava/lang/String;

.field mSize:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->Iq:Z

    .line 233
    return-void
.end method
