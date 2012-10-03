.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field private An:Ljava/lang/CharSequence;

.field private HA:Landroid/widget/TextView;

.field private HB:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private HC:Landroid/widget/TextView;

.field private HD:Landroid/widget/Button;

.field private HE:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private HF:Landroid/widget/Button;

.field private HG:Landroid/widget/Button;

.field private HH:Landroid/widget/CompoundButton;

.field private HI:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private HJ:Z

.field private HK:J

.field private HL:J

.field private HM:J

.field private HN:J

.field private HO:J

.field private HP:J

.field private HQ:Ljava/lang/CharSequence;

.field private HR:Ljava/util/HashSet;

.field private Hk:Landroid/hardware/usb/IUsbManager;

.field private Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private Hm:Landroid/content/pm/PackageInfo;

.field private Hn:Landroid/widget/Button;

.field private Ho:Z

.field private Hp:Z

.field private Hq:Landroid/widget/Button;

.field private Hr:Landroid/view/View;

.field private Hs:Landroid/widget/CheckBox;

.field private Ht:Landroid/widget/CheckBox;

.field private Hu:Z

.field private Hv:Landroid/widget/TextView;

.field private Hw:Landroid/widget/TextView;

.field private Hx:Landroid/widget/TextView;

.field private Hy:Landroid/widget/TextView;

.field private Hz:Landroid/widget/TextView;

.field private a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private be:Landroid/content/pm/PackageManager;

.field private dt:Landroid/appwidget/AppWidgetManager;

.field private en:Lcom/android/settings/applications/ApplicationsState;

.field private eo:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field private rM:Landroid/app/admin/DevicePolicyManager;

.field private rS:Landroid/widget/Button;

.field private final sd:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 109
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ho:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hp:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hu:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->HJ:Z

    .line 135
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HK:J

    .line 136
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HL:J

    .line 137
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HM:J

    .line 138
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HN:J

    .line 139
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HO:J

    .line 140
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HP:J

    .line 169
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 969
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->sd:Landroid/content/BroadcastReceiver;

    .line 999
    return-void
.end method

.method private V(Z)V
    .locals 1
    .parameter

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    return-void
.end method

