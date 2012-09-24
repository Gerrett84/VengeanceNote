.class Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;
.super Lmiui/app/screenelement/CommandTrigger$Property;
.source "CommandTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/CommandTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityProperty"
.end annotation


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z

.field final synthetic this$0:Lmiui/app/screenelement/CommandTrigger;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/CommandTrigger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 55
    iput-object p1, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->this$0:Lmiui/app/screenelement/CommandTrigger;

    .line 56
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/CommandTrigger$Property;-><init>(Lmiui/app/screenelement/CommandTrigger;Ljava/lang/String;)V

    .line 57
    const-string v0, "toggle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iput-boolean v1, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->mIsToggle:Z

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iput-boolean v1, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "false"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->mIsShow:Z

    goto :goto_0
.end method


# virtual methods
.method public perform()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->getTarget()Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    .line 68
    .local v0, tar:Lmiui/app/screenelement/elements/ScreenElement;
    if-eqz v0, :cond_0

    .line 69
    iget-boolean v1, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->mIsToggle:Z

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v1, p0, Lmiui/app/screenelement/CommandTrigger$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    goto :goto_1
.end method
