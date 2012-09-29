.class Lcom/android/settings/applications/RunningState$ServiceItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field MZ:Landroid/app/ActivityManager$RunningServiceInfo;

.field Na:Landroid/content/pm/ServiceInfo;

.field Nb:Z

.field cM:Lcom/android/settings/applications/RunningState$MergedItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 245
    return-void
.end method
