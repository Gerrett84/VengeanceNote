.class Lcom/android/settings/cG;
.super Landroid/os/AsyncTask;
.source "DevelopmentSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1033
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cG;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1038
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1042
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1043
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1044
    if-eqz v3, :cond_0

    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1047
    const v5, 0x5f535052

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v3, v5, v4, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1050
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1042
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v0

    .line 1053
    :cond_1
    return-object v8

    .line 1048
    :catch_1
    move-exception v3

    goto :goto_1
.end method
