.class public Lmiui/app/screenelement/ScreenElementRoot;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/app/screenelement/InteractiveListener;


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final RES_DENSITY:I = 0xf0

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"


# instance fields
.field private DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field protected mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

.field private mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

.field private mFinished:Z

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field protected mNormalFrameRate:F

.field private mScale:F

.field private mScreenHeight:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mScreenWidth:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mSoundManager:Lmiui/app/screenelement/SoundManager;

.field private mTargetDensity:I

.field private mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 44
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 48
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 94
    new-instance v0, Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VariableUpdaterManager;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    .line 96
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "screen_width"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 97
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "screen_height"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 98
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 99
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 100
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 101
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 102
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 103
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 104
    return-void
.end method


# virtual methods
.method public addFramerateController(Lmiui/app/screenelement/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 445
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method protected createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;
    .locals 2
    .parameter "root"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doneUpdate()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->doneUpdate()V

    .line 454
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 131
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 385
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    .line 389
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->finish()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    .line 393
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->finish()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    .line 397
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->finish()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    .line 401
    :cond_4
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 402
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/SoundManager;->release()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    .line 406
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 361
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/high16 v0, 0x3f80

    .line 365
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 331
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 148
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 151
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->init()V

    .line 154
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->init()V

    .line 157
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->init()V

    .line 160
    :cond_3
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestFramerate(F)V

    .line 161
    return-void
.end method

.method public load()Z
    .locals 31

    .prologue
    .line 235
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, lan:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 237
    .local v17, root:Lorg/w3c/dom/Element;
    if-nez v17, :cond_0

    .line 238
    const/16 v28, 0x0

    .line 314
    .end local v13           #lan:Ljava/lang/String;
    .end local v17           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v28

    .line 241
    .restart local v13       #lan:Ljava/lang/String;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    :cond_0
    const-string v28, "frameRate"

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    move/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    .line 243
    const-string v28, "screenWidth"

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v26

    .line 244
    .local v26, width:I
    if-lez v26, :cond_5

    .end local v26           #width:I
    :goto_1
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v28, v0

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lmiui/app/screenelement/ScreenContext;->setResourceDensity(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/ScreenElementRoot;->createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    .line 249
    const-string v28, "VariableBinders"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 251
    .local v4, binders:Lorg/w3c/dom/Element;
    new-instance v28, Lmiui/app/screenelement/data/VariableBinderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Lmiui/app/screenelement/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    .line 253
    const-string v28, "ExternalCommands"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 254
    .local v6, commands:Lorg/w3c/dom/Element;
    if-eqz v6, :cond_1

    .line 255
    new-instance v28, Lmiui/app/screenelement/ExternalCommandManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v1}, Lmiui/app/screenelement/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    .line 260
    .local v27, wm:Landroid/view/WindowManager;
    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 262
    .local v9, display:Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v25

    .line 263
    .local v25, tmpW:I
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v24

    .line 264
    .local v24, tmpH:I
    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v19

    .line 265
    .local v19, rotation:I
    const/16 v28, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0x3

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v18, 0x1

    .line 266
    .local v18, rotated:Z
    :goto_2
    if-eqz v18, :cond_7

    move/from16 v21, v24

    .line 267
    .local v21, screenWidth:I
    :goto_3
    if-eqz v18, :cond_8

    move/from16 v20, v25

    .line 268
    .local v20, screenHeight:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v28, v0

    if-nez v28, :cond_9

    .line 269
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 274
    :goto_5
    const-string v28, "ScreenElementRoot"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "init target density: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lmiui/app/screenelement/ScreenContext;->setTargetDensity(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenWidth:Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-object/from16 v28, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScreenHeight:Lmiui/app/screenelement/util/IndexedNumberVariable;

    move-object/from16 v28, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 282
    const-string v28, "extraResourcesScreenWidth"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, extraResources:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 284
    const-string v28, ","

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 285
    .local v16, resources:[Ljava/lang/String;
    const v15, 0x7fffffff

    .line 286
    .local v15, minDiff:I
    const/4 v5, 0x0

    .line 287
    .local v5, closestSw:I
    move-object/from16 v3, v16

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_6
    if-ge v12, v14, :cond_3

    aget-object v23, v3, v12
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    .local v23, swStr:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 290
    .local v22, sw:I
    sub-int v28, v21, v22

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    .line 291
    .local v8, diff:I
    if-ge v8, v15, :cond_a

    .line 292
    move v15, v8

    .line 293
    move/from16 v5, v22

    .line 294
    if-nez v8, :cond_a

    .line 301
    .end local v8           #diff:I
    .end local v22           #sw:I
    .end local v23           #swStr:Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v28, v0

    sub-int v28, v21, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 302
    .local v7, defaultDiff:I
    if-lt v7, v15, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lmiui/app/screenelement/ScreenContext;->setExtraResource(I)V

    .line 308
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #closestSw:I
    .end local v7           #defaultDiff:I
    .end local v11           #extraResources:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #minDiff:I
    .end local v16           #resources:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v28

    goto/16 :goto_0

    .line 244
    .end local v4           #binders:Lorg/w3c/dom/Element;
    .end local v6           #commands:Lorg/w3c/dom/Element;
    .end local v9           #display:Landroid/view/Display;
    .end local v18           #rotated:Z
    .end local v19           #rotation:I
    .end local v20           #screenHeight:I
    .end local v21           #screenWidth:I
    .end local v24           #tmpH:I
    .end local v25           #tmpW:I
    .end local v27           #wm:Landroid/view/WindowManager;
    .restart local v26       #width:I
    :cond_5
    const/16 v26, 0x1e0

    goto/16 :goto_1

    .line 265
    .end local v26           #width:I
    .restart local v4       #binders:Lorg/w3c/dom/Element;
    .restart local v6       #commands:Lorg/w3c/dom/Element;
    .restart local v9       #display:Landroid/view/Display;
    .restart local v19       #rotation:I
    .restart local v24       #tmpH:I
    .restart local v25       #tmpW:I
    .restart local v27       #wm:Landroid/view/WindowManager;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v18       #rotated:Z
    :cond_7
    move/from16 v21, v25

    .line 266
    goto/16 :goto_3

    .restart local v21       #screenWidth:I
    :cond_8
    move/from16 v20, v24

    .line 267
    goto/16 :goto_4

    .line 272
    .restart local v20       #screenHeight:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F
    :try_end_2
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 309
    .end local v4           #binders:Lorg/w3c/dom/Element;
    .end local v6           #commands:Lorg/w3c/dom/Element;
    .end local v9           #display:Landroid/view/Display;
    .end local v13           #lan:Ljava/lang/String;
    .end local v17           #root:Lorg/w3c/dom/Element;
    .end local v18           #rotated:Z
    .end local v19           #rotation:I
    .end local v20           #screenHeight:I
    .end local v21           #screenWidth:I
    .end local v24           #tmpH:I
    .end local v25           #tmpW:I
    .end local v27           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v10

    .line 310
    .local v10, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v10}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 314
    .end local v10           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_7
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 297
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #binders:Lorg/w3c/dom/Element;
    .restart local v5       #closestSw:I
    .restart local v6       #commands:Lorg/w3c/dom/Element;
    .restart local v9       #display:Landroid/view/Display;
    .restart local v11       #extraResources:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #lan:Ljava/lang/String;
    .restart local v14       #len$:I
    .restart local v15       #minDiff:I
    .restart local v16       #resources:[Ljava/lang/String;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    .restart local v18       #rotated:Z
    .restart local v19       #rotation:I
    .restart local v20       #screenHeight:I
    .restart local v21       #screenWidth:I
    .restart local v23       #swStr:Ljava/lang/String;
    .restart local v24       #tmpH:I
    .restart local v25       #tmpW:I
    .restart local v27       #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v28

    .line 287
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 311
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #binders:Lorg/w3c/dom/Element;
    .end local v5           #closestSw:I
    .end local v6           #commands:Lorg/w3c/dom/Element;
    .end local v9           #display:Landroid/view/Display;
    .end local v11           #extraResources:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #lan:Ljava/lang/String;
    .end local v14           #len$:I
    .end local v15           #minDiff:I
    .end local v16           #resources:[Ljava/lang/String;
    .end local v17           #root:Lorg/w3c/dom/Element;
    .end local v18           #rotated:Z
    .end local v19           #rotation:I
    .end local v20           #screenHeight:I
    .end local v21           #screenWidth:I
    .end local v23           #swStr:Ljava/lang/String;
    .end local v24           #tmpH:I
    .end local v25           #tmpW:I
    .end local v27           #wm:Landroid/view/WindowManager;
    :catch_2
    move-exception v10

    .line 312
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 111
    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 112
    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 442
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 435
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ExternalCommandManager;->onCommand(Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 207
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 212
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v0

    .line 215
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 217
    .local v1, y:F
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 218
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 230
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 222
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 223
    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    .line 173
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 176
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->pause()V

    .line 179
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->pause()V

    .line 182
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->pause()V

    .line 184
    :cond_3
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    if-nez v0, :cond_2

    .line 323
    new-instance v0, Lmiui/app/screenelement/SoundManager;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/SoundManager;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    .line 325
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/app/screenelement/SoundManager;->playSound(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 142
    :cond_0
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 143
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    .line 166
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 169
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    .line 188
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 191
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->resume()V

    .line 194
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->resume()V

    .line 197
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->resume()V

    .line 202
    :cond_3
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    .line 203
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 123
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 124
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "targetDensity"

    .prologue
    .line 356
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 357
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 339
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p1, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    .line 340
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/data/VariableUpdaterManager;->tick(J)V

    .line 117
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->tick(J)V

    .line 120
    :cond_0
    return-void
.end method

.method public updateFramerate(J)V
    .locals 11
    .parameter "time"

    .prologue
    const-wide/16 v9, 0x0

    .line 410
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/FramerateController;

    .line 411
    .local v0, f:Lmiui/app/screenelement/elements/FramerateController;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/FramerateController;->updateFramerate(J)V

    goto :goto_0

    .line 415
    .end local v0           #f:Lmiui/app/screenelement/elements/FramerateController;
    :cond_0
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v6, :cond_1

    .line 416
    new-instance v6, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v7, "frame_rate"

    iget-object v8, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v8, v8, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v6, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 417
    iput-wide v9, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 420
    :cond_1
    iget-wide v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_3

    .line 421
    iput-wide p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 432
    :cond_2
    :goto_1
    return-void

    .line 423
    :cond_3
    iget-wide v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    sub-long v4, p1, v6

    .line 424
    .local v4, t:J
    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 425
    iget v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long v1, v6, v4

    .line 426
    .local v1, frameRate:J
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v7, v1

    invoke-virtual {v6, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 427
    const/4 v6, 0x0

    iput v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 428
    iput-wide p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
