.class public Lmiui/app/screenelement/elements/ElementGroup;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 28
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    .line 140
    .local v1, ele:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 149
    :goto_0
    return-object v3

    .line 143
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 144
    .local v0, e:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 146
    goto :goto_0

    .line 149
    .end local v0           #e:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 117
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->finish()V

    .line 118
    iget-object v3, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ScreenElement;

    .line 121
    .local v1, ele:Lmiui/app/screenelement/elements/ScreenElement;
    :try_start_0
    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockScreen_ElementGroup"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 52
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 53
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->init()V

    goto :goto_0

    .line 55
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const-string v5, "LockScreen_ElementGroup"

    const-string v6, "node is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v5, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v6, "node is null"

    invoke-direct {v5, v6}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 35
    :cond_0
    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v5, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/elements/ScreenElementFactory;

    .line 36
    .local v1, factory:Lmiui/app/screenelement/elements/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 37
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 38
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 39
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 40
    .local v3, item:Lorg/w3c/dom/Element;
    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v1, v3, v5}, Lmiui/app/screenelement/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v4

    .line 41
    .local v4, newElement:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v4, p0}, Lmiui/app/screenelement/elements/ScreenElement;->setParent(Lmiui/app/screenelement/elements/ElementGroup;)V

    .line 43
    iget-object v5, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v3           #item:Lorg/w3c/dom/Element;
    .end local v4           #newElement:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 106
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    .line 110
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 111
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 155
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 156
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->onVisibilityChange(Z)V

    goto :goto_0

    .line 158
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->pause()V

    .line 67
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 68
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->pause()V

    goto :goto_0

    .line 70
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 81
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getX()F

    move-result v3

    .line 85
    .local v3, x:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ElementGroup;->getY()F

    move-result v4

    .line 86
    .local v4, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 87
    .local v2, rs:I
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget-object v5, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 89
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 91
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->reset()V

    .line 60
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 61
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    goto :goto_0

    .line 63
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->resume()V

    .line 74
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 75
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->resume()V

    goto :goto_0

    .line 77
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 132
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 133
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 135
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 99
    iget-object v2, p0, Lmiui/app/screenelement/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ScreenElement;

    .line 100
    .local v0, ele:Lmiui/app/screenelement/elements/ScreenElement;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/elements/ScreenElement;->tick(J)V

    goto :goto_0

    .line 102
    .end local v0           #ele:Lmiui/app/screenelement/elements/ScreenElement;
    :cond_0
    return-void
.end method
