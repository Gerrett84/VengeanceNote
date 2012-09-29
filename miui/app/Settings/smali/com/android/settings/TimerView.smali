.class public Lcom/android/settings/TimerView;
.super Landroid/widget/FrameLayout;
.source "TimerView.java"


# instance fields
.field private EA:I

.field private EB:I

.field private EC:Landroid/widget/TextView;

.field private ED:Landroid/widget/TextView;

.field private EE:Landroid/widget/ImageView;

.field private EF:Landroid/widget/ImageView;

.field private Ey:Landroid/graphics/Bitmap;

.field private Ez:Landroid/graphics/Bitmap;

.field private mCalendar:Ljava/util/Calendar;

.field private mHeight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v1, 0x7f040082

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimerView;->Ey:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimerView;->Ez:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcom/android/settings/TimerView;->Ey:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/settings/TimerView;->mWidth:I

    .line 54
    iget-object v0, p0, Lcom/android/settings/TimerView;->Ey:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/settings/TimerView;->mHeight:I

    .line 55
    iget v0, p0, Lcom/android/settings/TimerView;->mWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TimerView;->EA:I

    .line 56
    iget v0, p0, Lcom/android/settings/TimerView;->mHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TimerView;->EB:I

    .line 58
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/TimerView;->EC:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/TimerView;->ED:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/TimerView;->EE:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/TimerView;->EF:Landroid/widget/ImageView;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 71
    iget-object v2, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 72
    const-string v3, "%d:%02d:%02d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/android/settings/TimerView;->EC:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 76
    iget-object v2, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 78
    const-string v4, "%d.%d.%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/android/settings/TimerView;->ED:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 82
    iget-object v2, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 83
    iget-object v2, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/TimerView;->EB:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/TimerView;->EA:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/TimerView;->Ey:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/settings/TimerView;->mWidth:I

    iget v4, p0, Lcom/android/settings/TimerView;->mHeight:I

    iget-object v5, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/android/settings/TimerView;->EE:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v7, 0x6

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/TimerView;->EB:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/TimerView;->EA:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/TimerView;->Ez:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/settings/TimerView;->mWidth:I

    iget v4, p0, Lcom/android/settings/TimerView;->mHeight:I

    iget-object v5, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/TimerView;->EF:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method
