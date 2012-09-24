.class Lcom/android/settings/cS;
.super Landroid/os/Handler;
.source "MiuiDeviceInfoSettings.java"


# instance fields
.field final synthetic dB:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 484
    :goto_0
    return-void

    .line 467
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v0

    iput-wide v1, v0, Lcom/android/settings/cA;->FH:J

    .line 468
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v0

    iput-wide v1, v0, Lcom/android/settings/cA;->dy:J

    .line 469
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v0

    iput-wide v1, v0, Lcom/android/settings/cA;->FH:J

    .line 470
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v0

    iput-wide v1, v0, Lcom/android/settings/cA;->dy:J

    .line 471
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->d(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Q;

    .line 472
    invoke-virtual {v0}, Lcom/android/settings/Q;->isEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/cA;->dy:J

    invoke-virtual {v0}, Lcom/android/settings/Q;->T()Lcom/android/settings/cA;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/cA;->dy:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/cA;->dy:J

    .line 474
    iget-object v2, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/cA;->FH:J

    invoke-virtual {v0}, Lcom/android/settings/Q;->T()Lcom/android/settings/cA;

    move-result-object v0

    iget-wide v5, v0, Lcom/android/settings/cA;->FH:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/cA;->FH:J

    goto :goto_1

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/cA;->dy:J

    invoke-virtual {v0}, Lcom/android/settings/Q;->T()Lcom/android/settings/cA;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/settings/cA;->dy:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/cA;->dy:J

    .line 477
    iget-object v2, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/cA;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/settings/cA;->FH:J

    invoke-virtual {v0}, Lcom/android/settings/Q;->T()Lcom/android/settings/cA;

    move-result-object v0

    iget-wide v5, v0, Lcom/android/settings/cA;->FH:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/cA;->FH:J

    goto :goto_1

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cS;->dB:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->e(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    goto/16 :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
