.class Lcom/android/settings/quicklaunch/b;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettings.java"


# instance fields
.field final synthetic FJ:Lcom/android/settings/quicklaunch/QuickLaunchSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings/quicklaunch/b;->FJ:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    .line 363
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 364
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/quicklaunch/b;->FJ:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-static {v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->a(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V

    .line 371
    return-void
.end method
