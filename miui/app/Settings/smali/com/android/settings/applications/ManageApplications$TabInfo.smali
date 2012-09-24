.class public Lcom/android/settings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private AA:J

.field private AB:J

.field private AC:J

.field final AD:Ljava/lang/Runnable;

.field public final Ai:Lcom/android/settings/applications/ManageApplications;

.field public final Aj:Lcom/android/settings/applications/ApplicationsState;

.field public final Ak:I

.field public final Al:I

.field public final Am:Lcom/android/settings/applications/AppClickListener;

.field public final An:Ljava/lang/CharSequence;

.field public final Ao:Ljava/lang/CharSequence;

.field private final Ap:Landroid/os/Bundle;

.field public Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private Ar:Lcom/android/internal/app/IMediaContainerService;

.field private As:Landroid/view/View;

.field private At:Lcom/android/settings/applications/RunningProcessesView;

.field private Au:Lcom/android/settings/applications/LinearColorBar;

.field private Av:Landroid/widget/TextView;

.field private Aw:Landroid/widget/TextView;

.field private Ax:Landroid/widget/TextView;

.field private Ay:J

.field private Az:J

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    .line 208
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AD:Ljava/lang/Runnable;

    .line 217
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    .line 218
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aj:Lcom/android/settings/applications/ApplicationsState;

    .line 219
    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 220
    iput p4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ak:I

    .line 221
    packed-switch p4, :pswitch_data_0

    .line 224
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    .line 226
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Am:Lcom/android/settings/applications/AppClickListener;

    .line 227
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->An:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ao:Ljava/lang/CharSequence;

    .line 229
    iput-object p6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ap:Landroid/os/Bundle;

    .line 230
    return-void

    .line 222
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    goto :goto_0

    .line 223
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 284
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 243
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ak:I

    if-ne v0, v3, :cond_4

    const v0, 0x7f040040

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 253
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 256
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 260
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 261
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aj:Lcom/android/settings/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications$TabInfo;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 262
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/LinearColorBar;

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Av:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aw:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ax:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v0, v4}, Lcom/android/settings/cu;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 269
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Av:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b03d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hL()V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    .line 280
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ap:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->d(Landroid/os/Bundle;)V

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 243
    :cond_4
    const v0, 0x7f04003d

    goto/16 :goto_1

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Av:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b03d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public b(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ar:Lcom/android/internal/app/IMediaContainerService;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hK()V

    .line 235
    return-void
.end method

.method public hJ()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_0
    return-void
.end method

.method hK()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 326
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    .line 327
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    .line 328
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    .line 330
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Al:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ar:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v0, :cond_2

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ar:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 335
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    .line 336
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_7

    .line 343
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 344
    :goto_2
    if-ge v1, v0, :cond_7

    .line 345
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->k(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 346
    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    iget-wide v5, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v7, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v5, v7

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 337
    :catch_0
    move-exception v0

    .line 338
    const-string v2, "ManageApplications"

    const-string v3, "Problem in container service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ar:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v0, :cond_4

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ar:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 354
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    .line 355
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 362
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    move v0, v1

    .line 364
    :goto_4
    if-ge v0, v3, :cond_6

    .line 365
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->k(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 366
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    iget-wide v6, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v8, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    .line 367
    if-eqz v2, :cond_5

    .line 368
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    iget-wide v6, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v8, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    .line 364
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 356
    :catch_1
    move-exception v0

    .line 357
    const-string v2, "ManageApplications"

    const-string v3, "Problem in container service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 372
    :cond_6
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aj:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings/applications/ApplicationsState;->jO()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    .line 375
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hL()V

    goto/16 :goto_0
.end method

.method hL()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 380
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/LinearColorBar;

    iget-wide v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Az:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget-wide v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 386
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AA:J

    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    sub-long/2addr v0, v2

    .line 387
    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AB:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 388
    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AB:J

    .line 389
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aw:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b040b

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_2
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AC:J

    iget-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 395
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AC:J

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ay:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ax:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b040a

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/LinearColorBar;

    invoke-virtual {v0, v6, v6, v6}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 403
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AB:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 404
    iput-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AB:J

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aw:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AC:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 408
    iput-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AC:J

    .line 409
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ax:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method hM()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Am:Lcom/android/settings/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings/applications/AppClickListener;->a(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 417
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->iZ()V

    .line 318
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Aq:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ai:Lcom/android/settings/applications/ManageApplications;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->AD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView;->a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 302
    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->At:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->As:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
