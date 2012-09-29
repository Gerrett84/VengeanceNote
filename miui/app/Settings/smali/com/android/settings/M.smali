.class Lcom/android/settings/M;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# instance fields
.field public cW:Ljava/lang/String;

.field public cX:Lcom/android/settings/ScanState;

.field public mChecked:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/android/settings/ScanState;->bJ:Lcom/android/settings/ScanState;

    iput-object v0, p0, Lcom/android/settings/M;->cX:Lcom/android/settings/ScanState;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/M;->mChecked:Z

    .line 41
    return-void
.end method
