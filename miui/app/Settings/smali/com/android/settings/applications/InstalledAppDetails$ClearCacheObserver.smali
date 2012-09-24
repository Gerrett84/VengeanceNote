.class Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic vl:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 203
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 204
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
