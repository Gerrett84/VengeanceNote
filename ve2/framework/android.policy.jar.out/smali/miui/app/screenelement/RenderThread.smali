.class public Lmiui/app/screenelement/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"


# instance fields
.field private mAsyncRender:Z

.field private mCurrentTime:J

.field private mLastUpdateSystemTime:J

.field private mPaused:Z

.field private mRenderSignal:Ljava/lang/Object;

.field private mResumeSignal:Ljava/lang/Object;

.field private final mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/IFrameworkScheduler;Z)V
    .locals 1
    .parameter "root"
    .parameter "asyncRender"

    .prologue
    .line 34
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    .line 36
    iput-boolean p2, p0, Lmiui/app/screenelement/RenderThread;->mAsyncRender:Z

    .line 37
    return-void
.end method

.method private doUpdate()V
    .locals 5

    .prologue
    .line 142
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v1}, Lmiui/app/screenelement/IFrameworkScheduler;->doneUpdate()V

    .line 144
    iget-boolean v1, p0, Lmiui/app/screenelement/RenderThread;->mAsyncRender:Z

    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v1}, Lmiui/app/screenelement/IFrameworkScheduler;->doRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :goto_1
    iget-wide v1, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    iput-wide v1, p0, Lmiui/app/screenelement/RenderThread;->mLastUpdateSystemTime:J

    .line 157
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 154
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v1}, Lmiui/app/screenelement/IFrameworkScheduler;->doRender()V

    goto :goto_1
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public doneRender()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    return-wide v0
.end method

.method public getRenderSignal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    return-object v0
.end method

.method public getResumeSignal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 82
    const-string v4, "RenderThread"

    const-string v5, "RenderThread started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, curFramerate:F
    const v2, 0x7fffffff

    .line 87
    .local v2, frameTime:I
    :try_start_0
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->init()V

    .line 89
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    .line 90
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doUpdate()V

    .line 91
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->requestUpdate()V

    .line 92
    :goto_0
    iget-boolean v4, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    if-nez v4, :cond_2

    .line 93
    iget-boolean v4, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v4, :cond_1

    .line 94
    iget-object v5, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :try_start_1
    iget-boolean v4, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->pause()V

    .line 97
    const-string v4, "RenderThread"

    const-string v6, "RenderThread paused, waiting for signal"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->waiteForResume()V

    .line 99
    const-string v4, "RenderThread"

    const-string v6, "RenderThread resumed"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->resume()V

    .line 102
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :cond_1
    :try_start_2
    iget-boolean v4, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_3

    .line 131
    :cond_2
    :goto_1
    :try_start_3
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    :goto_2
    const-string v4, "RenderThread"

    const-string v5, "RenderThread stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 102
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v4, "RenderThread"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    .line 108
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    iget-wide v5, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    invoke-interface {v4, v5, v6}, Lmiui/app/screenelement/IFrameworkScheduler;->updateFramerate(J)V

    .line 109
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->getFramerate()F

    move-result v3

    .line 110
    .local v3, framerate:F
    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    .line 111
    move v0, v3

    .line 112
    const-string v4, "RenderThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "framerate changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x447a

    div-float/2addr v4, v0

    :goto_3
    float-to-int v2, v4

    .line 116
    :cond_4
    iget-wide v4, p0, Lmiui/app/screenelement/RenderThread;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/app/screenelement/RenderThread;->mLastUpdateSystemTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mScheduler:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v4}, Lmiui/app/screenelement/IFrameworkScheduler;->shouldUpdate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 117
    :cond_5
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doUpdate()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 125
    .end local v3           #framerate:F
    :catch_1
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 127
    const-string v4, "RenderThread"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #framerate:F
    :cond_6
    const/high16 v4, 0x4f00

    goto :goto_3

    .line 119
    :cond_7
    const-wide/16 v4, 0xa

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v3           #framerate:F
    :catch_2
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const-string v4, "RenderThread"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 44
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iput-boolean p1, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 49
    :cond_0
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStop()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 56
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRenderSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
