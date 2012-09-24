.class Lcom/android/settings/X;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# instance fields
.field final synthetic fc:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/X;->fc:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/X;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->a(Lcom/android/settings/BatteryInfo;)V

    .line 61
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/X;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
