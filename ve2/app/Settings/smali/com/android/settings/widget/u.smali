.class Lcom/android/settings/widget/u;
.super Landroid/database/ContentObserver;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 877
    iput-object p2, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    .line 878
    return-void
.end method


# virtual methods
.method jg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 881
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 883
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 885
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 887
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->x(Landroid/content/Context;)V

    .line 896
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 891
    return-void
.end method
