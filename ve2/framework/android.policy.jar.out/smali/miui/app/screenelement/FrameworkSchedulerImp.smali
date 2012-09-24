.class public Lmiui/app/screenelement/FrameworkSchedulerImp;
.super Ljava/lang/Object;
.source "FrameworkSchedulerImp.java"

# interfaces
.implements Lmiui/app/screenelement/IFrameworkScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;
    }
.end annotation


# instance fields
.field private mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

.field private mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

.field private mShouldUpdate:Z


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {v0}, Lmiui/app/screenelement/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    .line 29
    iput-object p1, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    .line 30
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->doRender()V

    .line 85
    return-void
.end method

.method public doneUpdate()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mShouldUpdate:Z

    .line 45
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->finish()V

    .line 60
    return-void
.end method

.method public getFramerate()F
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mFramerateTokenList:Lmiui/app/screenelement/FramerateTokenList;

    invoke-virtual {v0}, Lmiui/app/screenelement/FramerateTokenList;->getFramerate()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->init()V

    .line 65
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->pause()V

    .line 70
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mShouldUpdate:Z

    .line 55
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->resume()V

    .line 75
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mShouldUpdate:Z

    return v0
.end method

.method public updateFramerate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/app/screenelement/FrameworkSchedulerImp;->mListener:Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;

    invoke-interface {v0, p1, p2}, Lmiui/app/screenelement/FrameworkSchedulerImp$Listener;->updateFramerate(J)V

    .line 80
    return-void
.end method
