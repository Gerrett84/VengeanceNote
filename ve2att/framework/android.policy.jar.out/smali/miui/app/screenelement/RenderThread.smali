.class public Lmiui/app/screenelement/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/app/screenelement/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/RendererController;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 27
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/RenderThread;->addRendererController(Lmiui/app/screenelement/RendererController;)V

    .line 29
    return-void
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 245
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 249
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 250
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->finish()V

    goto :goto_1

    .line 252
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doInit()V
    .locals 6

    .prologue
    .line 181
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 185
    .local v1, currentTime:J
    iget-object v5, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 186
    :try_start_0
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 187
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/RendererController;->setLastUpdateTime(J)V

    .line 188
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->init()V

    goto :goto_1

    .line 190
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doPause()V
    .locals 4

    .prologue
    .line 206
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 211
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->pause()V

    goto :goto_1

    .line 213
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doResume()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 221
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 222
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->resume()V

    goto :goto_1

    .line 224
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doUpdateFramerate(J)Z
    .locals 5
    .parameter "time"

    .prologue
    .line 229
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    .line 233
    .local v0, allPaused:Z
    iget-object v4, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 234
    :try_start_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/RendererController;

    .line 235
    .local v1, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v1}, Lmiui/app/screenelement/RendererController;->isSelfPaused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/RendererController;->updateFramerate(J)V

    .line 237
    const/4 v0, 0x0

    goto :goto_1

    .line 240
    .end local v1           #c:Lmiui/app/screenelement/RendererController;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static globalThread()Lmiui/app/screenelement/RenderThread;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_1

    .line 40
    sget-object v1, Lmiui/app/screenelement/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lmiui/app/screenelement/RenderThread;

    invoke-direct {v0}, Lmiui/app/screenelement/RenderThread;-><init>()V

    sput-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lmiui/app/screenelement/RenderThread;->sGlobalThread:Lmiui/app/screenelement/RenderThread;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postInit()V
    .locals 4

    .prologue
    .line 194
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 198
    :try_start_0
    iget-object v2, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 199
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->doRender()V

    .line 200
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->requestUpdate()V

    goto :goto_1

    .line 202
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sleepForFramerate(F)V
    .locals 3
    .parameter "framerate"

    .prologue
    .line 165
    const/high16 v2, 0x4248

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    const-wide/16 v0, 0x32

    .line 171
    .local v0, sleepTime:J
    const/high16 v2, 0x4120

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 172
    const/high16 v2, 0x43fa

    div-float/2addr v2, p1

    float-to-long v0, v2

    .line 175
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Lmiui/app/screenelement/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 51
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/RendererController;->setRenderThread(Lmiui/app/screenelement/RenderThread;)V

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 57
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/app/screenelement/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 61
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/RendererController;->setRenderThread(Lmiui/app/screenelement/RenderThread;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f80

    .line 87
    const-string v10, "RenderThread"

    const-string v11, "RenderThread started"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doInit()V

    .line 92
    const/4 v10, 0x1

    iput-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mStarted:Z

    .line 93
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->postInit()V

    .line 94
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    if-nez v10, :cond_3

    .line 95
    iget-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v10, :cond_2

    .line 96
    iget-object v11, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :try_start_1
    iget-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    if-eqz v10, :cond_1

    .line 98
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doPause()V

    .line 99
    const-string v10, "RenderThread"

    const-string v12, "RenderThread paused, waiting for signal"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->waiteForResume()V

    .line 101
    const-string v10, "RenderThread"

    const-string v12, "RenderThread resumed"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doResume()V

    .line 104
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_2
    :try_start_2
    iget-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v10, :cond_4

    .line 159
    :cond_3
    :goto_1
    invoke-direct {p0}, Lmiui/app/screenelement/RenderThread;->doFinish()V

    .line 160
    const-string v10, "RenderThread"

    const-string v11, "RenderThread stopped"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 104
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string v10, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 111
    .local v1, currentTime:J
    invoke-direct {p0, v1, v2}, Lmiui/app/screenelement/RenderThread;->doUpdateFramerate(J)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    const/4 v10, 0x1

    iput-boolean v10, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 154
    .end local v1           #currentTime:J
    :catch_1
    move-exception v3

    .line 155
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 156
    const-string v10, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #currentTime:J
    :cond_5
    const/4 v9, 0x0

    .line 117
    .local v9, maxFramerate:F
    const/4 v8, 0x0

    .line 118
    .local v8, issuedUpdate:Z
    :try_start_6
    iget-object v10, p0, Lmiui/app/screenelement/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/RendererController;

    .line 119
    .local v0, c:Lmiui/app/screenelement/RendererController;
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->isSelfPaused()Z

    move-result v10

    if-nez v10, :cond_6

    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, isFramerateDive:Z
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->getFramerate()F

    move-result v5

    .line 124
    .local v5, framerate:F
    cmpl-float v10, v5, v9

    if-lez v10, :cond_7

    .line 125
    move v9, v5

    .line 126
    :cond_7
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->getCurFramerate()F

    move-result v10

    cmpl-float v10, v10, v5

    if-eqz v10, :cond_9

    .line 132
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->getCurFramerate()F

    move-result v10

    cmpl-float v10, v10, v14

    if-lez v10, :cond_8

    cmpg-float v10, v5, v14

    if-gez v10, :cond_8

    .line 133
    const/4 v7, 0x1

    .line 135
    :cond_8
    invoke-virtual {v0, v5}, Lmiui/app/screenelement/RendererController;->setCurFramerate(F)V

    .line 136
    const-string v10, "RenderThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "framerate changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x447a

    div-float/2addr v10, v5

    :goto_3
    float-to-int v4, v10

    .line 138
    .local v4, frameTime:I
    invoke-virtual {v0, v4}, Lmiui/app/screenelement/RendererController;->setFrameTime(I)V

    .line 140
    .end local v4           #frameTime:I
    :cond_9
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->pendingRender()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->getLastUpdateTime()J

    move-result-wide v10

    sub-long v10, v1, v10

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->getFrameTime()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_a

    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->shouldUpdate()Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v7, :cond_6

    .line 142
    :cond_a
    invoke-virtual {v0}, Lmiui/app/screenelement/RendererController;->doRender()V

    .line 143
    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/RendererController;->setLastUpdateTime(J)V

    .line 144
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 137
    :cond_b
    const/high16 v10, 0x4f00

    goto :goto_3

    .line 148
    .end local v0           #c:Lmiui/app/screenelement/RendererController;
    .end local v5           #framerate:F
    .end local v7           #isFramerateDive:Z
    :cond_c
    if-nez v8, :cond_0

    .line 149
    invoke-direct {p0, v9}, Lmiui/app/screenelement/RenderThread;->sleepForFramerate(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 72
    iget-object v1, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iput-boolean p1, p0, Lmiui/app/screenelement/RenderThread;->mPaused:Z

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lmiui/app/screenelement/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 77
    :cond_0
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

.method public setStop()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RenderThread;->mStop:Z

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 83
    return-void
.end method
