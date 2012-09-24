.class Lcom/android/settings/widget/v;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic NO:Landroid/content/ContentResolver;

.field final synthetic NP:Lcom/android/settings/widget/w;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic wo:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/w;Landroid/content/ContentResolver;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings/widget/v;->NP:Lcom/android/settings/widget/w;

    iput-object p2, p0, Lcom/android/settings/widget/v;->NO:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/settings/widget/v;->wo:Z

    iput-object p4, p0, Lcom/android/settings/widget/v;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/settings/widget/v;->NP:Lcom/android/settings/widget/w;

    iget-object v2, p0, Lcom/android/settings/widget/v;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/w;->a(Landroid/content/Context;I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/widget/v;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->x(Landroid/content/Context;)V

    .line 527
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/widget/v;->NO:Landroid/content/ContentResolver;

    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/android/settings/widget/v;->wo:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 518
    iget-boolean v0, p0, Lcom/android/settings/widget/v;->wo:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/v;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/v;->a(Ljava/lang/Boolean;)V

    return-void
.end method
