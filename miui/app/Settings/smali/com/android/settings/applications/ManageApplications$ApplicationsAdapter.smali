.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field private final en:Lcom/android/settings/applications/ApplicationsState;

.field private final eo:Lcom/android/settings/applications/ApplicationsState$Session;

.field private final ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private final eq:I

.field private er:Ljava/util/ArrayList;

.field private es:Ljava/util/ArrayList;

.field private et:I

.field private eu:Z

.field private ev:I

.field ew:Ljava/lang/CharSequence;

.field private ex:Landroid/widget/Filter;

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 529
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    .line 534
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ex:Landroid/widget/Filter;

    .line 555
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->en:Lcom/android/settings/applications/ApplicationsState;

    .line 556
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 557
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 558
    iget-object v0, p2, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 559
    iput p3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eq:I

    .line 560
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 658
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-object p2

    .line 661
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 666
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 667
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bd()Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 669
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 672
    goto :goto_0
.end method

.method public ah()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 701
    return-void
.end method

.method public ai()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method public aj()V
    .locals 2

    .prologue
    .line 733
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hK()V

    .line 737
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->a(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->a(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eu:Z

    .line 692
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    .line 693
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ew:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hK()V

    .line 696
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ex:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v4

    .line 760
    iget-object v5, v4, Lcom/android/settings/applications/AppViewHolder;->oi:Landroid/view/View;

    .line 763
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 764
    monitor-enter v0

    .line 765
    :try_start_0
    iput-object v0, v4, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 766
    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 767
    iget-object v3, v4, Lcom/android/settings/applications/AppViewHolder;->AM:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v6, v4, Lcom/android/settings/applications/AppViewHolder;->AM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_3

    const v3, 0x6070007

    :goto_0
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 772
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->en:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 773
    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 774
    iget-object v3, v4, Lcom/android/settings/applications/AppViewHolder;->AN:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->An:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    invoke-virtual {v4, v3, v6}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 778
    iget-object v3, v4, Lcom/android/settings/applications/AppViewHolder;->AP:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eq:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 783
    iget-object v2, v4, Lcom/android/settings/applications/AppViewHolder;->AQ:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 784
    iget-object v2, v4, Lcom/android/settings/applications/AppViewHolder;->AQ:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 789
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 791
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    return-object v5

    .line 768
    :cond_3
    const v3, 0x6070008

    goto :goto_0

    :cond_4
    move v2, v1

    .line 778
    goto :goto_1

    .line 787
    :cond_5
    :try_start_1
    iget-object v1, v4, Lcom/android/settings/applications/AppViewHolder;->AQ:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 593
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 594
    if-eqz v2, :cond_1

    .line 595
    iput v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    .line 599
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eq:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 613
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    packed-switch v2, :pswitch_data_1

    .line 628
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->GQ:Ljava/util/Comparator;

    .line 631
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v3, v0, v2}, Lcom/android/settings/applications/ApplicationsState$Session;->a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 654
    :goto_3
    return-void

    .line 597
    :cond_1
    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    goto :goto_0

    .line 601
    :pswitch_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->GU:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 604
    :pswitch_1
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->GV:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 605
    if-nez v2, :cond_0

    .line 606
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    goto :goto_1

    .line 615
    :pswitch_2
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    packed-switch v2, :pswitch_data_2

    .line 623
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->GR:Ljava/util/Comparator;

    goto :goto_2

    .line 617
    :pswitch_3
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->GS:Ljava/util/Comparator;

    goto :goto_2

    .line 620
    :pswitch_4
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->GT:Ljava/util/Comparator;

    goto :goto_2

    .line 637
    :cond_2
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    .line 638
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 639
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ew:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->er:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    .line 643
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 644
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hK()V

    .line 646
    if-nez v0, :cond_4

    .line 647
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eu:Z

    .line 648
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->a(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 641
    :cond_3
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    goto :goto_4

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->a(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 613
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 615
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public j(I)V
    .locals 1
    .parameter

    .prologue
    .line 582
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    if-ne p1, v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    goto :goto_0
.end method

.method public j(Z)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 679
    return-void
.end method

.method public k(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->es:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 711
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 713
    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 714
    iget-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->An:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ev:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 716
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-object v0, v0, Lcom/android/settings/applications/AppViewHolder;->AL:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->e(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 723
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->ep:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hK()V

    .line 729
    :cond_1
    return-void

    .line 716
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 711
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 577
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 579
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 564
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 565
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 566
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 567
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->et:I

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->j(I)V

    goto :goto_0
.end method
