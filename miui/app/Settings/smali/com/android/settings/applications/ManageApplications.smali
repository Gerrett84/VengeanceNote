.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/applications/AppClickListener;


# instance fields
.field private An:Lcom/android/settings/applications/ApplicationsState;

.field Ar:Ljava/lang/CharSequence;

.field private As:Ljava/lang/CharSequence;

.field private volatile Av:Lcom/android/internal/app/IMediaContainerService;

.field private IH:I

.field private final II:Ljava/util/ArrayList;

.field IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private IK:Ljava/lang/String;

.field private IL:Landroid/view/Menu;

.field private IM:Z

.field private IN:I

.field private IO:Landroid/view/ViewGroup;

.field IP:Landroid/app/AlertDialog;

.field private final IQ:Landroid/content/ServiceConnection;

.field private de:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 171
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->de:Z

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->IN:I

    .line 1221
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IQ:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->Av:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IO:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->IM:Z

    return v0
.end method

.method private fe()V
    .locals 7

    .prologue
    .line 993
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 994
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->IK:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 997
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03a8

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 999
    return-void
.end method

.method static synthetic g(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Av:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1186
    iget-object v0, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p4, :cond_0

    .line 1187
    iget-object v0, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->k(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1188
    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hP:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IK:Ljava/lang/String;

    .line 1189
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->fe()V

    .line 1191
    :cond_0
    return-void
.end method

.method aO(I)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter

    .prologue
    .line 981
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 983
    iget v2, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ao:I

    if-ne v2, p1, :cond_0

    .line 987
    :goto_1
    return-object v0

    .line 981
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 987
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aP(I)V
    .locals 4
    .parameter

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1195
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1198
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->IM:Z

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IO:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1200
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1204
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1206
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eq v0, v2, :cond_0

    .line 1207
    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1204
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hO()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kp()V

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1214
    if-eqz v0, :cond_3

    .line 1215
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1217
    :cond_3
    return-void
.end method

.method kp()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1039
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ao:I

    if-ne v0, v2, :cond_3

    .line 1048
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications;->aO(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->ES:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->R()Z

    move-result v0

    .line 1051
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1052
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1053
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1055
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1049
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1054
    goto :goto_2

    .line 1057
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    if-eq v0, v4, :cond_4

    move v0, v2

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1058
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    if-eq v0, v5, :cond_5

    move v0, v2

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1059
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1060
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1061
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1057
    goto :goto_3

    :cond_5
    move v0, v1

    .line 1058
    goto :goto_4
.end method

.method kq()V
    .locals 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1068
    const v1, 0x7f0b03ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1069
    const v1, 0x7f0b03cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1070
    const v1, 0x7f0b03cc

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    const v1, 0x7f0b00e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1072
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    .line 1073
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 975
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IK:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->IK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->aa(Ljava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1089
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1092
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1093
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1154
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 810
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 812
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 816
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    :goto_0
    if-nez v0, :cond_0

    .line 821
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_0
    const-class v1, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v7

    .line 836
    :goto_1
    if-eqz p1, :cond_8

    .line 837
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    .line 838
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 839
    if-eq v0, v5, :cond_7

    .line 840
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->de:Z

    .line 843
    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->IN:I

    .line 845
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->bP:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IQ:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v7}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->Ar:Ljava/lang/CharSequence;

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->As:Ljava/lang/CharSequence;

    .line 853
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03d0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 856
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03d1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 861
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03d3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 867
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_2
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->An:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03d2

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    return-void

    .line 818
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 826
    :cond_4
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 829
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    move v1, v4

    .line 830
    goto/16 :goto_1

    .line 831
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v4

    .line 833
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1003
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

    .line 1004
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    .line 1007
    const v0, 0x7f0b03c5

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1010
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b03c6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1013
    const/4 v0, 0x6

    const v1, 0x7f0b03c7

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1015
    const/4 v0, 0x7

    const v1, 0x7f0b03c8

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1017
    const/16 v0, 0x8

    const v1, 0x7f0b03c9

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kp()V

    .line 1020
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 880
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 882
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04003e

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 884
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications;->IO:Landroid/view/ViewGroup;

    .line 885
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 887
    const v0, 0x7f0800af

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 888
    new-instance v0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 889
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 890
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 891
    const v0, 0x7f0800b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 892
    const v3, 0x1060012

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 896
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 900
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "resetDialog"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kq()V

    .line 904
    :cond_1
    if-nez p3, :cond_2

    .line 906
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 908
    iget v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Ao:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->IN:I

    if-ne v0, v3, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 915
    :cond_2
    return-object v2

    .line 906
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->IQ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1035
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1036
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IL:Landroid/view/Menu;

    .line 1030
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 964
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 968
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->hN()V

    .line 968
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 971
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    .line 1082
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1159
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1160
    :cond_0
    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    .line 1161
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->Au:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->j(I)V

    .line 1180
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kp()V

    move v0, v1

    .line 1181
    :cond_2
    return v0

    .line 1164
    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1165
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->de:Z

    .line 1166
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1167
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->ES:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    goto :goto_0

    .line 1169
    :cond_4
    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 1170
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->de:Z

    .line 1171
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IJ:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->c(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->ES:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    goto :goto_0

    .line 1174
    :cond_5
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kq()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 946
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 947
    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->IM:Z

    move v1, v0

    .line 948
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->II:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 948
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 951
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kp()V

    .line 1025
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 925
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->IM:Z

    .line 927
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->aP(I)V

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->kp()V

    .line 929
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 933
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 934
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->IH:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->IN:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 936
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->IN:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->de:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 940
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 942
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 920
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 921
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 956
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->IP:Landroid/app/AlertDialog;

    .line 960
    :cond_0
    return-void
.end method
