.class Lcom/android/settings/aC;
.super Lcom/android/internal/content/PackageMonitor;
.source "MiuiAccessibilitySettings.java"


# instance fields
.field final synthetic dM:Lcom/android/settings/MiuiAccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;Lcom/android/settings/G;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/android/settings/aC;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 543
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/android/settings/aC;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->c(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 561
    return-void
.end method
