.class public Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# instance fields
.field private Ia:Landroid/widget/ProgressBar;

.field private Ib:Landroid/net/wifi/WifiManager$Channel;

.field private Ic:Landroid/net/wifi/WifiManager$WpsListener;

.field private Id:I

.field private final Ie:Landroid/content/IntentFilter;

.field If:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field private c:Landroid/net/wifi/WifiManager;

.field private mB:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 76
    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gl:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->If:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/settings/wifi/WpsDialog;->Id:I

    .line 121
    new-instance v0, Lcom/android/settings/wifi/H;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/H;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ic:Landroid/net/wifi/WifiManager$WpsListener;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ie:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ie:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/android/settings/wifi/aa;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aa;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->If:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->If:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 213
    sget-object v0, Lcom/android/settings/wifi/X;->Pz:[I

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mB:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 237
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 238
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->If:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gn:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Go:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f080210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b01d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f080211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ia:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f080212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mB:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mB:Landroid/widget/Button;

    const v1, 0x7f0b0211

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mB:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/Z;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/Z;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->c:Landroid/net/wifi/WifiManager;

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->Ib:Landroid/net/wifi/WifiManager$Channel;

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 161
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 169
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/wifi/Y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/Y;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->Ie:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 186
    iget v1, p0, Lcom/android/settings/wifi/WpsDialog;->Id:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->c:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->Ib:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->Ic:Landroid/net/wifi/WifiManager$WpsListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->If:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gn:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->c:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->Ib:Landroid/net/wifi/WifiManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 204
    :cond_2
    return-void
.end method
