.class public Lcom/android/settings/cy;
.super Lcom/android/settings/cI;
.source "GpsEnabler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cI;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    const-string v0, "location_gps"

    const-string v1, "location_gps"

    const-string v2, "location_gps"

    invoke-static {v2}, Lcom/android/settings/bP;->P(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/provider/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Lcom/android/settings/cI;->cZ:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/settings/cI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/cI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/settings/cI;->cZ:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 41
    return-void
.end method
