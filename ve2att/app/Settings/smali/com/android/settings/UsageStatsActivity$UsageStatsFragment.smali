.class public Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;
.super Landroid/app/Fragment;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private bb:Lcom/android/settings/TimerView;

.field private bc:Lcom/android/internal/app/IUsageStats;

.field private bd:Lcom/android/settings/bA;

.field private be:Landroid/content/pm/PackageManager;

.field private final bf:I

.field private final bg:I

.field private bh:I

.field private bi:F

.field private bj:I

.field private bk:I

.field private bl:I

.field private bm:Lcom/android/settings/H;

.field bn:Z

.field private bo:I

.field private bp:I

.field private bq:Z

.field private br:I

.field private bs:I

.field private bt:Z

.field private bu:Landroid/widget/FrameLayout$LayoutParams;

.field private bv:[I

.field private bw:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bf:I

    .line 66
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bg:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bi:F

    .line 71
    iput v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    .line 76
    new-instance v0, Lcom/android/settings/H;

    invoke-direct {v0}, Lcom/android/settings/H;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bm:Lcom/android/settings/H;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bn:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bo:I

    .line 82
    iput v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bt:Z

    .line 384
    return-void
.end method

.method static synthetic a(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bo:I

    return v0
.end method

.method static synthetic a(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bs:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bq:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/TimerView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/H;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bm:Lcom/android/settings/H;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bs:I

    return v0
.end method

.method static synthetic g(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->br:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->be:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 440
    if-ltz p1, :cond_3

    .line 442
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    if-le v1, v2, :cond_0

    .line 443
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->m()V

    .line 469
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bl:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 451
    :cond_1
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v1, p1

    if-le v1, v0, :cond_2

    .line 452
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    goto :goto_0

    .line 454
    :cond_2
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    goto :goto_0

    .line 459
    :cond_3
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    if-ge v1, v2, :cond_4

    .line 460
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bp:I

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    goto :goto_0

    .line 461
    :cond_4
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v1, p1

    if-gez v1, :cond_5

    .line 462
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    goto :goto_0

    .line 464
    :cond_5
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    goto :goto_0
.end method

.method m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 535
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bw:I

    if-lez v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 537
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->br:I

    add-int/2addr v2, v0

    .line 539
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bk:I

    :goto_0
    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bk:I

    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bl:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bv:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bv:[I

    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bk:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v3, v0

    .line 543
    :cond_0
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bv:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    .line 545
    if-le v1, v2, :cond_4

    .line 549
    :cond_1
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bw:I

    if-ge v0, v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/R;

    .line 551
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    iget-object v0, v0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aI;

    iget-object v0, v0, Lcom/android/settings/aI;->nA:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/android/settings/TimerView;->a(Ljava/lang/Long;)V

    .line 552
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    if-gez v0, :cond_2

    .line 553
    iput v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bu:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bh:I

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bu:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/settings/TimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    :cond_3
    return-void

    .line 539
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bc:Lcom/android/internal/app/IUsageStats;

    .line 98
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bc:Lcom/android/internal/app/IUsageStats;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed to retrieve usagestats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 108
    const v0, 0x7f04007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->be:Landroid/content/pm/PackageManager;

    .line 113
    const v0, 0x7f08015f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    .line 114
    const v0, 0x7f080160

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TimerView;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    .line 116
    new-instance v0, Lcom/android/settings/bA;

    invoke-direct {v0, p0}, Lcom/android/settings/bA;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bd:Lcom/android/settings/bA;

    .line 117
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bd:Lcom/android/settings/bA;

    invoke-static {v0}, Lcom/android/settings/bA;->a(Lcom/android/settings/bA;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bd:Lcom/android/settings/bA;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bd:Lcom/android/settings/bA;

    invoke-virtual {v0}, Lcom/android/settings/bA;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bw:I

    .line 123
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bw:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bv:[I

    .line 125
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mScreenWidth:I

    .line 129
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    invoke-virtual {v0}, Lcom/android/settings/TimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bu:Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    const/high16 v0, 0x42b4

    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 132
    const/high16 v2, 0x4220

    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->br:I

    .line 133
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mScreenWidth:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bh:I

    .line 135
    new-instance v0, Lcom/android/settings/i;

    invoke-direct {v0, p0}, Lcom/android/settings/i;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mHandler:Landroid/os/Handler;

    .line 145
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bt:Z

    .line 435
    iput p2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bk:I

    .line 436
    iput p3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bl:I

    .line 437
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 405
    packed-switch p2, :pswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 409
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bn:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->m()V

    .line 411
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/settings/h;

    invoke-direct {v1, p0}, Lcom/android/settings/h;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 424
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bn:Z

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 475
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iput-boolean v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bt:Z

    .line 477
    iput-boolean v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bq:Z

    .line 479
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bw:I

    if-lez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    invoke-virtual {v0, v2}, Lcom/android/settings/TimerView;->setVisibility(I)V

    .line 481
    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bi:F

    .line 482
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bu:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bh:I

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bb:Lcom/android/settings/TimerView;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bu:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/settings/TimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->m()V

    .line 531
    :cond_0
    :goto_0
    return v2

    .line 488
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 489
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bi:F

    sub-float/2addr v0, v3

    .line 491
    iget-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bt:Z

    if-eqz v1, :cond_4

    .line 493
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 494
    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bl:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_6

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 499
    if-le v1, v0, :cond_6

    .line 508
    :goto_1
    iget v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    if-eq v0, v1, :cond_2

    .line 509
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bj:I

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->m()V

    .line 515
    :cond_2
    :goto_2
    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bi:F

    .line 516
    iput-boolean v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bt:Z

    goto :goto_0

    .line 504
    :cond_3
    if-gtz v1, :cond_6

    move v0, v2

    .line 505
    goto :goto_1

    .line 512
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bn:Z

    if-eqz v1, :cond_2

    .line 513
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->b(I)V

    goto :goto_2

    .line 518
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 519
    iput-boolean v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bq:Z

    .line 520
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/settings/g;

    invoke-direct {v1, p0}, Lcom/android/settings/g;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
