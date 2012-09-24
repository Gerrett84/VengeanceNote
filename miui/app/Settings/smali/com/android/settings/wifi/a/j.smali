.class public Lcom/android/settings/wifi/a/j;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final nB:[I


# instance fields
.field private OY:Landroid/widget/ImageView;

.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private nK:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/a/j;->nB:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 47
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/j;->setWidgetLayoutResource(I)V

    .line 48
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings/wifi/a/j;->nK:I

    .line 49
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/a/j;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/a/j;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/j;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 73
    instance-of v1, p1, Lcom/android/settings/wifi/a/j;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/a/j;

    .line 79
    iget-object v1, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v1, v2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/a/j;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/settings/wifi/a/j;->nK:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, -0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/a/j;->nK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/j;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    .line 60
    iget v0, p0, Lcom/android/settings/wifi/a/j;->nK:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :goto_1
    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/a/j;->refresh()V

    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/a/j;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/a/j;->OY:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/wifi/a/j;->nB:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1
.end method
