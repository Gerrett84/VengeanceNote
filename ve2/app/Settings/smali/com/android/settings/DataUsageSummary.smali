.class public Lcom/android/settings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# static fields
.field private static final gK:Ljava/lang/StringBuilder;

.field private static final gL:Ljava/util/Formatter;


# instance fields
.field private at:Landroid/widget/TabHost;

.field private dk:Landroid/net/INetworkStatsService;

.field private fG:Landroid/os/INetworkManagementService;

.field private fH:Landroid/net/INetworkPolicyManager;

.field private fI:Landroid/net/ConnectivityManager;

.field private fJ:Landroid/content/SharedPreferences;

.field private fK:Landroid/view/ViewGroup;

.field private fL:Landroid/widget/TabWidget;

.field private fM:Lcom/android/settings/Y;

.field private fN:Landroid/view/ViewGroup;

.field private fO:Landroid/view/ViewGroup;

.field private fP:Landroid/widget/LinearLayout;

.field private fQ:Lmiui/widget/SlidingButton;

.field private fR:Landroid/view/View;

.field private fS:Landroid/widget/CheckBox;

.field private fT:Landroid/view/View;

.field private fU:Landroid/view/View;

.field private fV:Landroid/widget/Spinner;

.field private fW:Lcom/android/settings/cq;

.field private fX:Lcom/android/settings/widget/ChartDataUsageView;

.field private fY:Landroid/widget/TextView;

.field private fZ:Landroid/widget/TextView;

.field private fu:I

.field private gA:Ljava/lang/Boolean;

.field private gB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private gC:Landroid/view/View$OnClickListener;

.field private gD:Landroid/view/View$OnClickListener;

.field private gE:Landroid/view/View$OnClickListener;

.field private gF:Landroid/widget/AdapterView$OnItemClickListener;

.field private gG:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final gH:Landroid/app/LoaderManager$LoaderCallbacks;

.field private final gI:Landroid/app/LoaderManager$LoaderCallbacks;

.field private gJ:Lcom/android/settings/widget/d;

.field private ga:Landroid/view/View;

.field private gb:Landroid/widget/ImageView;

.field private gc:Landroid/view/ViewGroup;

.field private gd:Lcom/android/settings/widget/PieChartView;

.field private ge:Landroid/widget/TextView;

.field private gf:Landroid/widget/TextView;

.field private gg:Landroid/widget/Button;

.field private gh:Landroid/widget/LinearLayout;

.field private gi:Landroid/widget/CheckBox;

.field private gj:Landroid/view/View;

.field private gk:Z

.field private gl:Z

.field private gm:Landroid/net/NetworkTemplate;

.field private gn:Lcom/android/settings/a/e;

