.class abstract Lmiui/app/screenelement/CommandTrigger$Property;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/CommandTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Property"
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/String;

.field protected mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

.field final synthetic this$0:Lmiui/app/screenelement/CommandTrigger;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/CommandTrigger;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 31
    iput-object p1, p0, Lmiui/app/screenelement/CommandTrigger$Property;->this$0:Lmiui/app/screenelement/CommandTrigger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTarget:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected getTarget()Lmiui/app/screenelement/elements/ScreenElement;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->this$0:Lmiui/app/screenelement/CommandTrigger;

    #getter for: Lmiui/app/screenelement/CommandTrigger;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v0}, Lmiui/app/screenelement/CommandTrigger;->access$000(Lmiui/app/screenelement/CommandTrigger;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    .line 38
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "CommandTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find trigger target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTarget:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/CommandTrigger$Property;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    return-object v0
.end method

.method public abstract perform()V
.end method
