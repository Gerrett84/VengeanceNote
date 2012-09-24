.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field Bb:Lcom/android/settings/applications/LinearColorBar;

.field private EP:I

.field private EQ:I

.field private ER:Lcom/android/settings/applications/ApplicationsState;

.field private ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private ET:Ljava/lang/CharSequence;

.field private EU:Ljava/lang/String;

.field private EV:Landroid/view/View;

.field private EW:Lcom/android/settings/applications/RunningProcessesView;

.field EX:Landroid/widget/TextView;

.field EY:Landroid/widget/TextView;

.field EZ:Landroid/widget/TextView;

.field private Ec:Ljava/lang/CharSequence;

.field private Fa:Landroid/view/Menu;

.field private Fb:I

.field private Fc:Z

.field private Fd:Z

.field private Fe:Z

.field private Ff:Landroid/os/StatFs;

.field private Fg:Landroid/os/StatFs;

.field private Fh:Z

.field private Fi:J

.field private Fj:J

.field private Fk:Ljava/lang/String;

.field final Fl:Ljava/lang/Runnable;

.field private at:Landroid/widget/TabHost;

.field private cR:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    .line 149
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    .line 188
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fh:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fl:Ljava/lang/Runnable;

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Ec:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private aD(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 891
    if-ne p1, v1, :cond_4

    .line 892
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->hd()V

    .line 894
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    .line 896
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    if-eq v0, p1, :cond_1

    .line 897
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fe:Z

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(II)V

    .line 925
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    .line 926
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_3

    .line 928
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 930
    :cond_3
    return-void

    .line 904
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 905
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fc:Z

    if-nez v0, :cond_5

    .line 906
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningProcessesView;->d(Landroid/os/Bundle;)V

    .line 907
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    .line 908
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fc:Z

    .line 911
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fe:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    if-nez v0, :cond_7

    .line 912
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->Fl:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/applications/RunningProcessesView;->a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 913
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    .line 915
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 916
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    if-eq v1, p1, :cond_2

    .line 917
    if-eqz v0, :cond_6

    .line 918
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 922
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 920
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private ec()V
    .locals 7

    .prologue
    .line 710
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 711
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->EU:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 714
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0384

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 716
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method hO()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 756
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 757
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->Q()Z

    move-result v0

    .line 759
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 760
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 761
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 757
    goto :goto_1

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    if-eq v0, v4, :cond_4

    move v0, v2

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 765
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    if-eq v3, v5, :cond_5

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 766
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 764
    goto :goto_2

    :cond_5
    move v2, v1

    .line 765
    goto :goto_3
.end method

.method hP()V
    .locals 21

    .prologue
    .line 806
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-wide/16 v3, 0x0

    .line 811
    const-wide/16 v8, 0x0

    .line 812
    const-wide/16 v1, 0x0

    .line 815
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 816
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/applications/ManageApplications;->Fh:Z

    if-eqz v5, :cond_2

    .line 817
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings/applications/ManageApplications;->Fh:Z

    .line 819
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b03ad

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 820
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 822
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v6

    .line 824
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v6

    .line 829
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v11

    .line 830
    const/4 v6, 0x0

    move/from16 v16, v6

    move-wide v6, v8

    move/from16 v8, v16

    :goto_2
    if-ge v8, v11, :cond_3

    .line 831
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v9, v8}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v9

    .line 832
    iget-wide v12, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v9, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v9, v12

    add-long/2addr v9, v6

    .line 830
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-wide v6, v9

    goto :goto_2

    :cond_3
    move-object/from16 v16, v5

    move-wide/from16 v17, v1

    move-object/from16 v1, v16

    move-wide/from16 v19, v6

    move-wide v6, v3

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    .line 858
    :goto_3
    if-eqz v1, :cond_4

    .line 859
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ManageApplications;->EX:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-lez v1, :cond_a

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->Bb:Lcom/android/settings/applications/LinearColorBar;

    sub-long v8, v2, v6

    sub-long/2addr v8, v4

    long-to-float v8, v8

    long-to-float v9, v2

    div-float/2addr v8, v9

    long-to-float v4, v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    long-to-float v5, v6

    long-to-float v9, v2

    div-float/2addr v5, v9

    invoke-virtual {v1, v8, v4, v5}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 864
    sub-long v1, v2, v6

    .line 865
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/applications/ManageApplications;->Fi:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_5

    .line 866
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fi:J

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->EY:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03da

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    :cond_5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fj:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 872
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/ManageApplications;->Fj:J

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->EZ:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03d9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 835
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/applications/ManageApplications;->Fh:Z

    if-nez v5, :cond_7

    .line 836
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/settings/applications/ManageApplications;->Fh:Z

    .line 838
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b03ac

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 839
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    const-string v6, "/data"

    invoke-virtual {v5, v6}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 841
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v5

    .line 843
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v5

    .line 847
    :goto_4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v10

    .line 848
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v11

    .line 849
    const/4 v5, 0x0

    move/from16 v16, v5

    move-wide v5, v8

    move/from16 v8, v16

    :goto_5
    if-ge v8, v11, :cond_9

    .line 850
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v9, v8}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v9

    .line 851
    iget-wide v12, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v14, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 852
    if-eqz v10, :cond_8

    .line 853
    iget-wide v12, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v14, v9, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 849
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 856
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ManageApplications;->ER:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settings/applications/ApplicationsState;->hA()J

    move-result-wide v8

    add-long/2addr v3, v8

    move-object/from16 v16, v7

    move-wide/from16 v17, v1

    move-object/from16 v1, v16

    move-wide/from16 v19, v5

    move-wide v6, v3

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    goto/16 :goto_3

    .line 878
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->Bb:Lcom/android/settings/applications/LinearColorBar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 879
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fi:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 880
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fi:J

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->EY:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_b
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fj:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 884
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/settings/applications/ManageApplications;->Fj:J

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->EZ:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 845
    :catch_0
    move-exception v5

    goto/16 :goto_4

    .line 826
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method hQ()V
    .locals 3

    .prologue
    .line 933
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_0
    return-void
