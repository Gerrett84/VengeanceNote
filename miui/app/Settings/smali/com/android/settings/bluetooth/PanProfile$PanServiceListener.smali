.class final Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic xH:Lcom/android/settings/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/PanProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;->xH:Lcom/android/settings/bluetooth/PanProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/PanProfile;Lcom/android/settings/bluetooth/PanProfile$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;->xH:Lcom/android/settings/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/PanProfile;->a(Lcom/android/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 52
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;->xH:Lcom/android/settings/bluetooth/PanProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->a(Lcom/android/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 56
    return-void
.end method
