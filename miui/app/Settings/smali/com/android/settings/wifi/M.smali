.class Lcom/android/settings/wifi/M;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# instance fields
.field private GL:I

.field final synthetic cA:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/settings/wifi/M;->cA:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 829
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/M;->GL:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/D;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/M;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/M;->cA:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iput v2, p0, Lcom/android/settings/wifi/M;->GL:I

    .line 857
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/M;->sendEmptyMessageDelayed(IJ)Z

    .line 858
    :goto_0
    return-void

    .line 851
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/M;->GL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/M;->GL:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 852
    iput v2, p0, Lcom/android/settings/wifi/M;->GL:I

    .line 853
    iget-object v0, p0, Lcom/android/settings/wifi/M;->cA:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01c0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method jN()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/M;->removeMessages(I)V

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/M;->sendEmptyMessage(I)Z

    .line 840
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 843
    iput v0, p0, Lcom/android/settings/wifi/M;->GL:I

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/M;->removeMessages(I)V

    .line 845
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/M;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/M;->sendEmptyMessage(I)Z

    .line 835
    :cond_0
    return-void
.end method
