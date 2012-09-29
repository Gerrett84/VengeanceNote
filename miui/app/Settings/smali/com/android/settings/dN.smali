.class Lcom/android/settings/dN;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# instance fields
.field private final Mc:I

.field private final Md:I

.field private final Me:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dN;->Me:Landroid/graphics/Rect;

    .line 326
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dN;->mCanvas:Landroid/graphics/Canvas;

    .line 329
    iget-object v0, p0, Lcom/android/settings/dN;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 332
    iput-object p3, p0, Lcom/android/settings/dN;->mMetrics:Landroid/util/DisplayMetrics;

    .line 333
    iput p1, p0, Lcom/android/settings/dN;->Mc:I

    .line 334
    iput p2, p0, Lcom/android/settings/dN;->Md:I

    .line 335
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter

    .prologue
    .line 350
    iget v4, p0, Lcom/android/settings/dN;->Mc:I

    .line 351
    iget v3, p0, Lcom/android/settings/dN;->Md:I

    .line 353
    if-nez p1, :cond_1

    .line 354
    new-instance p1, Lcom/android/settings/ci;

    invoke-direct {p1, v4, v3}, Lcom/android/settings/ci;-><init>(II)V

    .line 425
    :cond_0
    :goto_0
    return-object p1

    .line 358
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_5

    .line 359
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 360
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 361
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 370
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 371
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 373
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 374
    if-lt v4, v1, :cond_3

    if-ge v3, v2, :cond_8

    .line 375
    :cond_3
    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 377
    if-le v1, v2, :cond_6

    .line 378
    int-to-float v1, v4

    div-float/2addr v1, v5

    float-to-int v3, v1

    .line 383
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 385
    :goto_3
    iget v2, p0, Lcom/android/settings/dN;->Mc:I

    iget v5, p0, Lcom/android/settings/dN;->Md:I

    invoke-static {v2, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 386
    iget-object v5, p0, Lcom/android/settings/dN;->mCanvas:Landroid/graphics/Canvas;

    .line 387
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 393
    iget-object v2, p0, Lcom/android/settings/dN;->Me:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    iget v2, p0, Lcom/android/settings/dN;->Mc:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 395
    iget v6, p0, Lcom/android/settings/dN;->Md:I

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    .line 396
    add-int v7, v2, v4

    add-int v8, v6, v3

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 398
    iget-object v2, p0, Lcom/android/settings/dN;->Me:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 400
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 401
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    iget-object v6, p0, Lcom/android/settings/dN;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    .line 403
    goto :goto_0

    .line 362
    :cond_5
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 364
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 365
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-nez v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/settings/dN;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v1

    move v1, v3

    move v2, v4

    .line 422
    new-instance p1, Lcom/android/settings/ci;

    invoke-direct {p1, v2, v1}, Lcom/android/settings/ci;-><init>(II)V

    goto/16 :goto_0

    .line 379
    :cond_6
    if-le v2, v1, :cond_4

    .line 380
    int-to-float v1, v3

    mul-float/2addr v1, v5

    float-to-int v4, v1

    goto :goto_2

    .line 383
    :cond_7
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 403
    :cond_8
    if-ge v1, v4, :cond_0

    if-ge v2, v3, :cond_0

    .line 404
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 405
    iget v6, p0, Lcom/android/settings/dN;->Mc:I

    iget v7, p0, Lcom/android/settings/dN;->Md:I

    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 406
    iget-object v6, p0, Lcom/android/settings/dN;->mCanvas:Landroid/graphics/Canvas;

    .line 407
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    iget-object v7, p0, Lcom/android/settings/dN;->Me:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 409
    sub-int v7, v4, v1

    div-int/lit8 v7, v7, 0x2

    .line 410
    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    .line 411
    add-int/2addr v1, v7

    add-int/2addr v2, v8

    invoke-virtual {p1, v7, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/dN;->Me:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 415
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    iget-object v5, p0, Lcom/android/settings/dN;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v2

    goto/16 :goto_0
.end method
