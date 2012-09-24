.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field cE:Ljava/lang/String;

.field cJ:Lcom/android/settings/applications/RunningState$MergedItem;

.field da:Lcom/android/settings/applications/RunningState;

.field db:Z

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mRootView:Landroid/view/View;

.field mUid:I

.field tc:Landroid/app/ActivityManager;

.field td:Landroid/view/ViewGroup;

.field te:Landroid/view/ViewGroup;

.field tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field tg:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field th:I

.field ti:I

.field tj:Landroid/widget/TextView;

.field tk:Landroid/widget/TextView;

.field final tl:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 490
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->b(Landroid/content/ComponentName;)V

    return-void
.end method

.method private b(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->a(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 486
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 1
    .parameter

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 565
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 567
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fv()V

    goto :goto_0

    .line 570
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->G(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fv()V

    goto :goto_0

    .line 574
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->G(Z)V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fv()V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method G(Z)V
    .locals 4
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 p1, 0x1

    .line 396
    :cond_0
    if-eqz p1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tg:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 410
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ft()V

    .line 412
    :cond_1
    :goto_1
    return-void

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gv:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ok:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gv:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ol:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gv:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oj:Landroid/widget/TextView;

    const v1, 0x7f0b0413

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 407
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter

    .prologue
    .line 473
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 475
    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ml:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ml:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ml:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    :goto_1
    return-object v0

    .line 473
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 480
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 290
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->ti:I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006f

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    const v1, 0x7f0b0415

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->ti:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->ti:I

    .line 298
    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006d

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 303
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mn:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 304
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mn:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, p1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mm:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 306
    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    if-eqz p2, :cond_2

    .line 308
    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void

    .line 311
    :cond_2
    const/4 v1, 0x0

    .line 312
    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->cI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 313
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 316
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 342
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :pswitch_0
    const v2, 0x7f0b041e

    .line 319
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 330
    :pswitch_1
    const v2, 0x7f0b041d

    .line 331
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 333
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 337
    :catch_0
    move-exception v5

    goto :goto_1

    .line 325
    :catch_1
    move-exception v5

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->th:I

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006f

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    const v1, 0x7f0b0414

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->th:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->th:I

    .line 226
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 228
    :goto_0
    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 229
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04006e

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 231
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    iput-object v5, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 233
    iput-object p1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Ml:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 234
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mn:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 235
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mn:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v0, v7}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mm:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 237
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tc:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mo:Landroid/app/PendingIntent;

    .line 242
    :cond_1
    const v0, 0x7f08012c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 243
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v8, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_1
    const v0, 0x7f08015c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mk:Landroid/widget/Button;

    .line 267
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mk:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mk:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mo:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    const v0, 0x7f0b0417

    :goto_2
    invoke-virtual {v6, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v0, 0x7f08015d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rT:Landroid/widget/Button;

    .line 272
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rT:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rT:Landroid/widget/Button;

    const v1, 0x60c019a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_action_app_error"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 277
    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MW:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->sc:Landroid/content/ComponentName;

    .line 281
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rT:Landroid/widget/Button;

    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->sc:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :goto_4
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    return-void

    :cond_2
    move-object v0, p2

    .line 226
    goto/16 :goto_0

    .line 248
    :cond_3
    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ix:Z

    if-eqz v1, :cond_4

    .line 249
    const v1, 0x7f0b041a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 250
    :cond_4
    iget-object v1, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mo:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->MV:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b041b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 257
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz p1, :cond_6

    const v1, 0x7f0b0418

    :goto_5
    invoke-virtual {v6, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f0b0419

    goto :goto_5

    .line 268
    :cond_7
    const v0, 0x7f0b0416

    goto/16 :goto_2

    :cond_8
    move v0, v3

    .line 281
    goto :goto_3

    .line 283
    :cond_9
    iget-object v0, v4, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->rT:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method fs()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v3, 0x0

    .line 195
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->db:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iA()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 197
    :goto_0
    if-eqz v4, :cond_3

    move v1, v2

    .line 198
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 199
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 200
    iget-object v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->cE:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->cE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v1, v0, :cond_0

    .line 209
    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 210
    const/4 v2, 0x1

    .line 212
    :cond_0
    return v2

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iz()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method ft()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 352
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 358
    iput-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->tj:Landroid/widget/TextView;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 363
    iput-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->tk:Landroid/widget/TextView;

    .line 366
    :cond_2
    iput v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->ti:I

    iput v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->th:I

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_8

    move v1, v2

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 380
    :cond_4
    const/4 v0, -0x1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 381
    if-gez v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PF:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 383
    :goto_3
    iget v3, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v3, :cond_6

    .line 380
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cJ:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_3

    .line 387
    :cond_6
    if-gez v1, :cond_7

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    .line 390
    :cond_8
    return-void
.end method

.method fu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 538
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 539
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 540
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->a(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->iy()V

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->G(Z)V

    .line 551
    :cond_0
    return-void
.end method

.method fv()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tf:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 557
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->Mm:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 557
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 560
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->cE:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->db:Z

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tc:Landroid/app/ActivityManager;

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->G(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    .line 438
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 444
    const v0, 0x7f04006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 446
    const v0, 0x7f08007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->td:Landroid/view/ViewGroup;

    .line 447
    const v0, 0x7f08012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    .line 448
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    const v2, 0x6020161

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 450
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->te:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->tg:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fu()V

    .line 456
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->da:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 464
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->fu()V

    .line 470
    return-void
.end method
