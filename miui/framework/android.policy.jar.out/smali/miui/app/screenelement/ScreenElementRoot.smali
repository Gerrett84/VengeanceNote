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

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field protected mNormalFrameRate:F

.field private mScale:F

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
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1, v0}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 47
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 51
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 96
    iput-object p0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 97
    new-instance v0, Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VariableUpdaterManager;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

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
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 105
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "root"

    .prologue
    .line 326
    const-string v6, "useVariableUpdater"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, updater:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {p0, v6}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    .line 339
    :cond_0
    return-void

    .line 330
    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, updaters:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 332
    .local v3, s:Ljava/lang/String;
    const-string v6, "DateTime"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    new-instance v7, Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    iget-object v8, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-direct {v7, v8}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 331
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_3
    const-string v6, "Battery"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    new-instance v7, Lmiui/app/screenelement/data/BatteryVariableUpdater;

    iget-object v8, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-direct {v7, v8}, Lmiui/app/screenelement/data/BatteryVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    goto :goto_1
.end method

.method private resolveResource(Lorg/w3c/dom/Element;I)V
    .locals 12
    .parameter "root"
    .parameter "screenWidth"

    .prologue
    .line 343
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    if-eq p2, v11, :cond_1

    .line 345
    const-string v11, "extraResourcesScreenWidth"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, extraResources:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 347
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, resources:[Ljava/lang/String;
    const v7, 0x7fffffff

    .line 349
    .local v7, minDiff:I
    const/4 v1, 0x0

    .line 350
    .local v1, closestSw:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v0, v5

    .line 352
    .local v10, swStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 353
    .local v9, sw:I
    sub-int v11, p2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 354
    .local v3, diff:I
    if-ge v3, v7, :cond_2

    .line 355
    move v7, v3

    .line 356
    move v1, v9

    .line 357
    if-nez v3, :cond_2

    .line 364
    .end local v3           #diff:I
    .end local v9           #sw:I
    .end local v10           #swStr:Ljava/lang/String;
    :cond_0
    iget v11, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    sub-int v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 365
    .local v2, defaultDiff:I
    if-lt v2, v7, :cond_1

    .line 366
    iget-object v11, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v11, v1}, Lmiui/app/screenelement/ScreenContext;->setExtraResource(I)V

    .line 370
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestSw:I
    .end local v2           #defaultDiff:I
    .end local v4           #extraResources:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :cond_1
    return-void

    .line 360
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestSw:I
    .restart local v4       #extraResources:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #minDiff:I
    .restart local v8       #resources:[Ljava/lang/String;
    .restart local v10       #swStr:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 350
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFramerateController(Lmiui/app/screenelement/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 506
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method protected createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;
    .locals 1
    .parameter "root"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lmiui/app/screenelement/elements/ElementGroup;

    invoke-direct {v0, p1, p2, p0}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    return-object v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 108
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/app/screenelement/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->doneRender()V

    .line 515
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 144
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/app/screenelement/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 137
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
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
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    .line 445
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->finish()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    .line 449
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->finish()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    .line 453
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->finish()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    .line 457
    :cond_4
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 458
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/SoundManager;->release()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    .line 462
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 417
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/high16 v0, 0x3f80

    .line 421
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 386
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 167
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->init()V

    .line 171
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->init()V

    .line 175
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->init()V

    .line 179
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 182
    :cond_3
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestFramerate(F)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 184
    return-void
.end method

.method public load()Z
    .locals 21

    .prologue
    .line 264
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, lan:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 266
    .local v8, root:Lorg/w3c/dom/Element;
    if-nez v8, :cond_0

    .line 267
    const/16 v17, 0x0

    .line 320
    .end local v7           #lan:Ljava/lang/String;
    .end local v8           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v17

    .line 270
    .restart local v7       #lan:Ljava/lang/String;
    .restart local v8       #root:Lorg/w3c/dom/Element;
    :cond_0
    const-string v17, "frameRate"

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    .line 272
    const-string v17, "screenWidth"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v15

    .line 273
    .local v15, width:I
    if-lez v15, :cond_3

    .end local v15           #width:I
    :goto_1
    move-object/from16 v0, p0

    iput v15, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/app/screenelement/ScreenContext;->setResourceDensity(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lmiui/app/screenelement/ScreenElementRoot;->createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    .line 278
    const-string v17, "VariableBinders"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 280
    .local v3, binders:Lorg/w3c/dom/Element;
    new-instance v17, Lmiui/app/screenelement/data/VariableBinderManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lmiui/app/screenelement/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    .line 282
    const-string v17, "ExternalCommands"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 283
    .local v4, commands:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_1

    .line 284
    new-instance v17, Lmiui/app/screenelement/ExternalCommandManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v4, v1, v2}, Lmiui/app/screenelement/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 289
    .local v16, wm:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 291
    .local v5, display:Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 292
    .local v14, tmpW:I
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 293
    .local v13, tmpH:I
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 294
    .local v10, rotation:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_4

    :cond_2
    const/4 v9, 0x1

    .line 295
    .local v9, rotated:Z
    :goto_2
    if-eqz v9, :cond_5

    move v12, v13

    .line 296
    .local v12, screenWidth:I
    :goto_3
    if-eqz v9, :cond_6

    move v11, v14

    .line 297
    .local v11, screenHeight:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 298
    int-to-float v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 303
    :goto_5
    const-string v17, "ScreenElementRoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "init target density: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/app/screenelement/ScreenContext;->setTargetDensity(I)V

    .line 305
    const-string v17, "raw_screen_width"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v18, v0

    int-to-double v0, v12

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 306
    const-string v17, "raw_screen_height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v18, v0

    int-to-double v0, v11

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 307
    const-string v17, "screen_width"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 309
    const-string v17, "screen_height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v18, v0

    int-to-float v0, v11

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lmiui/app/screenelement/ScreenElementRoot;->resolveResource(Lorg/w3c/dom/Element;I)V

    .line 313
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmiui/app/screenelement/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v17

    goto/16 :goto_0

    .line 273
    .end local v3           #binders:Lorg/w3c/dom/Element;
    .end local v4           #commands:Lorg/w3c/dom/Element;
    .end local v5           #display:Landroid/view/Display;
    .end local v9           #rotated:Z
    .end local v10           #rotation:I
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    .end local v13           #tmpH:I
    .end local v14           #tmpW:I
    .end local v16           #wm:Landroid/view/WindowManager;
    .restart local v15       #width:I
    :cond_3
    const/16 v15, 0x1e0

    goto/16 :goto_1

    .line 294
    .end local v15           #width:I
    .restart local v3       #binders:Lorg/w3c/dom/Element;
    .restart local v4       #commands:Lorg/w3c/dom/Element;
    .restart local v5       #display:Landroid/view/Display;
    .restart local v10       #rotation:I
    .restart local v13       #tmpH:I
    .restart local v14       #tmpW:I
    .restart local v16       #wm:Landroid/view/WindowManager;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .restart local v9       #rotated:Z
    :cond_5
    move v12, v14

    .line 295
    goto/16 :goto_3

    .restart local v12       #screenWidth:I
    :cond_6
    move v11, v13

    .line 296
    goto/16 :goto_4

    .line 301
    .restart local v11       #screenHeight:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/ScreenElementRoot;->mScale:F
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    .line 315
    .end local v3           #binders:Lorg/w3c/dom/Element;
    .end local v4           #commands:Lorg/w3c/dom/Element;
    .end local v5           #display:Landroid/view/Display;
    .end local v7           #lan:Ljava/lang/String;
    .end local v8           #root:Lorg/w3c/dom/Element;
    .end local v9           #rotated:Z
    .end local v10           #rotation:I
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    .end local v13           #tmpH:I
    .end local v14           #tmpW:I
    .end local v16           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v6

    .line 316
    .local v6, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v6}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 320
    .end local v6           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 317
    :catch_1
    move-exception v6

    .line 318
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 112
    new-instance v0, Lmiui/app/screenelement/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/DateTimeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    .line 113
    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 503
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 491
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ExternalCommandManager;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v3, :cond_0

    .line 255
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 235
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 237
    .local v2, y:F
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 238
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 253
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 254
    .local v0, ret:Z
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 241
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginX:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 242
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginY:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 243
    iget-object v3, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTouchBeginTime:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 245
    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 250
    :pswitch_2
    iput-boolean v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    .line 196
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 199
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->pause()V

    .line 202
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->pause()V

    .line 205
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->pause()V

    .line 207
    :cond_3
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Lmiui/app/screenelement/SoundManager;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/SoundManager;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mSoundManager:Lmiui/app/screenelement/SoundManager;

    .line 380
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
    .line 156
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 159
    :cond_0
    iget v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 160
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->reset(J)V

    .line 189
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->reset(J)V

    .line 192
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    .line 211
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 214
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableBinderManager;->resume()V

    .line 217
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mExternalCommandManager:Lmiui/app/screenelement/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ExternalCommandManager;->resume()V

    .line 220
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->resume()V

    .line 225
    :cond_3
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    .line 226
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 129
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 130
    return-void
