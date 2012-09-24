.class public Lcom/android/settings/aP;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic pi:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 300
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aP;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 321
    new-instance v1, Lcom/android/settings/aa;

    const/16 v0, 0x1388

    invoke-direct {v1, p0, v0}, Lcom/android/settings/aa;-><init>(Lcom/android/settings/aP;I)V

    .line 322
    new-instance v2, Lcom/android/settings/bb;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/bb;-><init>(Lcom/android/settings/aP;Lcom/android/settings/aa;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 324
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 327
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v5}, Lcom/android/settings/MiuiMasterClear;->d(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 330
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 331
    invoke-virtual {v1}, Lcom/android/settings/aa;->ap()V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aP;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aP;->pi:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->c(Lcom/android/settings/MiuiMasterClear;)V

    .line 343
    return-void
.end method
