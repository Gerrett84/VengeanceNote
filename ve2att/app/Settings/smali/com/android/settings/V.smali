.class Lcom/android/settings/V;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic eJ:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/dv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/settings/V;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 553
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 565
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/android/settings/V;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->d(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 571
    return-void
.end method
