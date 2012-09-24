.class Lcom/android/settings/widget/q;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic Ms:Lcom/android/settings/widget/a;

.field final synthetic wo:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings/widget/q;->Ms:Lcom/android/settings/widget/a;

    iput-boolean p2, p0, Lcom/android/settings/widget/q;->wo:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 444
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/q;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 447
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->eI()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/widget/q;->wo:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->D(Z)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method
