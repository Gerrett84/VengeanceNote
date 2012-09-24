.class Lcom/android/settings/dM;
.super Ljava/lang/Object;
.source "VirusScanService.java"


# instance fields
.field public LD:Ljava/lang/String;

.field public cT:Ljava/lang/String;

.field public cU:Lcom/android/settings/ScanState;

.field public mChecked:Z

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/android/settings/ScanState;->bG:Lcom/android/settings/ScanState;

    iput-object v0, p0, Lcom/android/settings/dM;->cU:Lcom/android/settings/ScanState;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dM;->mChecked:Z

    .line 30
    return-void
.end method
