.class public abstract Lmiui/app/screenelement/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/Expression$1;,
        Lmiui/app/screenelement/data/Expression$FunctionExpression;,
        Lmiui/app/screenelement/data/Expression$BinaryExpression;,
        Lmiui/app/screenelement/data/Expression$UnaryExpression;,
        Lmiui/app/screenelement/data/Expression$StringExpression;,
        Lmiui/app/screenelement/data/Expression$NumberExpression;,
        Lmiui/app/screenelement/data/Expression$StringVariableExpression;,
        Lmiui/app/screenelement/data/Expression$NumberVariableExpression;,
        Lmiui/app/screenelement/data/Expression$VariableExpression;,
        Lmiui/app/screenelement/data/Expression$Tokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static mOperatorsPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 774
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*/%"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/screenelement/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 419
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lmiui/app/screenelement/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lmiui/app/screenelement/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lmiui/app/screenelement/data/Expression;->isFunctionChar(C)Z

    move-result v0

    return v0
.end method

.method public static build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;
    .locals 15
    .parameter "exp"

    .prologue
    const/4 v12, 0x0

    .line 668
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v1, v12

    .line 753
    :cond_0
    :goto_0
    return-object v1

    .line 675
    :cond_1
    new-instance v9, Lmiui/app/screenelement/data/Expression$Tokenizer;

    invoke-direct {v9, p0}, Lmiui/app/screenelement/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 676
    .local v9, tk:Lmiui/app/screenelement/data/Expression$Tokenizer;
    const/4 v10, 0x0

    .line 677
    .local v10, token:Lmiui/app/screenelement/data/Expression$Tokenizer$Token;
    const/4 v8, 0x0

    .line 678
    .local v8, preToken:Lmiui/app/screenelement/data/Expression$Tokenizer$Token;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 679
    .local v7, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/data/Expression$Tokenizer$Token;>;"
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 680
    .local v3, expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/data/Expression;>;"
    const/4 v4, 0x0

    .line 681
    .local v4, minus:Z
    :goto_1
    invoke-virtual {v9}, Lmiui/app/screenelement/data/Expression$Tokenizer;->getToken()Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 685
    sget-object v11, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 740
    :goto_2
    move-object v8, v10

    goto :goto_1

    .line 691
    :pswitch_0
    const/4 v5, 0x0

    .line 692
    .local v5, newExp:Lmiui/app/screenelement/data/Expression;
    sget-object v11, Lmiui/app/screenelement/data/Expression$1;->$SwitchMap$miui$app$screenelement$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_1

    :cond_2
    move-object v6, v5

    .line 713
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    .local v6, newExp:Lmiui/app/screenelement/data/Expression;
    :goto_3
    if-eqz v4, :cond_a

    .line 714
    new-instance v5, Lmiui/app/screenelement/data/Expression$UnaryExpression;

    const-string v11, "-"

    invoke-direct {v5, v6, v11}, Lmiui/app/screenelement/data/Expression$UnaryExpression;-><init>(Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V

    .line 716
    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 694
    :pswitch_1
    new-instance v5, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;

    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    iget-object v11, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/app/screenelement/data/Expression$NumberVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    move-object v6, v5

    .line 695
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v6       #newExp:Lmiui/app/screenelement/data/Expression;
    goto :goto_3

    .line 697
    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    :pswitch_2
    new-instance v5, Lmiui/app/screenelement/data/Expression$StringVariableExpression;

    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    iget-object v11, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/app/screenelement/data/Expression$StringVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    move-object v6, v5

    .line 698
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v6       #newExp:Lmiui/app/screenelement/data/Expression;
    goto :goto_3

    .line 700
    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    :pswitch_3
    new-instance v5, Lmiui/app/screenelement/data/Expression$NumberExpression;

    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const-string v11, "-"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lmiui/app/screenelement/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    const/4 v4, 0x0

    move-object v6, v5

    .line 702
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v6       #newExp:Lmiui/app/screenelement/data/Expression;
    goto :goto_3

    .line 700
    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    :cond_3
    const-string v11, ""

    goto :goto_5

    .line 704
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    :pswitch_4
    new-instance v5, Lmiui/app/screenelement/data/Expression$StringExpression;

    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    iget-object v11, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/app/screenelement/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    move-object v6, v5

    .line 705
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v6       #newExp:Lmiui/app/screenelement/data/Expression;
    goto :goto_3

    .line 707
    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    :pswitch_5
    invoke-static {v10, v7}, Lmiui/app/screenelement/data/Expression;->buildBracket(Lmiui/app/screenelement/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/app/screenelement/data/Expression;

    move-result-object v5

    .line 708
    if-nez v5, :cond_2

    move-object v1, v12

    .line 709
    goto/16 :goto_0

    .line 719
    .end local v5           #newExp:Lmiui/app/screenelement/data/Expression;
    :pswitch_6
    iget-object v11, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v8, :cond_4

    iget-object v11, v8, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    sget-object v13, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    if-ne v11, v13, :cond_6

    .line 721
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 728
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/Expression;

    .line 729
    .local v1, exp2:Lmiui/app/screenelement/data/Expression;
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression;

    .line 730
    .local v0, exp1:Lmiui/app/screenelement/data/Expression;
    new-instance v13, Lmiui/app/screenelement/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v13, v0, v1, v11}, Lmiui/app/screenelement/data/Expression$BinaryExpression;-><init>(Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .end local v0           #exp1:Lmiui/app/screenelement/data/Expression;
    .end local v1           #exp2:Lmiui/app/screenelement/data/Expression;
    :cond_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v13, v10, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v13, v11}, Lmiui/app/screenelement/data/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_7

    .line 724
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    const/4 v13, 0x2

    if-ge v11, v13, :cond_5

    .line 725
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid operation position:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 726
    goto/16 :goto_0

    .line 732
    :cond_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const/4 v4, 0x0

    .line 735
    goto/16 :goto_2

    .line 737
    :pswitch_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 743
    :cond_8
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-eq v11, v13, :cond_9

    .line 744
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid expression:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 745
    goto/16 :goto_0

    .line 748
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/data/Expression;

    .line 749
    .restart local v1       #exp2:Lmiui/app/screenelement/data/Expression;
    :goto_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 750
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/data/Expression;

    .line 751
    .restart local v0       #exp1:Lmiui/app/screenelement/data/Expression;
    new-instance v2, Lmiui/app/screenelement/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v11}, Lmiui/app/screenelement/data/Expression$BinaryExpression;-><init>(Lmiui/app/screenelement/data/Expression;Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V

    .end local v1           #exp2:Lmiui/app/screenelement/data/Expression;
    .local v2, exp2:Lmiui/app/screenelement/data/Expression;
    move-object v1, v2

    .line 752
    .end local v2           #exp2:Lmiui/app/screenelement/data/Expression;
    .restart local v1       #exp2:Lmiui/app/screenelement/data/Expression;
    goto :goto_6

    .end local v0           #exp1:Lmiui/app/screenelement/data/Expression;
    .end local v1           #exp2:Lmiui/app/screenelement/data/Expression;
    .restart local v6       #newExp:Lmiui/app/screenelement/data/Expression;
    :cond_a
    move-object v5, v6

    .end local v6           #newExp:Lmiui/app/screenelement/data/Expression;
    .restart local v5       #newExp:Lmiui/app/screenelement/data/Expression;
    goto/16 :goto_4

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 692
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static buildBracket(Lmiui/app/screenelement/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/app/screenelement/data/Expression;
    .locals 5
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/screenelement/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/app/screenelement/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/app/screenelement/data/Expression;"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/data/Expression$Tokenizer$Token;>;"
    iget-object v2, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    .line 761
    .local v1, newExps:[Lmiui/app/screenelement/data/Expression;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    sget-object v3, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    if-ne v2, v3, :cond_0

    .line 762
    new-instance v3, Lmiui/app/screenelement/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lmiui/app/screenelement/data/Expression$FunctionExpression;-><init>([Lmiui/app/screenelement/data/Expression;Ljava/lang/String;)V

    move-object v2, v3

    .line 771
    :goto_0
    return-object v2

    .line 763
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 764
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 770
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :cond_1
    const-string v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lmiui/app/screenelement/data/Expression;
    .locals 7
    .parameter "exp"

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, bracketCount:I
    const/4 v5, 0x0

    .line 647
    .local v5, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/screenelement/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 649
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 650
    .local v1, c:C
    if-nez v0, :cond_0

    .line 651
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_0

    .line 652
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v5, v3, 0x1

    .line 656
    :cond_0
    const/16 v6, 0x28

    if-ne v1, v6, :cond_2

    .line 657
    add-int/lit8 v0, v0, 0x1

    .line 648
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 658
    :cond_2
    const/16 v6, 0x29

    if-ne v1, v6, :cond_1

    .line 659
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 662
    .end local v1           #c:C
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Lmiui/app/screenelement/data/Expression;

    .line 664
    .local v4, ret:[Lmiui/app/screenelement/data/Expression;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lmiui/app/screenelement/data/Expression;

    return-object v6
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "op1"
    .parameter "op2"

    .prologue
    .line 779
    invoke-static {p0}, Lmiui/app/screenelement/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lmiui/app/screenelement/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "op"

    .prologue
    .line 783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/app/screenelement/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 784
    sget-object v1, Lmiui/app/screenelement/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 787
    .end local v0           #i:I
    :goto_1
    return v0

    .line 783
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 636
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 640
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 632
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract evaluate(Lmiui/app/screenelement/data/Variables;)D
.end method

.method public evaluateStr(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 797
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(Lmiui/app/screenelement/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method
