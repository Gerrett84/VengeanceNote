.class Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# instance fields
.field final bd:Landroid/content/pm/PackageManager;

.field final mState:I

.field final pg:Ljava/lang/ref/WeakReference;

.field final ph:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 859
    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetails;->f(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->bd:Landroid/content/pm/PackageManager;

    .line 860
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->pg:Ljava/lang/ref/WeakReference;

    .line 861
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->ph:Landroid/content/pm/ApplicationInfo;

    .line 862
    iput p3, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    .line 863
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->bd:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->ph:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 868
    const/4 v0, 0x0

    return-object v0
.end method
