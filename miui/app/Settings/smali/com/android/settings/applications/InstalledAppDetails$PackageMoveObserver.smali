.class Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic vp:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;->vp:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;->vp:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;->vp:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method
