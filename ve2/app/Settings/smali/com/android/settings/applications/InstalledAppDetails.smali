.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field private DA:Landroid/widget/Button;

.field private DB:Z

.field private DC:Z

.field private DD:Landroid/widget/Button;

.field private DE:Landroid/view/View;

.field private DF:Landroid/widget/CheckBox;

.field private DG:Landroid/widget/CheckBox;

.field private DH:Z

.field private DI:Landroid/widget/TextView;

.field private DJ:Landroid/widget/TextView;

.field private DK:Landroid/widget/TextView;

.field private DL:Landroid/widget/TextView;

.field private DM:Landroid/widget/TextView;

.field private DN:Landroid/widget/TextView;

.field private DO:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private DP:Landroid/widget/TextView;

.field private DQ:Landroid/widget/Button;

.field private DR:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private DS:Landroid/widget/Button;

.field private DT:Landroid/widget/Button;

.field private DU:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private DV:Z

.field private DW:J

.field private DX:J

.field private DY:J

.field private DZ:J

.field private Dx:Landroid/hardware/usb/IUsbManager;

.field private Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private Dz:Landroid/content/pm/PackageInfo;

.field private Ea:J

.field private Eb:J

.field private Ec:Ljava/lang/CharSequence;

.field private Ed:Ljava/lang/CharSequence;

.field private Ee:Ljava/util/HashSet;

.field private a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private bd:Landroid/content/pm/PackageManager;

.field private dx:Lcom/android/settings/applications/ApplicationsState;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private pE:Landroid/widget/Button;

.field private final pP:Landroid/content/BroadcastReceiver;

.field private py:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 82
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 100
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DB:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DC:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DH:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Z

    .line 125
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DW:J

    .line 126
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DX:J

    .line 127
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DY:J

    .line 128
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DZ:J

    .line 129
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ea:J

    .line 130
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Eb:J

    .line 158
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 822
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pP:Landroid/content/BroadcastReceiver;

    .line 852
    return-void
.end method

