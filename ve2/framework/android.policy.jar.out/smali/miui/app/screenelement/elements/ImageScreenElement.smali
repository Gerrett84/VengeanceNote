.class public Lmiui/app/screenelement/elements/ImageScreenElement;
.super Lmiui/app/screenelement/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/elements/ImageScreenElement$1;,
        Lmiui/app/screenelement/elements/ImageScreenElement$pair;,
        Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"


# instance fields
.field private mAngleX:Lmiui/app/screenelement/data/Expression;

.field private mAngleY:Lmiui/app/screenelement/data/Expression;

.field private mAngleZ:Lmiui/app/screenelement/data/Expression;

.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedBitmapName:Ljava/lang/String;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterZ:Lmiui/app/screenelement/data/Expression;

.field private mDesRect:Landroid/graphics/Rect;

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOldDensity:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:Lmiui/app/screenelement/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

.field private mSrcW:Lmiui/app/screenelement/data/Expression;

.field private mSrcX:Lmiui/app/screenelement/data/Expression;

.field private mSrcY:Lmiui/app/screenelement/data/Expression;

.field private mUseVirtualScreen:Z

.field private mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 5
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 90
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 108
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 109
    const-string v1, "antiAlias"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    .line 110
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    const-string v1, "srcX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    .line 113
    const-string v1, "srcY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    .line 114
    const-string v1, "srcW"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    .line 115
    const-string v1, "srcH"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    .line 116
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 119
    :cond_0
    const-string v1, "angleX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    .line 120
    const-string v1, "angleY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    .line 121
    const-string v1, "angleZ"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    .line 122
    const-string v1, "centerZ"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    .line 123
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 125
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 128
    :cond_2
    const-string v1, "useVirtualScreen"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mUseVirtualScreen:Z

    .line 129
    const-string v1, "srcType"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, srcType:Ljava/lang/String;
    const-string v1, "ResourceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 141
    :goto_0
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v1, :cond_3

    .line 142
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, "bmp_width"

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 143
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, "bmp_height"

    iget-object v4, p2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 145
    :cond_3
    return-void

    .line 132
    :cond_4
    iget-boolean v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mUseVirtualScreen:Z

    if-nez v1, :cond_5

    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    :cond_5
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0

    .line 134
    :cond_6
    const-string v1, "ApplicationIcon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0

    .line 138
    :cond_7
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 383
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 160
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 162
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 163
    .local v1, images:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 164
    iget-object v3, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v2, v5}, Lmiui/app/screenelement/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;FF)V
    .locals 47
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 409
    .local v38, rawMask:Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 462
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getX()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v30, v0

    .line 413
    .local v30, maskX:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getY()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 414
    .local v32, maskY:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v29

    .line 415
    .local v29, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result p3

    .line 417
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result p4

    .line 418
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAngle()F

    move-result v17

    .line 419
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 420
    move/from16 v0, p3

    float-to-double v9, v0

    sub-double v30, v30, v9

    .line 421
    move/from16 v0, p4

    float-to-double v9, v0

    sub-double v32, v32, v9

    .line 447
    .end local v17           #angle:F
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v9}, Lmiui/app/screenelement/ScreenElementRoot;->getResourceDensity()I

    move-result v9

    int-to-float v9, v9

    div-float v43, v2, v9

    .line 448
    .local v43, scale:F
    move/from16 v0, v43

    float-to-double v9, v0

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterX()F

    move-result v2

    float-to-double v11, v2

    add-double v11, v11, v30

    mul-double/2addr v9, v11

    double-to-float v2, v9

    move/from16 v0, v43

    float-to-double v9, v0

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterY()F

    move-result v11

    float-to-double v11, v11

    add-double v11, v11, v32

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 450
    move/from16 v0, v43

    float-to-double v9, v0

    mul-double v9, v9, v30

    double-to-int v0, v9

    move/from16 v34, v0

    .line 451
    .local v34, mx:I
    move/from16 v0, v43

    float-to-double v9, v0

    mul-double v9, v9, v32

    double-to-int v0, v9

    move/from16 v35, v0

    .line 452
    .local v35, my:I
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getWidth()F

    move-result v2

    mul-float v2, v2, v43

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v44

    .line 453
    .local v44, width:I
    if-gez v44, :cond_2

    .line 454
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v44

    .line 455
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getHeight()F

    move-result v2

    mul-float v2, v2, v43

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v28

    .line 456
    .local v28, height:I
    if-gez v28, :cond_3

    .line 457
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/graphics/Canvas;)I

    move-result v28

    .line 458
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v9, v34, v44

    add-int v10, v35, v28

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getAlpha()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 423
    .end local v28           #height:I
    .end local v34           #mx:I
    .end local v35           #my:I
    .end local v43           #scale:F
    .end local v44           #width:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v29, v29, v17

    .line 424
    const-wide v36, 0x400921fb54442c46L

    .line 425
    .local v36, pi:D
    move/from16 v0, v17

    float-to-double v9, v0

    const-wide v11, 0x400921fb54442c46L

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double v7, v9, v11

    .line 426
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterX()F

    move-result v2

    float-to-double v3, v2

    .line 427
    .local v3, cx:D
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterY()F

    move-result v2

    float-to-double v5, v2

    .line 428
    .local v5, cy:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 429
    new-instance v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lmiui/app/screenelement/elements/ImageScreenElement$pair;-><init>(Lmiui/app/screenelement/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    .line 431
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 432
    move/from16 v0, p3

    float-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v39, v9, v11

    .line 433
    .local v39, rx:D
    move/from16 v0, p4

    float-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v41, v9, v11

    .line 435
    .local v41, ry:D
    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterX()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getCenterY()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/app/screenelement/animation/AnimatedElement;->getRotationAngle()F

    move-result v2

    float-to-double v14, v2

    const-wide v45, 0x400921fb54442c46L

    mul-double v14, v14, v45

    const-wide v45, 0x4066800000000000L

    div-double v14, v14, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/app/screenelement/elements/ImageScreenElement;->rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double v30, v30, v9

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mRotateXYpair:Lmiui/app/screenelement/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double v32, v32, v9

    .line 438
    sub-double v24, v30, v39

    .line 439
    .local v24, dx:D
    sub-double v26, v32, v41

    .line 440
    .local v26, dy:D
    mul-double v9, v24, v24

    mul-double v11, v26, v26

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 441
    .local v22, dm:D
    div-double v9, v24, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 442
    .local v18, angleB:D
    const-wide/16 v9, 0x0

    cmpl-double v2, v26, v9

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 443
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v30, v22, v9

    .line 444
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v32, v22, v9

    goto/16 :goto_1

    .line 442
    .end local v20           #angleC:D
    :cond_6
    const-wide v9, 0x400921fb54442c46L

    add-double/2addr v9, v7

    sub-double v20, v9, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/app/screenelement/elements/ImageScreenElement$pair;)V
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/app/screenelement/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p7, pr:Lmiui/app/screenelement/elements/ImageScreenElement$pair;,"Lmiui/app/screenelement/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v9, p1, p1

    mul-double v11, p3, p3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 394
    .local v5, cm:D
    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_0

    .line 395
    const-wide v7, 0x400921fb54442c46L

    .line 396
    .local v7, pi:D
    div-double v9, p1, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 397
    .local v1, angle1:D
    const-wide v9, 0x400921fb54442c46L

    sub-double/2addr v9, v1

    sub-double v3, v9, p5

    .line 398
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 399
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    sub-double v9, p3, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 404
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    .end local v7           #pi:D
    :goto_0
    return-void

    .line 401
    :cond_0
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 402
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, p7

    iput-object v9, v0, Lmiui/app/screenelement/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBmpSizeVar(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bmp"

    .prologue
    .line 354
    iget-boolean v0, p0, Lmiui/app/screenelement/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 356
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 361
    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 367
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 376
    :goto_0
    return-object v1

    .line 363
    :pswitch_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    iput-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmapName:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 374
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBmpSizeVar(Landroid/graphics/Bitmap;)V

    .line 376
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 11

    .prologue
    .line 170
    invoke-super {p0}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->init()V

    .line 171
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 172
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 173
    .local v3, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v3}, Lmiui/app/screenelement/animation/AnimatedElement;->init()V

    goto :goto_0

    .line 177
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    :cond_0
    sget-object v7, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    iget-object v8, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcType:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v8}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 205
    :cond_1
    :goto_1
    return-void

    .line 179
    :pswitch_0
    iget-object v7, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v8, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v8}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v5

    .line 180
    .local v5, se:Lmiui/app/screenelement/elements/ScreenElement;
    instance-of v7, v5, Lmiui/app/screenelement/elements/VirtualScreen;

    if-eqz v7, :cond_1

    .line 181
    check-cast v5, Lmiui/app/screenelement/elements/VirtualScreen;

    .end local v5           #se:Lmiui/app/screenelement/elements/ScreenElement;
    iput-object v5, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mVirtualScreen:Lmiui/app/screenelement/elements/VirtualScreen;

    goto :goto_1

    .line 185
    :pswitch_1
    iget-object v7, p0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    invoke-virtual {v7}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, src:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 187
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, name:[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 190
    :try_start_0
    iget-object v7, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v7, v7, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 193
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 194
    iget-object v7, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBmpSizeVar(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    .end local v4           #name:[Ljava/lang/String;
    :cond_3
    const-string v7, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid src of ApplicationIcon type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 154
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 41
    .parameter "c"

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->isVisible()Z

    move-result v36

    if-nez v36, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 217
    .local v9, bmp:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v19

    .line 221
    .local v19, isHardwareAccelerated:Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mOldDensity:I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->shouldScaleBitmap()Z

    move-result v31

    .line 223
    .local v31, shouldScaleBitmap:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lmiui/app/screenelement/ScreenElementRoot;->getTargetDensity()I

    move-result v32

    .line 224
    .local v32, targetDensity:I
    if-eqz v31, :cond_2

    if-eqz v19, :cond_9

    :cond_2
    const/16 v36, 0x0

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAlpha()I

    move-result v5

    .line 226
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getWidth()F

    move-result v7

    .line 228
    .local v7, aniWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getHeight()F

    move-result v6

    .line 229
    .local v6, aniHeight:F
    const/16 v36, 0x0

    cmpl-float v36, v7, v36

    if-eqz v36, :cond_0

    const/16 v36, 0x0

    cmpl-float v36, v6, v36

    if-eqz v36, :cond_0

    .line 232
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v11, v0

    .line 233
    .local v11, bmpWidth:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v10, v0

    .line 234
    .local v10, bmpHeight:F
    if-eqz v31, :cond_3

    .line 235
    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v11, v0

    .line 236
    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v10, v0

    .line 239
    :cond_3
    const/16 v36, 0x0

    cmpg-float v36, v7, v36

    if-gez v36, :cond_a

    move/from16 v33, v11

    .line 240
    .local v33, width:F
    :goto_2
    const/16 v36, 0x0

    cmpg-float v36, v6, v36

    if-gez v36, :cond_b

    move/from16 v17, v10

    .line 242
    .local v17, height:F
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getX()F

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->getLeft(FF)F

    move-result v34

    .line 243
    .local v34, x:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getY()F

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->getTop(FF)F

    move-result v35

    .line 244
    .local v35, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterX()F

    move-result v15

    .line 246
    .local v15, centerX:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getCenterY()F

    move-result v16

    .line 247
    .local v16, centerY:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getAngle()F

    move-result v36

    add-float v37, v34, v15

    add-float v38, v35, v16

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    if-eqz v36, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Camera;->save()V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Camera;->rotateX(F)V

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Camera;->rotateY(F)V

    .line 256
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    if-eqz v36, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mAngleZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCenterZ:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v36 .. v39}, Landroid/graphics/Camera;->translate(FFF)V

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Camera;->restore()V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    move/from16 v0, v34

    neg-float v0, v0

    move/from16 v37, v0

    sub-float v37, v37, v15

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v16

    invoke-virtual/range {v36 .. v38}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    add-float v37, v34, v15

    add-float v38, v35, v16

    invoke-virtual/range {v36 .. v38}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 268
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-nez v36, :cond_11

    .line 269
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v36

    if-eqz v36, :cond_d

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v23

    .line 271
    .local v23, np:Landroid/graphics/NinePatch;
    if-eqz v23, :cond_c

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v38, v0

    add-float v39, v34, v33

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-float v40, v35, v17

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 344
    .end local v23           #np:Landroid/graphics/NinePatch;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mOldDensity:I

    move/from16 v36, v0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .end local v5           #alpha:I
    .end local v6           #aniHeight:F
    .end local v7           #aniWidth:F
    .end local v10           #bmpHeight:F
    .end local v11           #bmpWidth:F
    .end local v15           #centerX:F
    .end local v16           #centerY:F
    .end local v17           #height:F
    .end local v33           #width:F
    .end local v34           #x:F
    .end local v35           #y:F
    :cond_9
    move/from16 v36, v32

    .line 224
    goto/16 :goto_1

    .restart local v5       #alpha:I
    .restart local v6       #aniHeight:F
    .restart local v7       #aniWidth:F
    .restart local v10       #bmpHeight:F
    .restart local v11       #bmpWidth:F
    :cond_a
    move/from16 v33, v7

    .line 239
    goto/16 :goto_2

    .restart local v33       #width:F
    :cond_b
    move/from16 v17, v6

    .line 240
    goto/16 :goto_3

    .line 275
    .restart local v15       #centerX:F
    .restart local v16       #centerY:F
    .restart local v17       #height:F
    .restart local v23       #np:Landroid/graphics/NinePatch;
    .restart local v34       #x:F
    .restart local v35       #y:F
    :cond_c
    const-string v36, "ImageScreenElement"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/animation/AnimatedElement;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lmiui/app/screenelement/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 279
    .end local v23           #np:Landroid/graphics/NinePatch;
    :cond_d
    const/16 v36, 0x0

    cmpl-float v36, v7, v36

    if-gtz v36, :cond_e

    const/16 v36, 0x0

    cmpl-float v36, v6, v36

    if-gtz v36, :cond_e

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    if-eqz v36, :cond_10

    .line 280
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v38, v0

    add-float v39, v34, v33

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-float v40, v35, v17

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    if-eqz v36, :cond_f

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v28, v0

    .line 283
    .local v28, sX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v29, v0

    .line 284
    .local v29, sY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v27, v0

    .line 285
    .local v27, sW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement;->scale(D)F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v26, v0

    .line 286
    .local v26, sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    add-int v37, v28, v27

    add-int v38, v29, v26

    move-object/from16 v0, v36

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    .end local v26           #sH:I
    .end local v27           #sW:I
    .end local v28           #sX:I
    .end local v29           #sY:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 290
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 294
    :cond_11
    const/16 v36, 0x0

    cmpg-float v36, v7, v36

    if-gez v36, :cond_17

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v25, v0

    .line 295
    .local v25, rawWidth:F
    :goto_5
    const/16 v36, 0x0

    cmpg-float v36, v6, v36

    if-gez v36, :cond_19

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v24, v0

    .line 296
    .local v24, rawHeight:F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxWidth()F

    move-result v22

    .line 297
    .local v22, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getMaxHeight()F

    move-result v21

    .line 298
    .local v21, maxHeight:F
    if-eqz v31, :cond_12

    .line 299
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v22

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v21

    .line 302
    :cond_12
    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 303
    move/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 304
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v13, v0

    .line 305
    .local v13, bufferWidth:I
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v12, v0

    .line 306
    .local v12, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    if-eqz v36, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    if-gt v13, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    if-gt v12, v0, :cond_13

    if-nez v19, :cond_14

    .line 308
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move-object/from16 v36, v0

    invoke-direct/range {p0 .. p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v13, v12, v1, v2}, Lmiui/app/screenelement/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 311
    new-instance v36, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-direct/range {v36 .. v37}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 313
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    sget-object v38, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v36 .. v38}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Canvas;->getDensity()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lmiui/app/screenelement/ScreenElementRoot;->getResourceDensity()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v30, v36, v37

    .line 316
    .local v30, scale:F
    const/16 v36, 0x0

    cmpl-float v36, v7, v36

    if-gtz v36, :cond_15

    const/16 v36, 0x0

    cmpl-float v36, v6, v36

    if-gtz v36, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1b

    .line 317
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    mul-float v39, v25, v30

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    mul-float v40, v24, v30

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16

    .line 319
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcX:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v28, v0

    .line 320
    .restart local v28       #sX:I
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcY:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v29, v0

    .line 321
    .restart local v29       #sY:I
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcW:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v27, v0

    .line 322
    .restart local v27       #sW:I
    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcH:Lmiui/app/screenelement/data/Expression;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v26, v0

    .line 323
    .restart local v26       #sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    add-int v37, v28, v27

    add-int v38, v29, v26

    move-object/from16 v0, v36

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    .end local v26           #sH:I
    .end local v27           #sW:I
    .end local v28           #sX:I
    .end local v29           #sY:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 330
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 331
    .local v20, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/app/screenelement/animation/AnimatedElement;FF)V

    goto :goto_8

    .line 294
    .end local v12           #bufferHeight:I
    .end local v13           #bufferWidth:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #mask:Lmiui/app/screenelement/animation/AnimatedElement;
    .end local v21           #maxHeight:F
    .end local v22           #maxWidth:F
    .end local v24           #rawHeight:F
    .end local v25           #rawWidth:F
    .end local v30           #scale:F
    :cond_17
    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v25

    goto/16 :goto_5

    :cond_18
    move/from16 v25, v7

    goto/16 :goto_5

    .line 295
    .restart local v25       #rawWidth:F
    :cond_19
    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmiui/app/screenelement/elements/ImageScreenElement;->descale(F)F

    move-result v24

    goto/16 :goto_6

    :cond_1a
    move/from16 v24, v6

    goto/16 :goto_6

    .line 327
    .restart local v12       #bufferHeight:I
    .restart local v13       #bufferWidth:I
    .restart local v21       #maxHeight:F
    .restart local v22       #maxWidth:F
    .restart local v24       #rawHeight:F
    .restart local v30       #scale:F
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 334
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    if-eqz v19, :cond_1f

    .line 336
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v14, v0

    .line 337
    .local v14, bw:F
    :goto_9
    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v8, v0

    .line 338
    .local v8, bh:F
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v38, v0

    add-float v39, v34, v14

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-float v40, v35, v8

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/graphics/Rect;->set(IIII)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 336
    .end local v8           #bh:F
    .end local v14           #bw:F
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v14, v0

    goto :goto_9

    .line 337
    .restart local v14       #bw:F
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v8, v0

    goto :goto_a

    .line 341
    .end local v14           #bw:F
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/screenelement/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 349
    iput-object p1, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 350
    iget-object v0, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmiui/app/screenelement/elements/ImageScreenElement;->updateBmpSizeVar(Landroid/graphics/Bitmap;)V

    .line 351
    return-void
.end method

.method protected shouldScaleBitmap()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/elements/AnimatedScreenElement;->tick(J)V

    .line 467
    invoke-virtual {p0}, Lmiui/app/screenelement/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    :cond_0
    return-void

    .line 470
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lmiui/app/screenelement/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/animation/AnimatedElement;

    .line 472
    .local v1, mask:Lmiui/app/screenelement/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Lmiui/app/screenelement/animation/AnimatedElement;->tick(J)V

    goto :goto_0
.end method
