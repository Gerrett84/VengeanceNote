.class Lcom/android/settings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# instance fields
.field final synthetic vl:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->b(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->Z(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->vl:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->b(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