.end method

.method public setRenderController(Lmiui/app/screenelement/RendererController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 518
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->setRenderController(Lmiui/app/screenelement/RendererController;)V

    .line 519
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "targetDensity"

    .prologue
    .line 411
    iput p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mTargetDensity:I

    .line 412
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenContext;->setTargetDensity(I)V

    .line 413
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 394
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p1, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    .line 395
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public tick(J)V
    .locals 5
    .parameter "currentTime"

    .prologue
    .line 117
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/app/screenelement/data/VariableUpdaterManager;

    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/data/VariableUpdaterManager;->tick(J)V

    .line 118
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->tick(J)V

    .line 122
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 123
    .local v0, d:Ljava/lang/Double;
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 126
    :cond_1
    return-void

    .line 124
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(JLandroid/graphics/Canvas;)V
    .locals 0
    .parameter "currentTime"
    .parameter "c"

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 149
    invoke-virtual {p0, p3}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p0}, Lmiui/app/screenelement/ScreenElementRoot;->doneRender()V

    .line 152
    return-void
.end method

.method public updateFramerate(J)V
    .locals 11
    .parameter "time"

    .prologue
    const-wide/16 v9, 0x0

    .line 466
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

    .line 467
    .local v0, f:Lmiui/app/screenelement/elements/FramerateController;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/FramerateController;->updateFramerate(J)V

    goto :goto_0

    .line 471
    .end local v0           #f:Lmiui/app/screenelement/elements/FramerateController;
    :cond_0
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-nez v6, :cond_1

    .line 472
    new-instance v6, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v7, "frame_rate"

    iget-object v8, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v8, v8, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v6, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 473
    iput-wide v9, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 476
    :cond_1
    iget-wide v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_3

    .line 477
    iput-wide p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    .line 488
    :cond_2
    :goto_1
    return-void

    .line 479
    :cond_3
    iget-wide v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    sub-long v4, p1, v6

    .line 480
    .local v4, t:J
    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 481
    iget v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long v1, v6, v4

    .line 482
    .local v1, frameRate:J
    iget-object v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v7, v1

    invoke-virtual {v6, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 483
    const/4 v6, 0x0

    iput v6, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrames:I

    .line 484
    iput-wide p1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
