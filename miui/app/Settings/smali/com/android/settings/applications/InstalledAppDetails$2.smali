.class Lcom/android/settings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic vl:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->b(Lcom/android/settings/applications/InstalledAppDetails;Z)V

    .line 973
    return-void

    .line 972
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
