.class Lcom/android/settings/Q;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# instance fields
.field private dA:Z

.field final synthetic dB:Lcom/android/settings/MiuiDeviceInfoSettings;

.field private dz:Lcom/android/settings/cA;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/settings/Q;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Lcom/android/settings/cA;

    invoke-direct {v0}, Lcom/android/settings/cA;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Q;->dz:Lcom/android/settings/cA;

    .line 441
    iput-boolean p2, p0, Lcom/android/settings/Q;->dA:Z

    .line 442
    return-void
.end method


# virtual methods
.method public T()Lcom/android/settings/cA;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/Q;->dz:Lcom/android/settings/cA;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/Q;->dz:Lcom/android/settings/cA;

    const-string v1, "total_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/cA;->dy:J

    .line 451
    iget-object v0, p0, Lcom/android/settings/Q;->dz:Lcom/android/settings/cA;

    const-string v1, "avail_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/cA;->FH:J

    .line 452
    iget-object v0, p0, Lcom/android/settings/Q;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    return-void
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/settings/Q;->dA:Z

    return v0
.end method
