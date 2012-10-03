.class public Lcom/android/settings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# static fields
.field private static final hG:Ljava/lang/StringBuilder;

.field private static final hH:Ljava/util/Formatter;


# instance fields
.field private ar:Landroid/widget/TabHost;

.field private gA:Landroid/os/INetworkManagementService;

.field private gB:Landroid/net/INetworkStatsService;

.field private gC:Landroid/net/NetworkPolicyManager;

.field private gD:Landroid/net/ConnectivityManager;

.field private gE:Landroid/net/INetworkStatsSession;

.field private gF:Landroid/content/SharedPreferences;

.field private gG:Landroid/view/ViewGroup;

.field private gH:Landroid/widget/TabWidget;

.field private gI:Lcom/android/settings/al;

.field private gJ:Landroid/view/ViewGroup;

.field private gK:Landroid/view/ViewGroup;

.field private gL:Landroid/widget/LinearLayout;

.field private gM:Lmiui/widget/SlidingButton;

.field private gN:Landroid/view/View;

.field private gO:Landroid/widget/CheckBox;

.field private gP:Landroid/view/View;

.field private gQ:Landroid/view/View;

.field private gR:Landroid/widget/Spinner;

.field private gS:Lcom/android/settings/cB;

.field private gT:Lcom/android/settings/widget/ChartDataUsageView;

.field private gU:Landroid/widget/TextView;

.field private gV:Landroid/widget/TextView;

.field private gW:Landroid/view/View;

.field private gX:Landroid/widget/ImageView;

.field private gY:Landroid/view/ViewGroup;

.field private gZ:Lcom/android/settings/widget/PieChartView;

.field private go:I

.field private hA:Landroid/view/View$OnClickListener;

.field private hB:Landroid/widget/AdapterView$OnItemClickListener;

.field private hC:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final hD:Landroid/app/LoaderManager$LoaderCallbacks;

.field private final hE:Landroid/app/LoaderManager$LoaderCallbacks;

.field private hF:Lcom/android/settings/widget/d;

.field private ha:Landroid/widget/TextView;

.field private hb:Landroid/widget/TextView;

.field private hc:Landroid/widget/Button;

.field private hd:Landroid/widget/LinearLayout;

.field private he:Landroid/widget/CheckBox;

.field private hf:Landroid/view/View;

.field private hg:Z

.field private hh:Z

.field private hi:Landroid/net/NetworkTemplate;

.field private hj:Lcom/android/settings/a/g;

.field private hk:Lcom/android/settings/P;

.field private hl:Landroid/content/Intent;

.field private hm:Lcom/android/settings/a/i;

.field private hn:Ljava/lang/String;

.field private ho:Ljava/lang/String;

.field private hp:Landroid/view/MenuItem;

.field private hq:Landroid/view/MenuItem;

.field private hr:Landroid/view/MenuItem;

.field private hs:Z

.field private ht:Lcom/android/settings/a/h;

.field private hu:Landroid/widget/TabHost$TabContentFactory;

.field private hv:Landroid/widget/TabHost$OnTabChangeListener;

.field private hw:Ljava/lang/Boolean;

.field private hx:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private hy:Landroid/view/View$OnClickListener;