.end method

.method public hR()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 944
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    .line 946
    const-string v4, "Downloaded"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 963
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    .line 964
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplications;->aD(I)V

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hP()V

    .line 966
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hO()V

    .line 967
    :cond_0
    :goto_1
    return-void

    .line 948
    :cond_1
    const-string v4, "All"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 949
    goto :goto_0

    .line 950
    :cond_2
    const-string v4, "OnSdCard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 951
    goto :goto_0

    .line 952
    :cond_3
    const-string v1, "Running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 956
    invoke-direct {p0, v3}, Lcom/android/settings/applications/ManageApplications;->aD(I)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EU:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ER:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->EU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->V(Ljava/lang/String;)V

    .line 705
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 556
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ER:Lcom/android/settings/applications/ApplicationsState;

    .line 561
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->ER:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 563
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 564
    const-string v1, "All"

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "classname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    if-nez v0, :cond_0

    .line 568
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_0
    const-class v2, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 572
    :cond_1
    const-string v1, "Running"

    .line 584
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    .line 585
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    .line 586
    const-string v0, "filterApps"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    .line 587
    const-string v0, "defaultTabTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_7

    .line 589
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    .line 592
    :goto_3
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    .line 594
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Ff:Landroid/os/StatFs;

    .line 595
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fg:Landroid/os/StatFs;

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Ec:Ljava/lang/CharSequence;

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ET:Ljava/lang/CharSequence;

    .line 599
    return-void

    .line 565
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 573
    :cond_4
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".StorageUse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 576
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    .line 577
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    .line 578
    const-string v1, "All"

    goto :goto_1

    .line 579
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    const-string v1, "All"

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 720
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    .line 724
    const/4 v0, 0x4

    const v1, 0x7f0b039f

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 727
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b03a0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 730
    const/4 v0, 0x6

    const v1, 0x7f0b03a1

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 732
    const/4 v0, 0x7

    const v1, 0x7f0b03a2

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hO()V

    .line 735
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 605
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 606
    const v0, 0x7f04003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 607
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EV:Landroid/view/View;

    .line 608
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 610
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 611
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 615
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 616
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 617
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 618
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 619
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 620
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 621
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Bb:Lcom/android/settings/applications/LinearColorBar;

    .line 624
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EX:Landroid/widget/TextView;

    .line 625
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EY:Landroid/widget/TextView;

    .line 626
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EZ:Landroid/widget/TextView;

    .line 627
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    .line 630
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->Fc:Z

    .line 631
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    .line 633
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04003c

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    .line 634
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 635
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    .line 636
    const-string v1, "All"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 640
    const-string v1, "Downloaded"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03a7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 644
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    const-string v1, "OnSdCard"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03a9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 650
    :cond_1
    const-string v1, "Running"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 654
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v0, v1, v5}, Lcom/android/settings/ci;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fa:Landroid/view/Menu;

    .line 745
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 793
    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EU:Ljava/lang/String;

    .line 794
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->ec()V

    .line 795
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 773
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 774
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 775
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    .line 776
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->Fb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->b(II)V

    .line 786
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hO()V

    .line 787
    return v3

    .line 779
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 780
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    .line 781
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    goto :goto_0

    .line 782
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 783
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    .line 784
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 691
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fe:Z

    .line 692
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->ES:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 693
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->EW:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->hd()V

    .line 695
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fd:Z

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 698
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hO()V

    .line 740
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 671
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->Fe:Z

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hR()V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hO()V

    .line 674
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->at:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 675
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 680
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->EP:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->EQ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->Fk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->cR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 665
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 666
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->hR()V

    .line 971
    return-void
.end method
