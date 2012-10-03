.class public Lmiui/app/screenelement/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final MAML_PREFERENCES:Ljava/lang/String; = "MamlPreferences"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field public final mContext:Landroid/content/Context;

.field private mController:Lmiui/app/screenelement/IFrameworkScheduler;

.field public final mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

.field private mGotApplicationContext:Z

.field public mHandler:Landroid/os/Handler;

.field public final mResourceManager:Lmiui/app/screenelement/ResourceManager;

.field public mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field public mVariables:Lmiui/app/screenelement/data/Variables;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V
    .locals 2
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 39
    new-instance v0, Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    new-instance v1, Lmiui/app/screenelement/elements/ScreenElementFactory;

    invoke-direct {v1}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager$ResourceLoader;Lmiui/app/screenelement/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"

    .prologue
    .line 43
    new-instance v0, Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    .line 35
    new-instance v0, Lmiui/app/screenelement/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/app/screenelement/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0}, Lmiui/app/screenelement/data/Variables;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    .line 49
    iput-object p3, p0, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

    .line 50
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v0, p1}, Lmiui/app/screenelement/IFrameworkScheduler;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    goto :goto_0
.end method

.method public doneUpdate()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v0}, Lmiui/app/screenelement/IFrameworkScheduler;->doneUpdate()V

    .line 94
    :cond_0
    return-void
.end method

.method public getFrameworkController()Lmiui/app/screenelement/IFrameworkScheduler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    return-object v0
.end method

.method public getRawContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mApplicationContext:Landroid/content/Context;

    .line 71
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenContext;->mGotApplicationContext:Z

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mApplicationContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenContext;->mGotApplicationContext:Z

    .line 67
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mApplicationContext:Landroid/content/Context;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v0}, Lmiui/app/screenelement/IFrameworkScheduler;->requestUpdate()V

    .line 83
    :cond_0
    return-void
.end method

.method public setExtraResource(I)V
    .locals 1
    .parameter "sw"

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setExtraResource(I)V

    .line 78
    return-void
.end method

.method public setFrameworkScheduler(Lmiui/app/screenelement/IFrameworkScheduler;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    .line 98
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setResourceDensity(I)V

    .line 54
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->setTargetDensity(I)V

    .line 58
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mController:Lmiui/app/screenelement/IFrameworkScheduler;

    invoke-interface {v0}, Lmiui/app/screenelement/IFrameworkScheduler;->shouldUpdate()Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
