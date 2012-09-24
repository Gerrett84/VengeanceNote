.class public Lcom/android/settings/wifi/p2p/l;
.super Landroid/app/AlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private JA:Landroid/widget/TextView;

.field private JB:Landroid/widget/TextView;

.field private JC:I

.field JD:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mView:Landroid/view/View;

.field private final pR:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/p2p/l;->JC:I

    .line 62
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/l;->pR:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/l;->JD:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 64
    return-void
.end method


# virtual methods
.method public jk()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/l;->JB:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 70
    iget v0, p0, Lcom/android/settings/wifi/p2p/l;->JC:I

    packed-switch v0, :pswitch_data_0

    .line 83
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 86
    :goto_0
    return-object v1

    .line 72
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 76
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    const v3, 0x7f080196

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/l;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    const v1, 0x7f0801c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/l;->setView(Landroid/view/View;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/l;->setInverseBackgroundForced(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/l;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    const v1, 0x7f0b0212

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/l;->setTitle(I)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    const v3, 0x7f0801c6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/l;->JA:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    const v3, 0x7f0801c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/l;->JB:Landroid/widget/TextView;

    .line 104
    const/4 v1, -0x1

    const v3, 0x7f0b01f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/l;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/wifi/p2p/l;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    const/4 v1, -0x2

    const v3, 0x7f0b01fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/l;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/l;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->JD:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->JA:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/l;->JD:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/l;->JB:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/l;->JD:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget v1, p0, Lcom/android/settings/wifi/p2p/l;->JC:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0801c9

    .line 121
    iput p3, p0, Lcom/android/settings/wifi/p2p/l;->JC:I

    .line 123
    iget v0, p0, Lcom/android/settings/wifi/p2p/l;->JC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/l;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    return-void
.end method
