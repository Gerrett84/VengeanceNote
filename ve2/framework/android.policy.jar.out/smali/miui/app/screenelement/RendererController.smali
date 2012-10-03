.class public Lmiui/app/screenelement/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/RendererController$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:I

.field private mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/app/screenelement/RendererController$Listener;

.field private mLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mPendingRender:Z

.field private mRenderThread:Lmiui/app/screenelement/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0}, Lmiui/app/screenelement/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    .line 44
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 47
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    .line 48
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 116
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->doRender()V

    .line 117
    return-void
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    .line 157
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurFramerate()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    return v0
.end method

.method public getFrameTime()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    return-wide v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v1}, Lmiui/app/screenelement/RendererController$Listener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSelfPaused()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 96
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 98
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pendingRender()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPendingRender:Z

    return v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    .line 72
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    .line 104
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 106
    :cond_0
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 134
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->pause()V

    .line 136
    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lmiui/app/screenelement/RendererController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mSelfPaused:Z

    .line 142
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mPaused:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/RendererController$Listener;->resume()V

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 149
    :cond_1
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCurFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 59
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mCurFramerate:F

    .line 60
    return-void
.end method

.method public setFrameTime(I)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 164
    iput p1, p0, Lmiui/app/screenelement/RendererController;->mFrameTime:I

    .line 165
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 128
    iput-wide p1, p0, Lmiui/app/screenelement/RendererController;->mLastUpdateSystemTime:J

    .line 129
    return-void
.end method

.method public setRenderThread(Lmiui/app/screenelement/RenderThread;)V
    .locals 0
    .parameter "renderThread"

    .prologue
    .line 160
    iput-object p1, p0, Lmiui/app/screenelement/RendererController;->mRenderThread:Lmiui/app/screenelement/RenderThread;

    .line 161
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lmiui/app/screenelement/RendererController;->mShouldUpdate:Z

    return v0
.end method

.method public updateFramerate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/app/screenelement/RendererController;->mListener:Lmiui/app/screenelement/RendererController$Listener;

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/RendererController$Listener;->updateFramerate(J)V

    .line 111
    return-void
.end method
