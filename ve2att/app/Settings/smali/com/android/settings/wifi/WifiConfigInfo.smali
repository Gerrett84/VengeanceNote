.class public Lcom/android/settings/wifi/WifiConfigInfo;
.super Lcom/android/settings/J;
.source "WifiConfigInfo.java"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->c:Landroid/net/wifi/WifiManager;

    .line 52
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->setContentView(I)V

    .line 53
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->b:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
