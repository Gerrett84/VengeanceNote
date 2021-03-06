.class public Lmiui/app/screenelement/elements/VariableElement;
.super Lmiui/app/screenelement/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lmiui/app/screenelement/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "c"
    .parameter "root"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    .line 45
    const-string v2, "string"

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    .line 46
    const-string v2, "const"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    .line 47
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 53
    :goto_0
    const-string v2, "VariableAnimation"

    invoke-static {p1, v2}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 54
    .local v0, ani:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    new-instance v2, Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-direct {v2, v0, p2}, Lmiui/app/screenelement/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #ani:Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    return-void

    .line 50
    :cond_1
    new-instance v2, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0

    .line 57
    .restart local v0       #ani:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method private update()V
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    .line 93
    .local v1, var:Lmiui/app/screenelement/data/Variables;
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mIsStringType:Z

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v3, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/app/screenelement/data/Expression;->evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    .local v0, value:Ljava/lang/Double;
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/VariableAnimation;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 104
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v2, v0}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/data/Expression;->isNull(Lmiui/app/screenelement/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lmiui/app/screenelement/elements/VariableElement;->mExpression:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/VariableAnimation;->init()V

    .line 81
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 82
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 67
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->reset(J)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 88
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mAnimation:Lmiui/app/screenelement/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/VariableAnimation;->tick(J)V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0}, Lmiui/app/screenelement/elements/VariableElement;->update()V

    .line 76
    :cond_1
    return-void
.end method
