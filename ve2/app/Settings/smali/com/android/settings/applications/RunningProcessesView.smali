.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field AV:J

.field final AW:Ljava/util/HashMap;

.field AX:Landroid/app/Fragment;

.field AY:Ljava/lang/Runnable;

.field AZ:Lcom/android/settings/applications/RunningState$BaseItem;

.field Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field Bb:Lcom/android/settings/applications/LinearColorBar;

.field Bc:Landroid/widget/TextView;

.field Bd:Landroid/widget/TextView;

.field Be:I

.field Bf:I

.field Bg:I

.field Bh:J

.field Bi:J

.field Bj:J

.field Bk:J

.field Bl:Lcom/android/internal/util/MemInfoReader;

.field cQ:Lcom/android/settings/applications/RunningState;

.field mBuilder:Ljava/lang/StringBuilder;

.field mListView:Landroid/widget/ListView;

.field qU:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AW:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 76
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Be:I

    .line 77
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bf:I

    .line 78
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bg:I

    .line 79
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    .line 80
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->Bi:J

    .line 81
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->Bj:J

    .line 82
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->Bk:J

    .line 86
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    .line 395
    return-void
.end method

.method private a(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AX:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 378
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 379
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->KL:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->cx:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->cR:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AX:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 384
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03e1

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 387
    :cond_0
    return-void
.end method


# virtual methods
.method J(Z)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 308
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->R()V

    .line 309
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AY:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AY:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AY:Ljava/lang/Runnable;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->AV:J

    sub-long/2addr v0, v4

    .line 322
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    iget v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Be:I

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v4, v4, Lcom/android/settings/applications/RunningState;->zA:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v5, Lcom/android/settings/applications/RunningState;->zB:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bk:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_4

    .line 330
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->zA:I

    iput v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Be:I

    .line 331
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v3, v3, Lcom/android/settings/applications/RunningState;->zB:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    .line 332
    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bk:J

    .line 333
    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bk:J

    iget-wide v5, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    add-long/2addr v3, v5

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 335
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->Bc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b03d9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v5, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03da

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_4
    iget v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bf:I

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v4, v4, Lcom/android/settings/applications/RunningState;->zC:I

    if-ne v3, v4, :cond_5

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bi:J

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v5, Lcom/android/settings/applications/RunningState;->zD:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bg:I

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v4, v4, Lcom/android/settings/applications/RunningState;->zE:I

    if-ne v3, v4, :cond_5

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bj:J

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v5, Lcom/android/settings/applications/RunningState;->zF:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 346
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->zC:I

    iput v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bf:I

    .line 347
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v3, v3, Lcom/android/settings/applications/RunningState;->zD:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bi:J

    .line 348
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->zE:I

    iput v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bg:I

    .line 349
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    iget-wide v3, v3, Lcom/android/settings/applications/RunningState;->zF:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bj:J

    .line 358
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->Bl:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    long-to-float v3, v3

    .line 359
    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bj:J

    add-long/2addr v0, v4

    long-to-float v0, v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->Bb:Lcom/android/settings/applications/LinearColorBar;

    sub-float v0, v3, v0

    div-float/2addr v0, v3

    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->Bj:J

    long-to-float v4, v4

    div-float/2addr v4, v3

    iget-wide v5, p0, Lcom/android/settings/applications/RunningProcessesView;->Bh:J

    long-to-float v5, v5

    div-float v3, v5, v3

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 364
    monitor-exit v2

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 441
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->AX:Landroid/app/Fragment;

    .line 442
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->a(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 443
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->J(Z)V

    .line 450
    :goto_0
    return v0

    .line 449
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->AY:Ljava/lang/Runnable;

    .line 450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->qU:Landroid/app/ActivityManager;

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->E(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 403
    const v1, 0x7f040066

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 404
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 405
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 411
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 412
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->Ba:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bb:Lcom/android/settings/applications/LinearColorBar;

    .line 414
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bc:Landroid/widget/TextView;

    .line 415
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bc:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bd:Landroid/widget/TextView;

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->Bd:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningProcessesView$2;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->qU:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 431
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AV:J

    .line 432
    return-void
.end method

.method et()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 457
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method public hd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->cQ:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 436
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->AY:Ljava/lang/Runnable;

    .line 437
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->AX:Landroid/app/Fragment;

    .line 438
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    check-cast p1, Landroid/widget/ListView;

    .line 369
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 370
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AZ:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 371
    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->a(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 372
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->AW:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public v(I)V
    .locals 1
    .parameter

    .prologue
    .line 468
    packed-switch p1, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 470
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->et()V

    goto :goto_0

    .line 473
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->J(Z)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->et()V

    goto :goto_0

    .line 477
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->J(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->et()V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
