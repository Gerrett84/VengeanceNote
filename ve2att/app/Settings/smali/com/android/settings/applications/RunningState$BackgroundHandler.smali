.class final Lcom/android/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# instance fields
.field final synthetic IQ:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->a(Lcom/android/settings/applications/RunningState;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v0, :cond_0

    .line 156
    monitor-exit v1

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->CV:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->tc:Landroid/app/ActivityManager;

    invoke-static {v0, v2, v3}, Lcom/android/settings/applications/RunningState;->a(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->IQ:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 164
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
