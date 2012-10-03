.class public Lmiui/app/screenelement/elements/ButtonScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;,
        Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "ele"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method private getCur()Lmiui/app/screenelement/elements/ElementGroup;
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    goto :goto_0
.end method

.method private performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 164
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 165
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->getAction()Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 166
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    goto :goto_0

    .line 168
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2, p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 169
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 251
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 253
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->finish()V

    .line 255
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 256
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    goto :goto_0

    .line 258
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    .line 182
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 183
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 185
    :cond_0
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->init()V

    .line 187
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/CommandTrigger;

    .line 188
    .local v3, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v3}, Lmiui/app/screenelement/CommandTrigger;->init()V

    goto :goto_0

    .line 191
    .end local v3           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v4, :cond_3

    iget-object v4, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    iget-object v4, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v5, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v2

    .line 194
    .local v2, se:Lmiui/app/screenelement/elements/ScreenElement;
    :try_start_0
    check-cast v2, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    .end local v2           #se:Lmiui/app/screenelement/elements/ScreenElement;
    iput-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_3
    :goto_1
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "ButtonScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v6, "ButtonScreenElement"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v6, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v7, "node is null"

    invoke-direct {v6, v7}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :cond_0
    const-string v6, "Normal"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 80
    .local v3, normal:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 81
    new-instance v6, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v7, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v6, v3, v7}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 84
    :cond_1
    const-string v6, "Pressed"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 85
    .local v4, pressed:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 86
    new-instance v6, Lmiui/app/screenelement/elements/ElementGroup;

    iget-object v7, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v6, v4, v7}, Lmiui/app/screenelement/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    .line 90
    :cond_2
    const-string v6, "Triggers"

    invoke-static {p1, v6}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 91
    .local v5, triggers:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_5

    .line 92
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 94
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 95
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 96
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Trigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 93
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_4
    iget-object v6, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    new-instance v7, Lmiui/app/screenelement/CommandTrigger;

    iget-object v8, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v7, v8, v2}, Lmiui/app/screenelement/CommandTrigger;-><init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #i:I
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 107
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 111
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 112
    .local v8, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 116
    iput-boolean v10, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    .line 117
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_2

    .line 118
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 120
    :cond_2
    sget-object v9, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v9, v11

    .line 123
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gtz v9, :cond_4

    .line 124
    iget v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, v7, v9

    .line 125
    .local v0, deltaX:F
    iget v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v8, v9

    .line 126
    .local v1, deltaY:F
    mul-float v9, v0, v0

    mul-float v10, v1, v1

    add-float v2, v9, v10

    .line 127
    .local v2, distanceSquared:F
    iget-object v9, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 128
    .local v3, doubleTapSlop:I
    mul-int v6, v3, v3

    .line 129
    .local v6, slopSquared:I
    int-to-float v9, v6

    cmpg-float v9, v2, v9

    if-gez v9, :cond_4

    .line 130
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_3

    .line 131
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 133
    :cond_3
    sget-object v9, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 136
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v6           #slopSquared:I
    :cond_4
    iput v7, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 137
    iput v8, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 138
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v9, :cond_0

    .line 139
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    goto :goto_0

    .line 143
    .end local v4           #duration:J
    :pswitch_1
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    goto/16 :goto_0

    .line 146
    :pswitch_2
    iget-boolean v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v9, :cond_0

    .line 147
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/elements/ButtonScreenElement;->touched(FF)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 148
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_5

    .line 149
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 151
    :cond_5
    sget-object v9, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/elements/ButtonScreenElement;->performAction(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 153
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v9, :cond_6

    .line 154
    iget-object v9, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 156
    :cond_6
    iput-boolean v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 157
    iput-boolean v11, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTouching:Z

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 210
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 212
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->pause()V

    .line 214
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 215
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    goto :goto_0

    .line 217
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressed:Z

    .line 218
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 232
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getCur()Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    .line 235
    .local v0, cur:Lmiui/app/screenelement/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset()V

    .line 203
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 205
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ElementGroup;->reset()V

    .line 207
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 221
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 223
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ElementGroup;->resume()V

    .line 225
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/CommandTrigger;

    .line 226
    .local v1, tri:Lmiui/app/screenelement/CommandTrigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    goto :goto_0

    .line 228
    .end local v1           #tri:Lmiui/app/screenelement/CommandTrigger;
    :cond_2
    return-void
.end method

.method public setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    .line 72
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lmiui/app/screenelement/elements/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 266
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 242
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getCur()Lmiui/app/screenelement/elements/ElementGroup;

    move-result-object v0

    .line 245
    .local v0, cur:Lmiui/app/screenelement/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ElementGroup;->tick(J)V

    goto :goto_0
.end method

.method public touched(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/app/screenelement/elements/ElementGroup;->getX()F

    move-result v0

    .line 173
    .local v0, parentX:F
    :goto_0
    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lmiui/app/screenelement/elements/ScreenElement;->mParent:Lmiui/app/screenelement/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/app/screenelement/elements/ElementGroup;->getY()F

    move-result v1

    .line 174
    .local v1, parentY:F
    :goto_1
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getX()F

    move-result v2

    .line 175
    .local v2, x0:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getY()F

    move-result v3

    .line 176
    .local v3, y0:F
    add-float v4, v0, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    add-float v4, v0, v2

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    add-float v4, v1, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    add-float v4, v1, v3

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v0           #parentX:F
    .end local v1           #parentY:F
    .end local v2           #x0:F
    .end local v3           #y0:F
    :cond_0
    move v0, v4

    .line 172
    goto :goto_0

    .restart local v0       #parentX:F
    :cond_1
    move v1, v4

    .line 173
    goto :goto_1

    .line 176
    .restart local v1       #parentY:F
    .restart local v2       #x0:F
    .restart local v3       #y0:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
