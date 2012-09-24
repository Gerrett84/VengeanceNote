.class Lcom/android/settings/wifi/B;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# instance fields
.field private CM:I

.field final synthetic cn:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/settings/wifi/B;->cn:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/B;->CM:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/B;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/B;->cn:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iput v2, p0, Lcom/android/settings/wifi/B;->CM:I

    .line 695
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/B;->sendEmptyMessageDelayed(IJ)Z

    .line 696
    :goto_0
    return-void

    .line 689
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/B;->CM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/B;->CM:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 690
    iput v2, p0, Lcom/android/settings/wifi/B;->CM:I

    .line 691
    iget-object v0, p0, Lcom/android/settings/wifi/B;->cn:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01b8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method hw()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/B;->removeMessages(I)V

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/B;->sendEmptyMessage(I)Z

    .line 678
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 681
    iput v0, p0, Lcom/android/settings/wifi/B;->CM:I

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/B;->removeMessages(I)V

    .line 683
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/B;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/B;->sendEmptyMessage(I)Z

    .line 673
    :cond_0
    return-void
.end method
