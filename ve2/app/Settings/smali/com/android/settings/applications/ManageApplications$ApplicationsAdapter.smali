.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field final synthetic bz:Lcom/android/settings/applications/ManageApplications;

.field private dA:I

.field private dB:I

.field private dC:Z

.field private dD:I

.field dE:Ljava/lang/CharSequence;

.field private dF:Landroid/widget/Filter;

.field private final dx:Lcom/android/settings/applications/ApplicationsState;

.field private dy:Ljava/util/ArrayList;

.field private dz:Ljava/util/ArrayList;

.field private final mActive:Ljava/util/ArrayList;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 283
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 258
    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    .line 263
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dF:Landroid/widget/Filter;

    .line 284
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dx:Lcom/android/settings/applications/ApplicationsState;

    .line 285
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object p2

    .line 388
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 393
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 394
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bd()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 396
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 399
    goto :goto_0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 290
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 292
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    .line 293
    iput p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->b(II)V

    goto :goto_0
.end method

.method public ac()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 428
    return-void
.end method

.method public ad()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public ae()V
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 308
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    if-ne p2, v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    .line 312
    iput p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dC:Z

    .line 419
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    .line 420
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dE:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->hP()V

    .line 423
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

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
    .line 543
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dF:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 490
    if-nez p2, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->e(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 495
    new-instance v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;-><init>()V

    .line 496
    const v0, 0x7f0800ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pY:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f080004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pZ:Landroid/widget/ImageView;

    .line 498
    const v0, 0x7f0800ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qa:Landroid/widget/TextView;

    .line 499
    const v0, 0x7f0800af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qb:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f0800b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qc:Landroid/widget/CheckBox;

    .line 501
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 510
    monitor-enter v0

    .line 511
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 512
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 513
    iget-object v4, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pY:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v5, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pY:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_3

    const v4, 0x6070007

    :goto_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 519
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 520
    iget-object v4, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pZ:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->a(Lcom/android/settings/applications/ManageApplications;I)V

    .line 524
    iget-object v4, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qb:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 529
    iget-object v3, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qc:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 530
    iget-object v3, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qc:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 535
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    return-object p2

    .line 505
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    move-object v1, v0

    goto/16 :goto_0

    .line 514
    :cond_3
    const v4, 0x6070008

    goto :goto_1

    :cond_4
    move v3, v2

    .line 524
    goto :goto_2

    :cond_5
    move v1, v2

    .line 530
    goto :goto_3

    .line 533
    :cond_6
    :try_start_1
    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->qc:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public i(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 321
    if-eqz v2, :cond_1

    .line 322
    iput v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    .line 326
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dA:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 340
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    packed-switch v2, :pswitch_data_1

    .line 355
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Da:Ljava/util/Comparator;

    .line 358
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v3, v0, v2}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 360
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 381
    :goto_3
    return-void

    .line 324
    :cond_1
    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    goto :goto_0

    .line 328
    :pswitch_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->De:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 331
    :pswitch_1
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Df:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 332
    if-nez v2, :cond_0

    .line 333
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    goto :goto_1

    .line 342
    :pswitch_2
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    packed-switch v2, :pswitch_data_2

    .line 350
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Db:Ljava/util/Comparator;

    goto :goto_2

    .line 344
    :pswitch_3
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Dc:Ljava/util/Comparator;

    goto :goto_2

    .line 347
    :pswitch_4
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Dd:Ljava/util/Comparator;

    goto :goto_2

    .line 364
    :cond_2
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    .line 365
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 366
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dE:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dy:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    .line 370
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 371
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->hP()V

    .line 373
    if-nez v0, :cond_4

    .line 374
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dC:Z

    .line 375
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 368
    :cond_3
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dz:Ljava/util/ArrayList;

    goto :goto_4

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 340
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 342
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public j(Z)V
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 406
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 438
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    .line 440
    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dD:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->a(Lcom/android/settings/applications/ManageApplications;I)V

    .line 443
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->pX:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->d(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dB:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->i(Z)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->bz:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->hP()V

    .line 456
    :cond_1
    return-void

    .line 443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 438
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 305
    :cond_0
    return-void
.end method