.field private hz:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->hG:Ljava/lang/StringBuilder;

    .line 1342
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->hG:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->hH:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 210
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->go:I

    .line 242
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    .line 248
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    .line 254
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    .line 654
    new-instance v0, Lcom/android/settings/bg;

    invoke-direct {v0, p0}, Lcom/android/settings/bg;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hu:Landroid/widget/TabHost$TabContentFactory;

    .line 669
    new-instance v0, Lcom/android/settings/bh;

    invoke-direct {v0, p0}, Lcom/android/settings/bh;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hv:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1017
    new-instance v0, Lcom/android/settings/bi;

    invoke-direct {v0, p0}, Lcom/android/settings/bi;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hx:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1038
    new-instance v0, Lcom/android/settings/bj;

    invoke-direct {v0, p0}, Lcom/android/settings/bj;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hy:Landroid/view/View$OnClickListener;

    .line 1052
    new-instance v0, Lcom/android/settings/bk;

    invoke-direct {v0, p0}, Lcom/android/settings/bk;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hz:Landroid/view/View$OnClickListener;

    .line 1068
    new-instance v0, Lcom/android/settings/be;

    invoke-direct {v0, p0}, Lcom/android/settings/be;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hA:Landroid/view/View$OnClickListener;

    .line 1078
    new-instance v0, Lcom/android/settings/bc;

    invoke-direct {v0, p0}, Lcom/android/settings/bc;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hB:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1092
    new-instance v0, Lcom/android/settings/ba;

    invoke-direct {v0, p0}, Lcom/android/settings/ba;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hC:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1191
    new-instance v0, Lcom/android/settings/ac;

    invoke-direct {v0, p0}, Lcom/android/settings/ac;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hD:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1222
    new-instance v0, Lcom/android/settings/ab;

    invoke-direct {v0, p0}, Lcom/android/settings/ab;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hE:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1275
    new-instance v0, Lcom/android/settings/ah;

    invoke-direct {v0, p0}, Lcom/android/settings/ah;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hF:Lcom/android/settings/widget/d;

    .line 2115
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gB:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2251
    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2252
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2254
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2255
    return-object v1
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2260
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2262
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/P;)Lcom/android/settings/P;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/a/g;)Lcom/android/settings/a/g;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    return-object p1
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1346
    .line 1348
    sget-object v8, Lcom/android/settings/DataUsageSummary;->hG:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1349
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->hG:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1350
    sget-object v1, Lcom/android/settings/DataUsageSummary;->hH:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1352
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
    .line 2356
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2359
    return-void
.end method

