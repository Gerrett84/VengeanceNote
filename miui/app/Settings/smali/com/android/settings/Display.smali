.class public Lcom/android/settings/Display;
.super Landroid/app/Activity;
.source "Display.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private BQ:Landroid/content/res/Configuration;

.field private Fv:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private Fw:Landroid/widget/Spinner;

.field private Fx:Landroid/widget/TextView;

.field private Fy:Landroid/util/TypedValue;

.field private Fz:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Lcom/android/settings/cF;

    invoke-direct {v0, p0}, Lcom/android/settings/cF;-><init>(Lcom/android/settings/Display;)V

    iput-object v0, p0, Lcom/android/settings/Display;->Fv:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 137
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/Display;)Landroid/content/res/Configuration;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/Display;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/Display;->ji()V

    return-void
.end method

.method private ji()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 102
    iget-object v0, p0, Lcom/android/settings/Display;->Fy:Landroid/util/TypedValue;

    iget-object v1, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/Display;->Fx:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Display;->finish()V

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/android/settings/Display;->setContentView(I)V

    .line 42
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    .line 43
    iget-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/Display;->Fv:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 47
    const/4 v2, 0x1

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 48
    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 49
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 51
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/Display;->Fx:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/settings/Display;->Fx:Landroid/widget/TextView;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Display;->Fy:Landroid/util/TypedValue;

    .line 63
    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v0}, Lcom/android/settings/Display;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/Display;->Fy:Landroid/util/TypedValue;

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    .line 70
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 73
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 75
    iget-object v2, p0, Lcom/android/settings/Display;->Fz:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/Display;->ji()V

    .line 96
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Display;->BQ:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Display;->Fw:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
