.class public Lmiui/app/screenelement/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mFrameworkSchedulerImp:Lmiui/app/screenelement/FrameworkSchedulerImp;

.field private mPaused:Z

.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mThread:Lmiui/app/screenelement/RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 28
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 30
    iput-object p2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 31
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/app/screenelement/ScreenElementRoot;->setView(Landroid/view/View;)V

    .line 32
    new-instance v0, Lmiui/app/screenelement/FrameworkSchedulerImp;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/FrameworkSchedulerImp;-><init>(Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;)V

    iput-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mFrameworkSchedulerImp:Lmiui/app/screenelement/FrameworkSchedulerImp;

    .line 33
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mFrameworkSchedulerImp:Lmiui/app/screenelement/FrameworkSchedulerImp;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenContext;->setFrameworkScheduler(Lmiui/app/screenelement/IFrameworkScheduler;)V

    .line 34
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->setStop()V

    .line 39
    return-void
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->postInvalidate()V

    .line 133
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 143
    return-void
.end method

.method public final getRoot()Lmiui/app/screenelement/ScreenElementRoot;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    .line 138
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 99
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lmiui/app/screenelement/RenderThread;

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mFrameworkSchedulerImp:Lmiui/app/screenelement/FrameworkSchedulerImp;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/RenderThread;-><init>(Lmiui/app/screenelement/IFrameworkScheduler;Z)V

    iput-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    .line 101
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    iget-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 102
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0}, Lmiui/app/screenelement/RenderThread;->start()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 109
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 75
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->getRenderSignal()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :try_start_1
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v4, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v4}, Lmiui/app/screenelement/RenderThread;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 82
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->doneRender()V

    .line 84
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 84
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 90
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 119
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 120
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 113
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mPaused:Z

    .line 125
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mThread:Lmiui/app/screenelement/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 57
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)V

    .line 61
    iget-object v1, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 71
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 67
    const-string v1, "MiAdvancedView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->pause()V

    .line 148
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->resume()V

    .line 153
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    if-nez p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    goto :goto_0
.end method

.method public updateFramerate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 157
    iget-object v0, p0, Lmiui/app/screenelement/MiAdvancedView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->updateFramerate(J)V

    .line 158
    return-void
.end method