.method private Z(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 805
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 807
    invoke-direct {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    .line 808
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->aB(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    const v0, 0x7f080004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 392
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 393
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const v0, 0x7f0800ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 396
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v0, 0x7f0800ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DI:Landroid/widget/TextView;

    .line 400
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DI:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DI:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b03be

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DI:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->Z(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->aa(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    return-void
.end method

.method private aB(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 245
    const-string v0, ""

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aa(Z)V
    .locals 1
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 831
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private b(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 547
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 548
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 550
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 551
    return-void
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 613
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 614
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 615
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    const v3, 0x7f0b0396

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 616
    if-ne v0, v4, :cond_0

    .line 617
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->V(Ljava/lang/String;)V

    .line 622
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->eg()V

    .line 623
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private d(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->e(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 638
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 639
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 641
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DB:Z

    .line 642
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 643
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->V(Ljava/lang/String;)V

    .line 649
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hE()Z

    .line 650
    return-void

    .line 647
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hH()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    return-object v0
.end method

.method private eg()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->py:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->aa(Z)V

    .line 850
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 841
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->aa(Z)V

    goto :goto_0

    .line 843
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 845
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->pP:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 813
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->Y(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->U(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_0

    .line 817
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->eg()V

    .line 820
    return-void
.end method

.method private hB()V
    .locals 4

    .prologue
    const v3, 0x7f0b0396

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->py:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DH:Z

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    const v1, 0x7f0b03a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private hC()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    move v0, v1

    .line 256
    :goto_1
    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    const v3, 0x7f0b03bf

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 269
    :goto_2
    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    const v3, 0x7f0b03c0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v2

    .line 261
    goto :goto_2

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    const v3, 0x7f0b03c1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private hD()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DC:Z

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DC:Z

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    const v3, 0x7f0b0397

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 319
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->py:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    if-eqz v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 278
    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 292
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 296
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ee:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    goto/16 :goto_1

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    const v3, 0x7f0b0394

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 311
    goto/16 :goto_1

    .line 306
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    const v3, 0x7f0b0395

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 314
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    const v3, 0x7f0b0393

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_9
    move v2, v1

    goto/16 :goto_2
.end method

.method private hE()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DB:Z

    if-eqz v0, :cond_1

    move v3, v4

    .line 542
    :cond_0
    :goto_0
    return v3

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_3

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    :goto_1
    if-nez v1, :cond_2

    .line 460
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 462
    :goto_2
    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->U(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 468
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2240

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v5, v1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dx:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v2, v0

    .line 496
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v6, 0x7f080098

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_5

    if-nez v2, :cond_5

    .line 499
    const v2, 0x7f0b0399

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DE:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 526
    new-instance v2, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 532
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 533
    invoke-virtual {v2}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 538
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->eg()V

    .line 539
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dz:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/content/pm/PackageInfo;)V

    .line 540
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hG()V

    .line 541
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hF()V

    move v3, v4

    .line 542
    goto/16 :goto_0

    .line 458
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 460
    :cond_4
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto/16 :goto_2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 493
    :catch_1
    move-exception v0

    .line 494
    const-string v2, "InstalledAppDetails"

    const-string v6, "mUsbManager.hasDefaults"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_3

    .line 502
    :cond_5
    const v2, 0x7f0b0398

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 535
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method private hF()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 556
    :cond_0
    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Eb:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ea:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->DX:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->DW:J

    .line 557
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Z

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DK:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ed:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ed:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ed:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ed:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 606
    :goto_0
    return-void

    .line 567
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Z

    .line 568
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DW:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DW:J

    .line 570
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DK:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_3
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DX:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DX:J

    .line 574
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DL:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DY:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DY:J

    .line 578
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_5
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DZ:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 581
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DZ:J

    .line 582
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DN:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_6
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ea:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 585
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ea:J

    .line 586
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_7
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Eb:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Eb:J

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->s(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DH:Z

    if-nez v0, :cond_a

    .line 594
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 599
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_b

    .line 600
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 596
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 602
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private hG()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DB:Z

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hD()V

    .line 628
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hB()V

    .line 629
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hC()V

    .line 635
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    const v1, 0x7f0b03c2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private hH()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 660
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DO:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DO:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 666
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DO:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 667
    if-nez v0, :cond_1

    .line 669
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    const v1, 0x7f0b03ae

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private s(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 206
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ec:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public ac()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hE()Z

    .line 436
    return-void
.end method

.method public ad()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public ae()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    return-void
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 451
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hF()V

    .line 447
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 935
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 937
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DF:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_1

    .line 938
    invoke-virtual {v0, v2, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DG:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_0

    .line 940
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 877
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 878
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 879
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DC:Z

    if-eqz v3, :cond_1

    .line 880
    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 884
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0

    .line 886
    :cond_2
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 891
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->Z(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 895
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dx:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.clearDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 902
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 903
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 909
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0

    .line 911
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 913
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DR:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 914
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DR:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 916
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DR:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 917
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 918
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto/16 :goto_0

    .line 920
    :cond_a
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 922
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 924
    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 926
    :cond_c
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DB:Z

    .line 927
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hG()V

    .line 928
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dy:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->gQ:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->bd:Landroid/content/pm/PackageManager;

    .line 336
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Dx:Landroid/hardware/usb/IUsbManager;

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->py:Landroid/app/admin/DevicePolicyManager;

    .line 340
    new-instance v0, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 341
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f080156

    const v7, 0x7f080155

    const/4 v1, 0x0

    .line 345
    const v0, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b03bb

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ed:Ljava/lang/CharSequence;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 350
    new-instance v0, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ee:Ljava/util/HashSet;

    .line 351
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 352
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ee:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    const v0, 0x7f080088

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DJ:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f08008a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DK:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f08008f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DL:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f08008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DM:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f080091

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DN:Landroid/widget/TextView;

    .line 363
    const v0, 0x7f080085

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 364
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    .line 365
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    const v4, 0x7f0b038d

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 366
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DA:Landroid/widget/Button;

    .line 367
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->pE:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    const v0, 0x7f080092

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DS:Landroid/widget/Button;

    .line 372
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DT:Landroid/widget/Button;

    .line 375
    const v0, 0x7f080096

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DP:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f080097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DQ:Landroid/widget/Button;

    .line 378
    const v0, 0x7f080099

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DD:Landroid/widget/Button;

    .line 381
    const v0, 0x7f08009a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DE:Landroid/view/View;

    .line 382
    const v0, 0x7f08009b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DF:Landroid/widget/CheckBox;

    .line 383
    const v0, 0x7f08009c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DG:Landroid/widget/CheckBox;

    .line 385
    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 423
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dx:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 414
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->hE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    .line 417
    :cond_0
    return-void
.end method
