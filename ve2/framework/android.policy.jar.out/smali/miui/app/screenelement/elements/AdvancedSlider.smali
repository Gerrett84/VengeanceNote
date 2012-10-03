.class public Lmiui/app/screenelement/elements/AdvancedSlider;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/AdvancedSlider$1;,
        Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;,
        Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;,
        Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;,
        Lmiui/app/screenelement/elements/AdvancedSlider$Position;,
        Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;,
        Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;,
        Lmiui/app/screenelement/elements/AdvancedSlider$State;,
        Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;,
        Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

.field private mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveDistVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMoveXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMoveYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;

.field private mPressed:Z

.field private mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

.field private mStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mUnlockingHide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmiui/app/screenelement/elements/AdvancedSlider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 4
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    .line 267
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "state"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 269
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "move_x"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 270
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "move_y"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 271
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "move_dist"

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveDistVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 274
    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/elements/AdvancedSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/screenelement/elements/AdvancedSlider;)Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/screenelement/elements/AdvancedSlider;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$500(Lmiui/app/screenelement/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/app/screenelement/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$700(Lmiui/app/screenelement/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 1084
    iput-boolean v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z

    .line 1085
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v3

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1086
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    sget-object v3, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    .line 1087
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1088
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    sget-object v2, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1091
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v2, :cond_1

    .line 1092
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1093
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1094
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveDistVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1095
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1097
    :cond_1
    iput-boolean v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    .line 1098
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->requestUpdate()V

    .line 1099
    return-void
.end method

.method private checkEndPoint(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Z
    .locals 6
    .parameter "point"
    .parameter "endPoint"

    .prologue
    .line 1035
    const/4 v2, 0x0

    .line 1036
    .local v2, reached:Z
    iget-wide v3, p1, Lmiui/app/screenelement/util/Utils$Point;->x:D

    double-to-float v3, v3

    iget-wide v4, p1, Lmiui/app/screenelement/util/Utils$Point;->y:D

    double-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->touched(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1037
    invoke-virtual {p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->getState()Lmiui/app/screenelement/elements/AdvancedSlider$State;

    move-result-object v3

    sget-object v4, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    if-eq v3, v4, :cond_2

    .line 1038
    sget-object v3, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    .line 1039
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1040
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    if-eq v0, p2, :cond_0

    .line 1041
    sget-object v3, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1043
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v3, p2, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 1045
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    .line 1049
    :goto_1
    return v2

    .line 1047
    :cond_3
    sget-object v3, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_1
.end method

.method private checkTouch(FF)Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 974
    const v3, 0x7f7fffff

    .line 975
    .local v3, minDist:F
    const/4 v4, 0x0

    .line 976
    .local v4, point:Lmiui/app/screenelement/util/Utils$Point;
    new-instance v7, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v8}, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V

    .line 978
    .local v7, result:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    iget-object v9, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 979
    .local v1, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    #calls: Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/app/screenelement/util/Utils$Point;
    invoke-static {v1, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->access$1000(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;FF)Lmiui/app/screenelement/util/Utils$Point;

    move-result-object v5

    .line 980
    .local v5, pt:Lmiui/app/screenelement/util/Utils$Point;
    invoke-virtual {v1, v5, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lmiui/app/screenelement/util/Utils$Point;FF)F

    move-result v0

    .line 981
    .local v0, di:F
    cmpg-float v9, v0, v3

    if-gez v9, :cond_0

    .line 982
    move v3, v0

    .line 983
    move-object v4, v5

    .line 984
    iput-object v1, v7, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 987
    .end local v0           #di:F
    .end local v1           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    .end local v5           #pt:Lmiui/app/screenelement/util/Utils$Point;
    :cond_1
    const/4 v6, 0x0

    .line 990
    .local v6, reached:Z
    const v9, 0x7f7fffff

    cmpg-float v9, v3, v9

    if-gez v9, :cond_6

    .line 991
    iget-wide v8, v4, Lmiui/app/screenelement/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v9, v4, Lmiui/app/screenelement/util/Utils$Point;->y:D

    double-to-float v9, v9

    invoke-direct {p0, v8, v9}, Lmiui/app/screenelement/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 994
    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 996
    iget-object v8, v7, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Lmiui/app/screenelement/elements/AdvancedSlider;->checkEndPoint(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 1013
    :cond_2
    :goto_1
    iget-object v9, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_7

    sget-object v8, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    :goto_2
    invoke-virtual {v9, v8}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    .line 1014
    iget-boolean v8, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v8, :cond_3

    .line 1015
    iget-object v10, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v6, :cond_8

    const-wide/high16 v8, 0x4000

    :goto_3
    invoke-virtual {v10, v8, v9}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1017
    :cond_3
    iput-boolean v6, v7, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 1018
    .end local v7           #result:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    :goto_4
    return-object v7

    .line 999
    .restart local v7       #result:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    :cond_4
    iget-object v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1000
    .restart local v1       #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    #getter for: Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1002
    invoke-direct {p0, v4, v1}, Lmiui/app/screenelement/elements/AdvancedSlider;->checkEndPoint(Lmiui/app/screenelement/util/Utils$Point;Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1003
    iput-object v1, v7, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 1009
    .end local v1           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_6
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 1010
    goto :goto_4

    .line 1013
    :cond_7
    sget-object v8, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    goto :goto_2

    .line 1015
    :cond_8
    const-wide/high16 v8, 0x3ff0

    goto :goto_3
.end method

.method private doLaunch(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Z
    .locals 2
    .parameter "endPoint"

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1055
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p1, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->perform()Landroid/content/Intent;

    move-result-object v0

    .line 1059
    :cond_0
    iget-object v1, p1, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 295
    const-string v3, "EndPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 296
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 297
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 298
    .local v1, item:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    invoke-direct {v4, p0, v1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v1           #item:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "no end point for unlocker!"

    invoke-static {v3, v4}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 301
    return-void

    .line 300
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v1, "StartPoint"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 289
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Lmiui/app/screenelement/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 290
    new-instance v1, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-direct {v1, p0, v0}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    .line 291
    return-void

    .line 289
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveStartPoint(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1022
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1024
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v6, :cond_0

    .line 1025
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    invoke-virtual {p0, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/app/screenelement/data/Expression;

    iget-object v9, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v8, v9}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    sub-double v2, v6, v8

    .line 1026
    .local v2, move_x:D
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    invoke-virtual {p0, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Lmiui/app/screenelement/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/app/screenelement/data/Expression;

    iget-object v9, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v8, v9}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 1027
    .local v4, move_y:D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1028
    .local v0, move_dist:D
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveXVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v6, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1029
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveYVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1030
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoveDistVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v6, v0, v1}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 1032
    .end local v0           #move_dist:D
    .end local v2           #move_x:D
    .end local v4           #move_y:D
    :cond_0
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 1139
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 1140
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 1153
    :goto_0
    return-object v3

    .line 1143
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 1145
    goto :goto_0

    .line 1147
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1148
    .local v1, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v1, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 1149
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 1150
    goto :goto_0

    .line 1153
    .end local v1           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 856
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->finish()V

    .line 857
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->finish()V

    .line 858
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 859
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->finish()V

    goto :goto_0

    .line 861
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 846
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    .line 847
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 848
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->init()V

    .line 849
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 850
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->init()V

    goto :goto_0

    .line 852
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1102
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mUnlockingHide:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 277
    sget-boolean v0, Lmiui/app/screenelement/elements/AdvancedSlider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 283
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 284
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 285
    return-void
.end method

.method protected onCancel()V
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->haptic(I)V

    .line 1068
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 1078
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)V

    .line 1080
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1072
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->haptic(I)V

    .line 1073
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->haptic(I)V

    .line 1064
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 895
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 899
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 901
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 903
    :pswitch_0
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->touched(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    iput-boolean v9, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    .line 905
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v6

    sub-float v6, v4, v6

    iput v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 906
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v6

    sub-float v6, v5, v6

    iput v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 907
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    sget-object v7, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    .line 908
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 909
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    sget-object v6, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v0, v6}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->setState(Lmiui/app/screenelement/elements/AdvancedSlider$State;)V

    goto :goto_1

    .line 911
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_2
    iput-boolean v9, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mPressed:Z

    .line 915
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v6, :cond_3

    .line 916
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStateVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-wide/high16 v7, 0x3ff0

    invoke-virtual {v6, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 918
    :cond_3
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v6}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 919
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onStart()V

    goto :goto_0

    .line 923
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    if-eqz v6, :cond_0

    .line 924
    invoke-direct {p0, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->checkTouch(FF)Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 925
    .local v3, ret:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_4

    .line 926
    iget-object v6, v3, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    iput-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 928
    :cond_4
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    iget-object v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)V

    .line 929
    iput-boolean v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    .line 930
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onCancel()V

    goto :goto_0

    .line 935
    .end local v3           #ret:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_2
    const/4 v2, 0x0

    .line 936
    .local v2, launched:Z
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    if-eqz v6, :cond_0

    .line 937
    const-string v6, "LockScreen_AdvancedSlider"

    const-string v7, "unlock touch up"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0, v4, v5}, Lmiui/app/screenelement/elements/AdvancedSlider;->checkTouch(FF)Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 939
    .restart local v3       #ret:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_6

    .line 940
    iget-boolean v6, v3, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v6, :cond_5

    .line 941
    iget-object v6, v3, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v6}, Lmiui/app/screenelement/elements/AdvancedSlider;->doLaunch(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    .line 943
    :cond_5
    iget-object v6, v3, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    iput-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 946
    :cond_6
    iput-boolean v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    .line 947
    if-nez v2, :cond_0

    .line 948
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    iget-object v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)V

    .line 949
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onCancel()V

    goto/16 :goto_0

    .line 954
    .end local v2           #launched:Z
    .end local v3           #ret:Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_3
    iget-boolean v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    if-eqz v6, :cond_0

    .line 955
    iget-object v6, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v6, v7}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;)V

    .line 956
    iput-object v7, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 957
    iput-boolean v8, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mMoving:Z

    .line 958
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->onCancel()V

    goto/16 :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 865
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    .line 867
    invoke-direct {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->cancelMoving()V

    .line 869
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->pause()V

    .line 870
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 871
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->pause()V

    goto :goto_0

    .line 873
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1107
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1111
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1113
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 886
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    .line 887
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->reset()V

    .line 888
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 889
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->reset()V

    goto :goto_0

    .line 891
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 877
    invoke-super {p0}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    .line 878
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->resume()V

    .line 879
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 880
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->resume()V

    goto :goto_0

    .line 882
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public setOnLaunchListener(Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 304
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;

    .line 305
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 1131
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 1132
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1133
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1135
    .end local v0           #ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 1118
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    .line 1119
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1128
    :cond_0
    return-void

    .line 1122
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$BounceAnimationController;->tick(J)V

    .line 1124
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mStartPoint:Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$StartPoint;->tick(J)V

    .line 1125
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

    .line 1126
    .local v0, ep:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;->tick(J)V

    goto :goto_0
.end method