.method private W(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1021
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1024
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1025
    invoke-interface {v1, v0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->aJ(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    const v0, 0x7f08004b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 434
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    const v0, 0x7f0800b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 438
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const v0, 0x7f0800b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hv:Landroid/widget/TextView;

    .line 442
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b03ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 663
    const v0, 0x7f0b03aa

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 664
    const v0, 0x7f0b03bf

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hq:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->ad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->W(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->c(ZZ)V

    return-void
.end method

.method private aJ(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v0, ""

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 242
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

.method private ad(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 951
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

    .line 952
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 953
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 954
    invoke-direct {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->c(ZZ)V

    .line 955
    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->V(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 739
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 740
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 741
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    const v3, 0x7f0b03bb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 742
    if-ne v0, v4, :cond_0

    .line 743
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

    .line 744
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->Z(Ljava/lang/String;)V

    .line 748
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->fe()V

    .line 749
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private c(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 671
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 672
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 674
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 675
    return-void
.end method

.method private d(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 804
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->e(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 805
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 806
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

    .line 807
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 765
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 766
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 768
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ho:Z

    .line 769
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 770
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

    .line 772
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->Z(Ljava/lang/String;)V

    .line 776
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jU()Z

    .line 777
    return-void

    .line 774
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jX()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private fe()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 982
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->V(Z)V

    .line 997
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 988
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->V(Z)V

    goto :goto_0

    .line 990
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 992
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->sd:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 960
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->ac(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->Y(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_0

    .line 964
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->fe()V

    .line 967
    return-void
.end method

.method static synthetic g(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private jP()V
    .locals 4

    .prologue
    const v3, 0x7f0b03bb

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hu:Z

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    const v1, 0x7f0b03cd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private jQ()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    move v0, v1

    .line 267
    :goto_1
    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    const v3, 0x7f0b03ee

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 280
    :goto_2
    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 265
    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    const v3, 0x7f0b03ef

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v2

    .line 272
    goto :goto_2

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    const v3, 0x7f0b03f0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private jR()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HR:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 296
    :cond_2
    :goto_0
    return v0

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private jS()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hp:Z

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hp:Z

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    const v3, 0x7f0b03bc

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    if-eqz v2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 301
    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    const v1, 0x7f0b03b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    goto :goto_1

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    const v3, 0x7f0b03b9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 331
    goto :goto_1

    .line 326
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    const v3, 0x7f0b03ba

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    const v3, 0x7f0b03b8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_8
    move v2, v1

    goto/16 :goto_2
.end method

.method private jT()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 350
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 359
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 365
    :goto_1
    return-void

    .line 355
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method private jU()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ho:Z

    if-eqz v0, :cond_1

    move v4, v5

    .line 659
    :cond_0
    :goto_0
    return v4

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_3

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_1
    if-nez v1, :cond_17

    .line 502
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 504
    :goto_2
    if-eqz v0, :cond_17

    .line 505
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 508
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState;->Y(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v6, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 535
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hk:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v3, v0

    .line 539
    :goto_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dt:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 542
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 543
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f080096

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 544
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    move v6, v5

    .line 545
    :goto_5
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 546
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 585
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 587
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hr:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 603
    new-instance v1, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v2

    if-lez v2, :cond_16

    .line 605
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 609
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 610
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_11

    array-length v0, v1

    if-le v0, v5, :cond_11

    .line 615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    .line 616
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 617
    aget-object v2, v1, v0

    .line 618
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 616
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 500
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 502
    :cond_4
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto/16 :goto_2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.hasDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto/16 :goto_4

    :cond_5
    move v6, v4

    .line 544
    goto/16 :goto_5

    .line 548
    :cond_6
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    move v3, v5

    .line 550
    :goto_9
    if-eqz v7, :cond_c

    .line 551
    const v8, 0x7f0b03ab

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 556
    :goto_a
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 559
    if-eqz v6, :cond_8

    .line 560
    const v6, 0x7f0b03bd

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 561
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 562
    if-eqz v3, :cond_7

    .line 563
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v10, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 565
    :cond_7
    if-nez v0, :cond_d

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v4

    const-string v6, "\n"

    aput-object v6, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 568
    :cond_8
    :goto_b
    if-eqz v7, :cond_a

    .line 569
    const v6, 0x7f0b03be

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 571
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 572
    if-eqz v3, :cond_9

    .line 573
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v3, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 576
    :cond_9
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v4

    const-string v3, "\n"

    aput-object v3, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 579
    :cond_a
    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hq:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_b
    move v3, v4

    .line 548
    goto :goto_9

    .line 553
    :cond_c
    const v8, 0x7f0b03aa

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 565
    :cond_d
    new-array v6, v13, [Ljava/lang/CharSequence;

    aput-object v0, v6, v4

    const-string v0, "\n"

    aput-object v0, v6, v5

    aput-object v9, v6, v11

    const-string v0, "\n"

    aput-object v0, v6, v12

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 576
    :cond_e
    new-array v3, v13, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    const-string v0, "\n"

    aput-object v0, v3, v5

    aput-object v7, v3, v11

    const-string v0, "\n"

    aput-object v0, v3, v12

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 622
    :cond_f
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 623
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .line 624
    :catch_2
    move-exception v2

    goto/16 :goto_8

    .line 627
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 628
    if-lez v6, :cond_11

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 631
    if-ne v6, v5, :cond_12

    .line 632
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 645
    :goto_d
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 647
    const v2, 0x7f0b03e5

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v7, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_11
    :goto_e
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->fe()V

    .line 656
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hm:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/content/pm/PackageInfo;)V

    .line 657
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jW()V

    .line 658
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jV()V

    move v4, v5

    .line 659
    goto/16 :goto_0

    .line 633
    :cond_12
    if-ne v6, v11, :cond_13

    .line 634
    const v0, 0x7f0b03e6

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 637
    :cond_13
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_15

    .line 639
    if-nez v1, :cond_14

    const v0, 0x7f0b03e8

    :goto_10
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v2, v8, v5

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 638
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 639
    :cond_14
    const v0, 0x7f0b03e9

    goto :goto_10

    .line 642
    :cond_15
    const v0, 0x7f0b03e7

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v4

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 652
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_17
    move-object v2, v1

    goto/16 :goto_3
.end method

.method private jV()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 680
    :cond_0
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HP:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HO:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HL:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HK:J

    .line 681
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HJ:Z

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HQ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HQ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HQ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hw:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HQ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    :goto_0
    return-void

    .line 691
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->HJ:Z

    .line 692
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HK:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HK:J

    .line 694
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_3
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HL:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 697
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HL:J

    .line 698
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HM:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HM:J

    .line 702
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hz:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    sub-long/2addr v0, v2

    .line 705
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HN:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    .line 706
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HN:J

    .line 707
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HA:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v2, v4

    .line 710
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HO:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 711
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HO:J

    .line 712
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HC:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_7
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HP:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 715
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->HP:J

    .line 716
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hw:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetails;->x(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :cond_8
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v10

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hu:Z

    if-nez v0, :cond_a

    .line 720
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 725
    :goto_1
    cmp-long v0, v2, v10

    if-gtz v0, :cond_b

    .line 726
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 728
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private jW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ho:Z

    if-nez v0, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jS()V

    .line 754
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jP()V

    .line 755
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jQ()V

    .line 756
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jT()V

    .line 762
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    const v1, 0x7f0b03f1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private jX()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 784
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 787
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

    .line 788
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HB:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HB:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 793
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HB:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 794
    if-nez v0, :cond_1

    .line 796
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

    .line 797
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    const v1, 0x7f0b03d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private x(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 217
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->An:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
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
.method public ah()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jU()Z

    .line 478
    return-void
.end method

.method public ai()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public aj()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    return-void
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 493
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jV()V

    .line 489
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1102
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hs:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1103
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ht:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1105
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1107
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1108
    if-nez p2, :cond_4

    .line 1109
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0

    .line 1111
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->W(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1036
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1037
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 1038
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hp:Z

    if-eqz v3, :cond_1

    .line 1039
    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1043
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto :goto_0

    .line 1045
    :cond_2
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1050
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->ad(Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hq:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1054
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hk:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dt:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1064
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1065
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1066
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1067
    invoke-static {}, Lcom/android/settings/cu;->jd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1074
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto/16 :goto_0

    .line 1076
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1078
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HE:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 1079
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HE:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1081
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->HE:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1082
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 1083
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->d(II)V

    goto/16 :goto_0

    .line 1085
    :cond_a
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HI:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 1087
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->HI:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1089
    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 1091
    :cond_c
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ho:Z

    .line 1092
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jW()V

    .line 1093
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hl:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->HI:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    .line 373
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->en:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->be:Landroid/content/pm/PackageManager;

    .line 375
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hk:Landroid/hardware/usb/IUsbManager;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->dt:Landroid/appwidget/AppWidgetManager;

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rM:Landroid/app/admin/DevicePolicyManager;

    .line 380
    new-instance v0, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 381
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f08015d

    const v7, 0x7f08015c

    const/4 v1, 0x0

    .line 385
    const v0, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0b03ea

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HQ:Ljava/lang/CharSequence;

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 390
    new-instance v0, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HR:Ljava/util/HashSet;

    .line 391
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 392
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->HR:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const v0, 0x7f080085

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hw:Landroid/widget/TextView;

    .line 397
    const v0, 0x7f080087

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hx:Landroid/widget/TextView;

    .line 398
    const v0, 0x7f08008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hy:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f080089

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hz:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f08008e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HA:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f080081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 404
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    const v4, 0x7f0b03b2

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 406
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hn:Landroid/widget/Button;

    .line 407
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->rS:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    const v0, 0x7f08008f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 411
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HF:Landroid/widget/Button;

    .line 412
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HG:Landroid/widget/Button;

    .line 415
    const v0, 0x7f080093

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HC:Landroid/widget/TextView;

    .line 416
    const v0, 0x7f080094

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HD:Landroid/widget/Button;

    .line 418
    const v0, 0x7f080097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hq:Landroid/widget/Button;

    .line 421
    const v0, 0x7f080098

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hr:Landroid/view/View;

    .line 422
    const v0, 0x7f080099

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Hs:Landroid/widget/CheckBox;

    .line 423
    const v0, 0x7f08009a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ht:Landroid/widget/CheckBox;

    .line 425
    const v0, 0x7f080082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->HH:Landroid/widget/CompoundButton;

    .line 427
    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 464
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 465
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 453
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->eo:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->c(ZZ)V

    .line 459
    :cond_0
    return-void
.end method
