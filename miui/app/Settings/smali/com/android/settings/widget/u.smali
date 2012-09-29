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
    .line 879
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 880
    iput-object p2, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    .line 881
    return-void
.end method


# virtual methods
.method lN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 886
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 888
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 890
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->x(Landroid/content/Context;)V

    .line 899
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/settings/widget/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 894
    return-void
.end method
