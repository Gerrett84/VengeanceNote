.class public Lmiui/app/screenelement/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;,
        Lmiui/app/screenelement/CommandTrigger$Property;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

.field private mActionString:Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field private pro:Lmiui/app/screenelement/CommandTrigger$Property;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "context"
    .parameter "ele"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 80
    invoke-direct {p0, p2}, Lmiui/app/screenelement/CommandTrigger;->load(Lorg/w3c/dom/Element;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/CommandTrigger;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter "ele"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_7

    .line 93
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, target:Ljava/lang/String;
    const-string v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, property:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, value:Ljava/lang/String;
    const-string v8, "visibility"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 98
    new-instance v8, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;

    invoke-direct {v8, p0, v6, v7}, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;-><init>(Lmiui/app/screenelement/CommandTrigger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->pro:Lmiui/app/screenelement/CommandTrigger$Property;

    .line 101
    :cond_0
    const-string v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 104
    const-string v8, "down"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 105
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    .line 130
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 131
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 132
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 133
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 134
    .local v4, item:Lorg/w3c/dom/Element;
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-static {v8, v4}, Lmiui/app/screenelement/ActionCommand;->create(Lmiui/app/screenelement/ScreenContext;Lorg/w3c/dom/Element;)Lmiui/app/screenelement/ActionCommand;

    move-result-object v2

    .line 135
    .local v2, command:Lmiui/app/screenelement/ActionCommand;
    if-eqz v2, :cond_2

    .line 136
    iget-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v2           #command:Lmiui/app/screenelement/ActionCommand;
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :cond_3
    const-string v8, "up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 108
    :cond_4
    const-string v8, "double"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 109
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 110
    :cond_5
    const-string v8, "long"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 111
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 113
    :cond_6
    sget-object v8, Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 141
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #property:Ljava/lang/String;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 161
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->finish()V

    goto :goto_0

    .line 163
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public getAction()Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mAction:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 155
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    goto :goto_0

    .line 157
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 167
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->pause()V

    goto :goto_0

    .line 169
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method

.method public perform()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->pro:Lmiui/app/screenelement/CommandTrigger$Property;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->pro:Lmiui/app/screenelement/CommandTrigger$Property;

    invoke-virtual {v2}, Lmiui/app/screenelement/CommandTrigger$Property;->perform()V

    .line 148
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 149
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    goto :goto_0

    .line 151
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 172
    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ActionCommand;

    .line 173
    .local v0, cmd:Lmiui/app/screenelement/ActionCommand;
    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->resume()V

    goto :goto_0

    .line 175
    .end local v0           #cmd:Lmiui/app/screenelement/ActionCommand;
    :cond_0
    return-void
.end method
