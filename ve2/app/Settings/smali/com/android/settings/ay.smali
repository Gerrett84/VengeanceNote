.class public Lcom/android/settings/ay;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic nx:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 295
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ay;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 316
    new-instance v1, Lcom/android/settings/M;

    const/16 v0, 0x1388

    invoke-direct {v1, p0, v0}, Lcom/android/settings/M;-><init>(Lcom/android/settings/ay;I)V

    .line 317
    new-instance v2, Lcom/android/settings/aN;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/aN;-><init>(Lcom/android/settings/ay;Lcom/android/settings/M;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 319
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_1

    .line 321
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

    .line 322
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v5}, Lcom/android/settings/MiuiMasterClear;->d(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 326
    invoke-virtual {v1}, Lcom/android/settings/M;->ak()V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ay;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->e(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ay;->nx:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->c(Lcom/android/settings/MiuiMasterClear;)V

    .line 338
    return-void
.end method
