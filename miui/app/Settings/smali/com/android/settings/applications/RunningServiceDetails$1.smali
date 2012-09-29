.class Lcom/android/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Gi:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->Gi:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 422
    :cond_0
    return-void
.end method
