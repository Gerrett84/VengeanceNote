.class final Lcom/android/settings/widget/w;
.super Lcom/android/settings/widget/e;
.source "SettingsAppWidgetProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/e;-><init>(Lcom/android/settings/widget/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/settings/widget/w;-><init>()V

    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .prologue
    .line 486
    const v0, 0x7f0801a9

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 487
    const v0, 0x7f0801aa

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/w;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/w;->a(Landroid/content/Context;I)V

    .line 506
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/android/settings/widget/v;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/widget/v;-><init>(Lcom/android/settings/widget/w;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    return-void
.end method

.method public b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 489
    if-eqz p1, :cond_0

    const v0, 0x7f020043

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020042

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 498
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
