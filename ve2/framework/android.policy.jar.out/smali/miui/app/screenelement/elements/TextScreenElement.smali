.class public Lmiui/app/screenelement/elements/TextScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/TextScreenElement$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x1e

.field private static final PADDING:I = 0x32

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"


# instance fields
.field private mColorParser:Lmiui/app/screenelement/util/ColorParser;

.field private mFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreText:Ljava/lang/String;

.field private mPreviousTime:J

.field private mSizeExpression:Lmiui/app/screenelement/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "c"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 49
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    .line 73
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 74
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_width"

    iget-object v3, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 76
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_height"

    iget-object v3, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 78
    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    .line 208
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 209
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v1, Lmiui/app/screenelement/elements/TextScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mAlign:Lmiui/app/screenelement/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 220
    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 215
    goto :goto_0

    .line 217
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTextWidth()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSizeExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSizeExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/app/screenelement/elements/TextScreenElement;->scale(D)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 201
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    .line 202
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "c"

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getWidth()F

    move-result v14

    .line 109
    .local v14, width:F
    const/4 v1, 0x0

    cmpg-float v1, v14, v1

    if-ltz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v1, v14, v1

    if-lez v1, :cond_2

    .line 110
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    .line 113
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getHeight()F

    move-result v9

    .line 114
    .local v9, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v12

    .line 115
    .local v12, lineHeight:F
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_3

    .line 116
    move v9, v12

    .line 118
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getX()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lmiui/app/screenelement/elements/TextScreenElement;->getLeft(FF)F

    move-result v15

    .line 119
    .local v15, x:F
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getY()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lmiui/app/screenelement/elements/TextScreenElement;->getTop(FF)F

    move-result v16

    .line 121
    .local v16, y:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_4

    .line 124
    const/high16 v1, 0x4120

    sub-float v1, v16, v1

    add-float v2, v15, v14

    add-float v5, v16, v9

    const/high16 v6, 0x41a0

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 127
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    .line 130
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v8, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 132
    .local v3, start:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 133
    .local v4, end:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v13

    .line 134
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    .line 135
    .local v11, left:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v5, v15, v11

    add-float v1, v16, v12

    int-to-float v6, v13

    add-float/2addr v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 119
    .end local v3           #start:I
    .end local v4           #end:I
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #left:F
    .end local v13           #top:I
    .end local v16           #y:F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getY()F

    move-result v16

    goto :goto_1

    .line 138
    .restart local v16       #y:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    const v5, 0x7f7fffff

    cmpl-float v1, v1, v5

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    add-float/2addr v1, v15

    add-float v5, v16, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 141
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 138
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_3
.end method

.method protected getColor()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mColorParser:Lmiui/app/screenelement/util/ColorParser;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/ColorParser;->getColor(Lmiui/app/screenelement/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/TextFormatter;->getFormat(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 147
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->updateTextWidth()V

    .line 149
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v1, "TextScreenElement"

    const-string v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    invoke-static {p1}, Lmiui/app/screenelement/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/TextFormatter;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 87
    invoke-static {p1}, Lmiui/app/screenelement/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/util/ColorParser;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mColorParser:Lmiui/app/screenelement/util/ColorParser;

    .line 88
    const-string v1, "size"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSizeExpression:Lmiui/app/screenelement/data/Expression;

    .line 89
    const-string v1, "marqueeSpeed"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 90
    const-string v1, "bold"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 91
    .local v0, bold:Z
    const-string v1, "spacingMult"

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSpacingMult:F

    .line 92
    const-string v1, "spacingAdd"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSpacingAdd:F

    .line 93
    const-string v1, "multiLine"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMultiLine:Z

    .line 94
    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 96
    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 97
    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 98
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-super {p0, p1}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 227
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getWidth()F

    move-result v2

    .line 228
    .local v2, width:F
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0, v4}, Lmiui/app/screenelement/elements/TextScreenElement;->requestFramerate(F)V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 234
    .local v1, textWidth:I
    if-eqz p1, :cond_1

    iget v3, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v3, :cond_1

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    int-to-float v3, v1

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    .line 235
    const/high16 v3, 0x41f0

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/elements/TextScreenElement;->requestFramerate(F)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, v4}, Lmiui/app/screenelement/elements/TextScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 246
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mFormatter:Lmiui/app/screenelement/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public tick(J)V
    .locals 9
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f7fffff

    const/high16 v5, 0x4248

    .line 153
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 154
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iput-object v2, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->updateTextWidth()V

    .line 165
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getWidth()F

    move-result v8

    .line 166
    .local v8, width:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_7

    iget v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    .line 167
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :cond_3
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    float-to-int v3, v8

    invoke-direct {p0}, Lmiui/app/screenelement/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    iget v5, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSpacingMult:F

    iget v6, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mSpacingAdd:F

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 172
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/app/screenelement/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_0

    .line 176
    :cond_4
    iget v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v0, :cond_0

    .line 177
    iget v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 179
    iput v5, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    .line 186
    :cond_5
    :goto_1
    iput-wide p1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPreviousTime:J

    goto :goto_0

    .line 181
    :cond_6
    iget v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v1, v1

    iget-wide v3, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mPreviousTime:J

    sub-long v3, p1, v3

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    .line 182
    iget v0, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextWidth:F

    sub-float v1, v8, v1

    sub-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 183
    iput v5, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_1

    .line 189
    :cond_7
    iput-object v2, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 190
    iput v1, p0, Lmiui/app/screenelement/elements/TextScreenElement;->mMarqueePos:F

    goto/16 :goto_0
.end method
