.class Lcom/android/settings/i;
.super Landroid/os/Handler;
.source "UsageStatsActivity.java"


# instance fields
.field final synthetic ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/i;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/i;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->a(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/i;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->b(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/i;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    iget-boolean v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->bn:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/i;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->c(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/TimerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/TimerView;->setVisibility(I)V

    .line 142
    :cond_0
    return-void
.end method
