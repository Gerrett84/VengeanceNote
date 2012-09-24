.class final Lcom/android/settings/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field final yq:Landroid/content/pm/IPackageManager;

.field yr:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->yq:Landroid/content/pm/IPackageManager;

    .line 77
    return-void
.end method


# virtual methods
.method b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 89
    const/4 v1, 0x0

    .line 90
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 95
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v2, v4, :cond_0

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eqz v2, :cond_0

    .line 98
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 100
    iget v2, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->yr:I

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method init()V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->yq:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->yr:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v0, "CanBeOnSdCardChecker"

    const-string v1, "Is Package Manager running?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
