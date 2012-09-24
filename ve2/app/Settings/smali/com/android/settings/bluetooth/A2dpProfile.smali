.class final Lcom/android/settings/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final lw:[Landroid/os/ParcelUuid;


# instance fields
.field private lv:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->lw:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settings/bluetooth/A2dpProfile;Lcom/android/settings/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private getConnectedDevices()Ljava/util/List;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter

    .prologue
    .line 160
    const v0, 0x7f020056

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x64

    .line 110
    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cO()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 87
    iget-object v2, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    const v0, 0x7f0b0184

    return v0
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->Z(I)I

    move-result v0

    :goto_0
    return v0

    .line 149
    :pswitch_1
    const v0, 0x7f0b019c

    goto :goto_0

    .line 152
    :pswitch_2
    const v0, 0x7f0b0195

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile;->lv:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "A2DP"

    return-object v0
.end method
