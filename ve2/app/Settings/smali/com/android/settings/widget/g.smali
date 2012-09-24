.class final Lcom/android/settings/widget/g;
.super Lcom/android/settings/widget/e;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/e;-><init>(Lcom/android/settings/widget/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/settings/widget/g;-><init>()V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    .prologue
    .line 536
    const v0, 0x7f080188

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 537
    const v0, 0x7f080189

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/g;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/g;->a(Landroid/content/Context;I)V

    .line 552
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 556
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 558
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 560
    new-instance v1, Lcom/android/settings/widget/i;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/settings/widget/i;-><init>(Lcom/android/settings/widget/g;ZZLandroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    return-void
.end method

.method public b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 539
    if-eqz p1, :cond_0

    const v0, 0x7f020045

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020044

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 545
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 546
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
