.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# instance fields
.field private Cm:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->Cm:Ljava/lang/ref/WeakReference;

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->Cm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/Status;

    .line 141
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 147
    :sswitch_0
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->cu()V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->a(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->a(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 156
    :sswitch_2
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->fz()V

    .line 157
    const/16 v0, 0x1f4

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method