.field private go:[I

.field private gp:Landroid/content/Intent;

.field private gq:Lcom/android/settings/a/g;

.field private gr:Ljava/lang/String;

.field private gs:Ljava/lang/String;

.field private gt:Landroid/view/MenuItem;

.field private gu:Landroid/view/MenuItem;

.field private gv:Z

.field private gw:Lcom/android/settings/a/f;

.field private gx:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private gy:Landroid/widget/TabHost$TabContentFactory;

.field private gz:Landroid/widget/TabHost$OnTabChangeListener;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->gK:Ljava/lang/StringBuilder;

    .line 1312
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->gK:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->gL:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 199
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    .line 237
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->go:[I

    .line 243
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gr:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    .line 541
    new-instance v0, Lcom/android/settings/aS;

    invoke-direct {v0, p0}, Lcom/android/settings/aS;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gx:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 609
    new-instance v0, Lcom/android/settings/aT;

    invoke-direct {v0, p0}, Lcom/android/settings/aT;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gy:Landroid/widget/TabHost$TabContentFactory;

    .line 624
    new-instance v0, Lcom/android/settings/aU;

    invoke-direct {v0, p0}, Lcom/android/settings/aU;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gz:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1004
    new-instance v0, Lcom/android/settings/aV;

    invoke-direct {v0, p0}, Lcom/android/settings/aV;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1025
    new-instance v0, Lcom/android/settings/aW;

    invoke-direct {v0, p0}, Lcom/android/settings/aW;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/view/View$OnClickListener;

    .line 1039
    new-instance v0, Lcom/android/settings/aQ;

    invoke-direct {v0, p0}, Lcom/android/settings/aQ;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gD:Landroid/view/View$OnClickListener;

    .line 1061
    new-instance v0, Lcom/android/settings/aM;

    invoke-direct {v0, p0}, Lcom/android/settings/aM;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/view/View$OnClickListener;

    .line 1069
    new-instance v0, Lcom/android/settings/aL;

    invoke-direct {v0, p0}, Lcom/android/settings/aL;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1079
    new-instance v0, Lcom/android/settings/P;

    invoke-direct {v0, p0}, Lcom/android/settings/P;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gG:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1168
    new-instance v0, Lcom/android/settings/O;

    invoke-direct {v0, p0}, Lcom/android/settings/O;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1199
    new-instance v0, Lcom/android/settings/V;

    invoke-direct {v0, p0}, Lcom/android/settings/V;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gI:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1245
    new-instance v0, Lcom/android/settings/U;

    invoke-direct {v0, p0}, Lcom/android/settings/U;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Lcom/android/settings/widget/d;

    .line 1987
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->dk:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2108
    const v0, 0x7f040049

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2109
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2111
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2112
    return-object v1
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2117
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2119
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/e;)Lcom/android/settings/a/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    return-object p1
.end method

.method public static a(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1316
    .line 1317
    if-eqz p5, :cond_0

    const-string v7, "UTC"

    .line 1319
    :goto_0
    sget-object v8, Lcom/android/settings/DataUsageSummary;->gK:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1320
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->gK:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1321
    sget-object v1, Lcom/android/settings/DataUsageSummary;->gL:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1317
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2206
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2208
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    return-void
.end method

.method private static a(Landroid/widget/ListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2179
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2180
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2184
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2185
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2186
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2188
    new-instance v2, Lcom/android/settings/b/a;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/b/a;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2189
    new-instance v0, Lcom/android/settings/b/a;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/b/a;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2190
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->d(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private a(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter

    .prologue
    .line 823
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fQ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a([II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/settings/DataUsageSummary;->contains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;[I)[I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->go:[I

    return-object p1
.end method

.method private static aP()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 564
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 565
    return-object v0
.end method

.method private aQ()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 575
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aZ()Z

    move-result v3

    .line 578
    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b058a

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 580
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b0589

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 584
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->j(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b0586

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 587
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b0587

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fL:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 592
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fL:Landroid/widget/TabWidget;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 596
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aR()V

    .line 600
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    .line 604
    :cond_3
    return-void

    .line 581
    :cond_4
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b0588

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 591
    goto :goto_1

    .line 592
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 598
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private aR()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gv:Z

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 644
    if-nez v1, :cond_1

    .line 645
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 652
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 653
    :cond_2
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gr:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 660
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    const v2, 0x7f0b058d

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 661
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    const v2, 0x7f0b0582

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 662
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    .line 695
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->go:[I

    invoke-static {v2, v3}, Lcom/android/settings/a/b;->a(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 701
    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->gv:Z

    goto :goto_0

    .line 664
    :cond_3
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    const v2, 0x7f0b058e

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 666
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    const v2, 0x7f0b0584

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 668
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 670
    :cond_4
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    const v2, 0x7f0b058f

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 672
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    const v2, 0x7f0b0583

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 674
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 676
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 678
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 682
    :cond_6
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 684
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 689
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aS()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->go:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aT()I
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->go:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private aU()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 718
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 721
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v2, v1}, Lcom/android/settings/cq;->Y(Z)V

    .line 734
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v12}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aT()I

    move-result v6

    .line 738
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings/a/f;->d(IZ)Lcom/android/settings/a/c;

    move-result-object v2

    .line 739
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gb:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 742
    iget-object v7, v2, Lcom/android/settings/a/c;->sd:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 743
    iget-object v7, v2, Lcom/android/settings/a/c;->sd:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 744
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v1, v0}, Lcom/android/settings/cq;->Y(Z)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v12}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 786
    :goto_1
    return-void

    .line 747
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 752
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 753
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 754
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    .line 755
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 759
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gg:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 766
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aY()V

    .line 768
    invoke-static {v3, v6}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    const v2, 0x7f0b0591

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 772
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ba()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    const v2, 0x7f0b0592

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 780
    :goto_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aX()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 758
    goto :goto_2

    .line 762
    :cond_4
    iput-object v12, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    .line 763
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 776
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    const v2, 0x7f0b0593

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 784
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private aV()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gA:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fI:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private aW()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 837
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private aX()Z
    .locals 3

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aT()I

    move-result v0

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 877
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 872
    :catch_0
    move-exception v0

    .line 874
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 877
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aY()V
    .locals 15

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->eP()J

    move-result-wide v1

    .line 1121
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->eQ()J

    move-result-wide v3

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1124
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1126
    const/4 v7, 0x0

    .line 1127
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->Au:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1130
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1131
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->Av:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1132
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1134
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/PieChartView;->W(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->eL()V

    .line 1137
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings/widget/PieChartView;->a(JI)V

    .line 1138
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings/widget/PieChartView;->a(JI)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->eM()V

    .line 1142
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gf:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ge:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->At:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1160
    :goto_0
    if-eqz v7, :cond_2

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1161
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1162
    const/4 v5, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fY:Landroid/widget/TextView;

    const v2, 0x7f0b05a4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->As:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings/a/d;->a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->gI:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1160
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private aZ()Z
    .locals 2

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1226
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-virtual {v1, v0}, Lcom/android/settings/a/g;->ai(Ljava/lang/String;)Z

    move-result v0

    .line 1230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gy:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1966
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 1967
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1979
    :goto_0
    return-object v0

    .line 1969
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 1979
    goto :goto_0

    .line 1971
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 1973
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 1975
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 1977
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 1969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/aD;

    .line 939
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0}, Lcom/android/settings/cq;->clear()V

    .line 941
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 945
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    if-eqz v0, :cond_8

    .line 946
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->As:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 947
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    iget-object v0, v0, Lcom/android/settings/a/e;->As:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 950
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 951
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 952
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 955
    :goto_2
    if-eqz p1, :cond_5

    .line 957
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 960
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 961
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 962
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    new-instance v0, Lcom/android/settings/aD;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aD;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings/cq;->add(Ljava/lang/Object;)V

    .line 966
    const/4 v0, 0x1

    move-wide v4, v2

    .line 967
    goto :goto_3

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cq;->X(Z)V

    .line 973
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 976
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 977
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 978
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    new-instance v0, Lcom/android/settings/aD;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aD;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/settings/cq;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 980
    goto :goto_5

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0, v11}, Lcom/android/settings/cq;->X(Z)V

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0}, Lcom/android/settings/cq;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 987
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0, v6}, Lcom/android/settings/cq;->b(Lcom/android/settings/aD;)I

    move-result v3

    .line 988
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 992
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0, v3}, Lcom/android/settings/cq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aD;

    .line 993
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gG:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1002
    :goto_6
    return-void

    .line 997
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aY()V

    goto :goto_6

    .line 1000
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aY()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private static b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2197
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2199
    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aR()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->c(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->q(Z)V

    return-void
.end method

.method private ba()Z
    .locals 1

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bb()Ljava/util/List;
    .locals 4

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2151
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2155
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2156
    const v2, 0x7f0b058b

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2159
    const v2, 0x7f0b058a

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2162
    const v0, 0x7f0b0589

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2165
    const v0, 0x7f0b0586

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2168
    const v0, 0x7f0b0587

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    :cond_4
    return-object v1
.end method

.method static synthetic bc()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->aP()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gx:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/a/g;->a(Landroid/net/NetworkTemplate;J)V

    .line 791
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->q(Z)V

    .line 792
    return-void
.end method

.method static synthetic c(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->p(Z)V

    return-void
.end method

.method private static contains([II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2212
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 2213
    if-ne v3, p1, :cond_1

    .line 2214
    const/4 v0, 0x1

    .line 2217
    :cond_0
    return v0

    .line 2212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private d(J)V
    .locals 2
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/a/g;->b(Landroid/net/NetworkTemplate;J)V

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->q(Z)V

    .line 798
    return-void
.end method

.method static synthetic d(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fK:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fO:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1240
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1242
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2051
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 2061
    const/4 v0, 0x0

    return v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fG:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 831
    :goto_0
    return v0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2085
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2087
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gv:Z

    return v0
.end method

.method static synthetic k(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gr:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2098
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2100
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ba()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gp:Landroid/content/Intent;

    return-object v0
.end method

.method private o(Z)V
    .locals 3
    .parameter

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 844
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 845
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gt:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 846
    return-void

    .line 844
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/f;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    return-object v0
.end method

.method private p(Z)V
    .locals 3
    .parameter

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aT()I

    move-result v1

    .line 884
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 891
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to save policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic q(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    return-object v0
.end method

.method private q(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 898
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 899
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 905
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gv:Z

    .line 907
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fQ:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aV()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 908
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->gv:Z

    .line 911
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings/a/g;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 912
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 913
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 915
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 925
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 927
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/net/NetworkPolicy;)V

    .line 929
    :cond_2
    return-void

    .line 901
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 914
    goto :goto_1

    .line 921
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method static synthetic r(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aY()V

    return-void
.end method

.method private r(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/a/g;->e(Ljava/lang/String;Z)V

    .line 1237
    return-void
.end method

.method static synthetic s(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/e;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gn:Lcom/android/settings/a/e;

    return-object v0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fI:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 818
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gA:Ljava/lang/Boolean;

    .line 819
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->q(Z)V

    .line 820
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter

    .prologue
    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gu:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic t(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aU()V

    return-void
.end method

.method static synthetic u(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/Y;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fM:Lcom/android/settings/Y;

    return-object v0
.end method

.method static synthetic v(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gm:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic y(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/g;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fG:Landroid/os/INetworkManagementService;

    .line 260
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->dk:Landroid/net/INetworkStatsService;

    .line 262
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fI:Landroid/net/ConnectivityManager;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "data_usage"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fJ:Landroid/content/SharedPreferences;

    .line 269
    new-instance v0, Lcom/android/settings/a/g;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fH:Landroid/net/INetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/settings/a/g;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    .line 270
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gq:Lcom/android/settings/a/g;

    invoke-virtual {v0}, Lcom/android/settings/a/g;->read()V

    .line 272
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fJ:Landroid/content/SharedPreferences;

    const-string v1, "show_wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    .line 273
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fJ:Landroid/content/SharedPreferences;

    const-string v1, "show_ethernet"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 276
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 427
    const/high16 v0, 0x7f0f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 428
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 284
    const v0, 0x7f04002b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 286
    new-instance v0, Lcom/android/settings/a/f;

    invoke-direct {v0, v3}, Lcom/android/settings/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    .line 288
    const v0, 0x1020012

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    .line 289
    const v0, 0x7f08005a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fK:Landroid/view/ViewGroup;

    .line 290
    const v0, 0x1020013

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fL:Landroid/widget/TabWidget;

    .line 291
    const v0, 0x102000a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 295
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    const/high16 v5, 0x200

    if-ne v0, v5, :cond_1

    move v0, v1

    .line 297
    :goto_0
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x60a001a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v0, v1}, Lcom/android/settings/ci;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->at:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gz:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 310
    const v0, 0x7f040029

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    .line 311
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v7, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 316
    iget v0, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    invoke-static {v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/widget/ListView;I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    invoke-virtual {v0, v5, v2, v6, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v5, 0x7f080057

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fO:Landroid/view/ViewGroup;

    .line 326
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v5, 0x7f080058

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    .line 328
    new-instance v0, Lmiui/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fQ:Lmiui/widget/SlidingButton;

    .line 329
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->fQ:Lmiui/widget/SlidingButton;

    invoke-static {p1, v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    .line 330
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fQ:Lmiui/widget/SlidingButton;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gB:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v5}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    .line 334
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->fS:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fP:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v5, 0x7f08004e

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fU:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fU:Landroid/view/View;

    const v5, 0x7f08004f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    .line 346
    new-instance v0, Lcom/android/settings/cq;

    invoke-direct {v0, v3}, Lcom/android/settings/cq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    .line 347
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->fW:Lcom/android/settings/cq;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fV:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gG:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v3, 0x7f080045

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    .line 351
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gJ:Lcom/android/settings/widget/d;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/d;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fX:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v3, 0x7f080050

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gb:Landroid/widget/ImageView;

    .line 358
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080051

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gc:Landroid/view/ViewGroup;

    .line 359
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080054

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/PieChartView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gd:Lcom/android/settings/widget/PieChartView;

    .line 360
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080052

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ge:Landroid/widget/TextView;

    .line 361
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080053

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gf:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080056

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gh:Landroid/widget/LinearLayout;

    .line 364
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ga:Landroid/view/View;

    const v3, 0x7f080055

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gg:Landroid/widget/Button;

    .line 365
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gg:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    .line 368
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gh:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gi:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gh:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fY:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fN:Landroid/view/ViewGroup;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fZ:Landroid/widget/TextView;

    .line 381
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gx:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 383
    new-instance v0, Lcom/android/settings/Y;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    iget v2, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Y;-><init>(Lcom/android/settings/a/f;I)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->fM:Lcom/android/settings/Y;

    .line 384
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->fM:Lcom/android/settings/Y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    return-object v4

    :cond_1
    move v0, v2

    .line 295
    goto/16 :goto_0

    .line 301
    :cond_2
    iput v2, p0, Lcom/android/settings/DataUsageSummary;->fu:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 535
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 536
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 522
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->fR:Landroid/view/View;

    .line 523
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->fT:Landroid/view/View;

    .line 525
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    invoke-virtual {v0}, Lcom/android/settings/a/f;->clearCache()V

    .line 526
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gw:Lcom/android/settings/a/f;

    .line 527
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 515
    :goto_0
    return v1

    .line 470
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 471
    :goto_1
    if-eqz v2, :cond_1

    .line 472
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v2, v0

    .line 470
    goto :goto_1

    .line 475
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    goto :goto_0

    .line 480
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 481
    :goto_2
    if-eqz v2, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ba()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 480
    goto :goto_2

    .line 485
    :cond_3
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->z(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    .line 489
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 494
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 495
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->r(Z)V

    .line 496
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aZ()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 497
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aQ()V

    goto :goto_0

    .line 501
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    .line 502
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fJ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 504
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aQ()V

    goto :goto_0

    .line 508
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :cond_7
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    .line 509
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->fJ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 510
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 511
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aQ()V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x7f080214
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 433
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()Z

    move-result v4

    .line 435
    const v0, 0x7f080214

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gt:Landroid/view/MenuItem;

    .line 436
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gt:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gt:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 439
    const v0, 0x7f080215

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gu:Landroid/view/MenuItem;

    .line 440
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gu:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 441
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getRestrictBackground()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 443
    const v0, 0x7f080216

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 444
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 445
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aZ()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 447
    const v0, 0x7f080217

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 448
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 456
    :goto_4
    const v0, 0x7f080218

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 457
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 458
    if-nez v4, :cond_5

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 464
    :goto_6
    return-void

    :cond_0
    move v0, v2

    .line 436
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 440
    goto :goto_1

    :cond_2
    move v0, v2

    .line 444
    goto :goto_2

    :cond_3
    move v0, v2

    .line 449
    goto :goto_3

    .line 452
    :cond_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->gk:Z

    goto :goto_4

    :cond_5
    move v1, v2

    .line 458
    goto :goto_5

    .line 461
    :cond_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->gl:Z

    goto :goto_6
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gs:Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aQ()V

    .line 403
    new-instance v0, Lcom/android/settings/aR;

    invoke-direct {v0, p0}, Lcom/android/settings/aR;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aR;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 423
    return-void
.end method
