.class public Lcom/android/settings/BatteryInfo;
.super Lcom/android/settings/J;
.source "BatteryInfo.java"


# instance fields
.field private aA:Landroid/widget/TextView;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/widget/TextView;

.field private aD:Landroid/widget/TextView;

.field private aE:Landroid/widget/TextView;

.field private aF:Landroid/widget/TextView;

.field private aG:Landroid/widget/TextView;

.field private aH:Lcom/android/internal/app/IBatteryStats;

.field private aI:Landroid/os/IPowerManager;

.field private aJ:Landroid/content/IntentFilter;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/X;

    invoke-direct {v0, p0}, Lcom/android/settings/X;-><init>(Lcom/android/settings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/settings/Y;

    invoke-direct {v0, p0}, Lcom/android/settings/Y;-><init>(Lcom/android/settings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 73
    div-int/lit8 v0, p1, 0xa

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v0, v0, 0xa

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/BatteryInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/BatteryInfo;->k()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aD:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aE:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aF:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->ay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->az:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aC:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 184
    iget-object v2, p0, Lcom/android/settings/BatteryInfo;->aG:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->setContentView(I)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aJ:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->aJ:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings/J;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/J;->onResume()V

    .line 155
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->ay:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->az:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aA:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aB:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aC:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aF:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aD:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aE:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/settings/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aG:Landroid/widget/TextView;

    .line 166
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aH:Lcom/android/internal/app/IBatteryStats;

    .line 167
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->aI:Landroid/os/IPowerManager;

    .line 168
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/BatteryInfo;->aJ:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method
