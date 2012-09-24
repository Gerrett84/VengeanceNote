.class Lcom/android/settings/I;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic dN:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/dd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/android/settings/I;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/android/settings/I;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 590
    return-void
.end method
