.class Lcom/android/settings/g;
.super Ljava/util/TimerTask;
.source "UsageStatsActivity.java"


# instance fields
.field final synthetic ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/settings/g;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/android/settings/g;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->a(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    iget-object v1, p0, Lcom/android/settings/g;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->i(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method
