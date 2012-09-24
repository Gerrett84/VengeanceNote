.class final Lcom/android/settings/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# instance fields
.field private qn:Landroid/bluetooth/BluetoothPan;

.field private final qo:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qo:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings/bluetooth/PanProfile;Lcom/android/settings/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    const v0, 0x7f02005c

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qo:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 77
    iget-object v2, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, -0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f0b018e

    .line 119
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b018d

    goto :goto_0
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qn:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 125
    packed-switch v0, :pswitch_data_0

    .line 137
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->al(I)I

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_1
    const v0, 0x7f0b01a5

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->q(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const v0, 0x7f0b01a0

    goto :goto_0

    .line 133
    :cond_0
    const v0, 0x7f0b019f

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x4

    return v0
.end method

.method q(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->qo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "PAN"

    return-object v0
.end method