.method private static a(Landroid/widget/ListView;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2329
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2330
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2334
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2335
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2336
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2338
    new-instance v2, Lcom/android/settings/b/a;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/b/a;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2339
    new-instance v0, Lcom/android/settings/b/a;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/b/a;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2340
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->d(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private a(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter

    .prologue
    .line 862
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gM:Lmiui/widget/SlidingButton;

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

.method private aS()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gG:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->aT()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->aT()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gK:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->aT()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 594
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->aT()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 595
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 596
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 597
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method private static aT()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 601
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 606
    return-object v0
.end method

.method private aU()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 616
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 618
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bc()Z

    move-result v3

    .line 619
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 620
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b05f2

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 621
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b05f1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 625
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b05ee

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 628
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b05ef

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 633
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 634
    :goto_2
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 636
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 638
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aV()V

    .line 642
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    .line 649
    :cond_3
    :goto_5
    return-void

    .line 622
    :cond_4
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b05f0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 632
    goto :goto_1

    :cond_6
    move v1, v2

    .line 633
    goto :goto_2

    .line 634
    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    .line 640
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 643
    :cond_9
    if-eqz v0, :cond_3

    .line 645
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aV()V

    goto :goto_5
.end method

.method private aV()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hs:Z

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 689
    if-nez v1, :cond_1

    .line 690
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 697
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 698
    :cond_2
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    .line 702
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 707
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 708
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    const v2, 0x7f0b05f5

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 709
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    const v2, 0x7f0b05ea

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 710
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    .line 743
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    invoke-static {v2, v3}, Lcom/android/settings/a/b;->a(Landroid/net/NetworkTemplate;Lcom/android/settings/P;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hD:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 749
    iput-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->hs:Z

    goto :goto_0

    .line 712
    :cond_3
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 713
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    const v2, 0x7f0b05f6

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 714
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    const v2, 0x7f0b05ec

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 716
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 718
    :cond_4
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 719
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    const v2, 0x7f0b05f7

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 720
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    const v2, 0x7f0b05eb

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 722
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 724
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 726
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 730
    :cond_6
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 732
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 737
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

.method private aW()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aX()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 762
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 765
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v2, v1}, Lcom/android/settings/cB;->T(Z)V

    .line 778
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 781
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    iget v6, v2, Lcom/android/settings/P;->dv:I

    .line 782
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings/a/h;->f(IZ)Lcom/android/settings/a/c;

    move-result-object v2

    .line 783
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gX:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 786
    iget-object v7, v2, Lcom/android/settings/a/c;->ur:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 787
    iget-object v7, v2, Lcom/android/settings/a/c;->ur:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 788
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v1, v0}, Lcom/android/settings/cB;->T(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 825
    :goto_1
    return-void

    .line 791
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 796
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 797
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 798
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    .line 799
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 803
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hc:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hc:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 811
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bb()V

    .line 813
    invoke-static {v6}, Landroid/os/UserId;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 815
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    const v2, 0x7f0b05f9

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/View;I)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    const v2, 0x7f0b05fa

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ba()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 802
    goto :goto_2

    .line 807
    :cond_4
    iput-object v13, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    .line 808
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hc:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 823
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private aY()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hw:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 850
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gD:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private aZ()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 876
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hu:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2094
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2095
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2107
    :goto_0
    return-object v0

    .line 2097
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2107
    goto :goto_0

    .line 2099
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2101
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2103
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2105
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2097
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

    .line 951
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/aS;

    .line 952
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0}, Lcom/android/settings/cB;->clear()V

    .line 954
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 958
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    if-eqz v0, :cond_8

    .line 959
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Ep:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 960
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Ep:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 963
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 964
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 965
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 968
    :goto_2
    if-eqz p1, :cond_5

    .line 970
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 973
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 974
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 975
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

    .line 977
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    new-instance v0, Lcom/android/settings/aS;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aS;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings/cB;->add(Ljava/lang/Object;)V

    .line 979
    const/4 v0, 0x1

    move-wide v4, v2

    .line 980
    goto :goto_3

    .line 983
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/cB;->S(Z)V

    .line 986
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 989
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 990
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 991
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    new-instance v0, Lcom/android/settings/aS;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/aS;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/settings/cB;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 993
    goto :goto_5

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0, v11}, Lcom/android/settings/cB;->S(Z)V

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0}, Lcom/android/settings/cB;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0, v6}, Lcom/android/settings/cB;->b(Lcom/android/settings/aS;)I

    move-result v3

    .line 1001
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0, v3}, Lcom/android/settings/cB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aS;

    .line 1006
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hC:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1015
    :goto_6
    return-void

    .line 1010
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bb()V

    goto :goto_6

    .line 1013
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bb()V

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
    .line 2347
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2348
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2349
    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aV()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->c(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    return-void
.end method

.method private ba()Z
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    iget v0, v0, Lcom/android/settings/P;->dv:I

    .line 894
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getAppPolicy(I)I

    move-result v0

    .line 895
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bb()V
    .locals 15

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->gr()J

    move-result-wide v1

    .line 1134
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->gs()J

    move-result-wide v3

    .line 1135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1137
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1139
    const/4 v7, 0x0

    .line 1140
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Eq:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Er:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1143
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1144
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Es:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1145
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1147
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/PieChartView;->ai(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->fU()V

    .line 1150
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings/widget/PieChartView;->a(JI)V

    .line 1151
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings/widget/PieChartView;->a(JI)V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->fV()V

    .line 1155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hb:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ha:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Eq:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1161
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1173
    :goto_0
    if-eqz v7, :cond_3

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1174
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1175
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/settings/DataUsageSummary;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1178
    const-string v0, "mobile"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3g"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4g"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    :cond_0
    const v0, 0x7f0b0611

    .line 1185
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gU:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aS()V

    .line 1189
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    iget-object v0, v0, Lcom/android/settings/a/g;->Ep:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1169
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings/a/e;->a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->hE:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1173
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1182
    :cond_4
    const v0, 0x7f0b0610

    goto :goto_2
.end method

.method private bc()Z
    .locals 2

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1252
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 1254
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/a/i;->an(Ljava/lang/String;)Z

    move-result v0

    .line 1256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    return-object v0
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;J)V

    .line 830
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    .line 831
    return-void
.end method

.method static synthetic c(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->n(Z)V

    return-void
.end method

.method private d(J)V
    .locals 2
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;J)V

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    .line 837
    return-void
.end method

.method static synthetic d(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->m(Z)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hs:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1270
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1272
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2179
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 2180
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2183
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic h(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hl:Landroid/content/Intent;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 2191
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/h;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2214
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gA:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 870
    :goto_0
    return v0

    .line 868
    :catch_0
    move-exception v0

    .line 869
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

    .line 870
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bb()V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private m(Z)V
    .locals 3
    .parameter

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 883
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hp:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 885
    return-void

    .line 883
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/g;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hj:Lcom/android/settings/a/g;

    return-object v0
.end method

.method private n(Z)V
    .locals 3
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hk:Lcom/android/settings/P;

    iget v1, v0, Lcom/android/settings/P;->dv:I

    .line 901
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/net/NetworkPolicyManager;->setAppPolicy(II)V

    .line 903
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 904
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aX()V

    return-void
.end method

.method private o(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 911
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 912
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 918
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hs:Z

    .line 920
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gM:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aY()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 921
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->hs:Z

    .line 924
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 925
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 926
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 938
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 940
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->b(Landroid/net/NetworkPolicy;)V

    .line 942
    :cond_2
    return-void

    .line 914
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 927
    goto :goto_1

    .line 934
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method static synthetic p(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private p(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1263
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 1265
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/a/i;->e(Ljava/lang/String;Z)V

    .line 1267
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/al;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gI:Lcom/android/settings/al;

    return-object v0
.end method

.method static synthetic s(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v0

    return v0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gD:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 857
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hw:Ljava/lang/Boolean;

    .line 858
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->o(Z)V

    .line 859
    return-void
.end method

.method static synthetic t(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hi:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic v(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/a/i;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    return-object v0
.end method


# virtual methods
.method public j(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 2226
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2227
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    .line 2230
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2243
    :goto_0
    if-eqz v8, :cond_1

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2235
    :catch_0
    move-exception v0

    .line 2236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-wide v0, v6

    .line 2239
    goto :goto_0

    .line 2243
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gA:Landroid/os/INetworkManagementService;

    .line 273
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gB:Landroid/net/INetworkStatsService;

    .line 275
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    .line 276
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gD:Landroid/net/ConnectivityManager;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/content/SharedPreferences;

    .line 280
    new-instance v1, Lcom/android/settings/a/i;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings/a/i;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    .line 281
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hm:Lcom/android/settings/a/i;

    invoke-virtual {v1}, Lcom/android/settings/a/i;->read()V

    .line 283
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    .line 284
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    .line 287
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    .line 292
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 293
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 447
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 448
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

    .line 300
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 301
    const v0, 0x7f040029

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 303
    new-instance v0, Lcom/android/settings/a/h;

    invoke-direct {v0, v3}, Lcom/android/settings/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gB:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const v0, 0x1020012

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    .line 312
    const v0, 0x7f080055

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gG:Landroid/view/ViewGroup;

    .line 313
    const v0, 0x1020013

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gH:Landroid/widget/TabWidget;

    .line 314
    const v0, 0x102000a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 318
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    const/high16 v5, 0x200

    if-ne v0, v5, :cond_1

    move v0, v1

    .line 320
    :goto_0
    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x60a001a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->go:I

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v0, v1}, Lcom/android/settings/cu;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 331
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ar:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hv:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 333
    const v0, 0x7f040027

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    .line 334
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v7, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 339
    iget v0, p0, Lcom/android/settings/DataUsageSummary;->go:I

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->go:I

    invoke-static {v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/widget/ListView;I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->go:I

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->go:I

    invoke-virtual {v0, v5, v2, v6, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v5, 0x7f080052

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gK:Landroid/view/ViewGroup;

    .line 349
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v5, 0x7f080053

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    .line 351
    new-instance v0, Lmiui/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gM:Lmiui/widget/SlidingButton;

    .line 352
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gM:Lmiui/widget/SlidingButton;

    invoke-static {p1, v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gM:Lmiui/widget/SlidingButton;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hx:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v5}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    .line 357
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gO:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v5}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hy:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gL:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v5, 0x7f080048

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gQ:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gQ:Landroid/view/View;

    const v5, 0x7f080049

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    .line 369
    new-instance v0, Lcom/android/settings/cB;

    invoke-direct {v0, v3}, Lcom/android/settings/cB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    .line 370
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->gS:Lcom/android/settings/cB;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gR:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hC:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v3, 0x7f08003f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    .line 374
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hF:Lcom/android/settings/widget/d;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/d;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gT:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v3, 0x7f08004a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    .line 380
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f08004b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gX:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f08004c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gY:Landroid/view/ViewGroup;

    .line 382
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f08004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/PieChartView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gZ:Lcom/android/settings/widget/PieChartView;

    .line 383
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f08004d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ha:Landroid/widget/TextView;

    .line 384
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f08004e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hb:Landroid/widget/TextView;

    .line 385
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f080051

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hd:Landroid/widget/LinearLayout;

    .line 387
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gW:Landroid/view/View;

    const v3, 0x7f080050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hc:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hc:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->hA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    .line 391
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hd:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->he:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v2}, Lcom/android/settings/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    .line 394
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hz:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hd:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gU:Landroid/widget/TextView;

    .line 401
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gJ:Landroid/view/ViewGroup;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gV:Landroid/widget/TextView;

    .line 403
    new-instance v0, Lcom/android/settings/al;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    iget v2, p0, Lcom/android/settings/DataUsageSummary;->go:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/al;-><init>(Lcom/android/settings/a/h;I)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->gI:Lcom/android/settings/al;

    .line 404
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->hB:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->gI:Lcom/android/settings/al;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    return-object v4

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v2

    .line 318
    goto/16 :goto_0

    .line 324
    :cond_2
    iput v2, p0, Lcom/android/settings/DataUsageSummary;->go:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 566
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gN:Landroid/view/View;

    .line 567
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->gP:Landroid/view/View;

    .line 569
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    invoke-virtual {v0}, Lcom/android/settings/a/h;->clearCache()V

    .line 570
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->ht:Lcom/android/settings/a/h;

    .line 572
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gE:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 579
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 580
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 561
    :goto_0
    return v7

    .line 510
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 511
    :goto_1
    if-eqz v0, :cond_1

    .line 512
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 510
    goto :goto_1

    .line 515
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->m(Z)V

    goto :goto_0

    .line 520
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 521
    :goto_2
    if-eqz v0, :cond_3

    .line 522
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->w(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 520
    goto :goto_2

    .line 525
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v7

    .line 531
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->p(Z)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bc()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 533
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aU()V

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    .line 538
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 540
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aU()V

    goto :goto_0

    .line 544
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    .line 545
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 547
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aU()V

    goto/16 :goto_0

    .line 551
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 552
    const-class v1, Lcom/android/settings/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0612

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 557
    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v6, v7

    :cond_7
    invoke-static {p0, v6}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->e(Lcom/android/settings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x7f08023f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 453
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aW()Z

    move-result v4

    .line 455
    const v0, 0x7f08023f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hp:Landroid/view/MenuItem;

    .line 456
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hp:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hp:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aZ()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 459
    const v0, 0x7f080240

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hq:Landroid/view/MenuItem;

    .line 460
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->hq:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hq:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 463
    const v0, 0x7f080242

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->hr:Landroid/view/MenuItem;

    .line 464
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hr:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 466
    const v0, 0x7f080241

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 467
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->bc()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 470
    const v0, 0x7f080243

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 471
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    if-nez v4, :cond_4

    move v0, v1

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hg:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 478
    :goto_4
    const v0, 0x7f080244

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 479
    invoke-virtual {p0, v3}, Lcom/android/settings/DataUsageSummary;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 480
    if-nez v4, :cond_6

    move v0, v1

    :goto_5
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->hh:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 486
    :goto_6
    const v0, 0x7f080245

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 487
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 488
    :cond_0
    if-nez v4, :cond_8

    :goto_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 493
    :goto_8
    const v0, 0x7f080246

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b065c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 496
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 497
    const/high16 v1, 0x1080

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 499
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 500
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 504
    :goto_9
    return-void

    :cond_1
    move v0, v2

    .line 456
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 460
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 467
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 472
    goto :goto_3

    .line 475
    :cond_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v0, v2

    .line 480
    goto :goto_5

    .line 483
    :cond_7
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_8
    move v1, v2

    .line 488
    goto :goto_7

    .line 490
    :cond_9
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 502
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->ho:Ljava/lang/String;

    .line 420
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->aU()V

    .line 423
    new-instance v0, Lcom/android/settings/bf;

    invoke-direct {v0, p0}, Lcom/android/settings/bf;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bf;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 443
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->gC:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 889
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->hq:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 890
    return-void
.end method
