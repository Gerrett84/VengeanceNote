.class Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# instance fields
.field final be:Landroid/content/pm/PackageManager;

.field final mState:I

.field final ri:Ljava/lang/ref/WeakReference;

.field final rj:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1006
    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetails;->g(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->be:Landroid/content/pm/PackageManager;

    .line 1007
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->ri:Ljava/lang/ref/WeakReference;

    .line 1008
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->rj:Landroid/content/pm/ApplicationInfo;

    .line 1009
    iput p3, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    .line 1010
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->be:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->rj:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1015
    const/4 v0, 0x0

    return-object v0
.end method
